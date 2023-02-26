from datetime import datetime, timedelta
from talon import Module, actions, noise
from talon_plugins import eye_mouse

min_hiss_millis = 100
min_time_delta = timedelta(milliseconds=min_hiss_millis)
ongoing_hiss = False
start_time = datetime.now()


mod = Module()

@mod.action_class
class UserActions:
    def noise_hiss_start():
        """Invoked when the user starts hissing (potentially while speaking)"""
        global ongoing_hiss, start_time
        ongoing_hiss = True
        start_time = datetime.now()
 
    def noise_hiss_stop():
        """Invoked when the user finishes hissing (potentially while speaking)"""
        global min_time_delta, ongoing_hiss, start_time
        print(datetime.now() - start_time)
        if ongoing_hiss and datetime.now() - start_time >= min_time_delta:
            actions.mouse_click(1)
        ongoing_hiss = False


def hiss_handler(active):
    # print('hiss handler: ' + str(active))
    # aegis says this api will definitely change
    active_eyetracker = eye_mouse.mouse.attached_tracker is not None

    if active_eyetracker:
        if active:
            actions.user.noise_hiss_start()
        else:
            actions.user.noise_hiss_stop()


# register the handler to the noise
noise.register("hiss", hiss_handler)
