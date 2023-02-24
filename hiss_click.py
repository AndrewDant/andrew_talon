from talon import Module, actions, noise, ctrl
from talon_plugins import eye_mouse

ongoing_hiss = False

mod = Module()

@mod.action_class
class UserActions:
    def noise_hiss_start():
        """Invoked when the user starts hissing (potentially while speaking)"""
        print("hiss start")

        ctrl.mouse_click(button=1, hold=16000)

    def noise_hiss_stop():
        """Invoked when the user finishes hissing (potentially while speaking)"""
        print("hiss stop")


def hiss_handler(active):
    print('hiss handler: ' + str(active))
    # aegis says this api will definitely change
    active_eyetracker = eye_mouse.mouse.attached_tracker is not None

    if active_eyetracker:
        if active:
            actions.user.noise_hiss_start()
        else:
            actions.user.noise_hiss_stop()


# register the handler to the noise
noise.register("hiss", hiss_handler)
