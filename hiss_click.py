from talon import Module, actions, noise, ctrl, cron
from talon_plugins import eye_mouse
from datetime import datetime, timedelta

latest_hiss_start = None
min_hiss_milliseconds = 700
hiss_cron = None

mod = Module()


@mod.action_class
class UserActions:
    def noise_hiss_start():
        """Invoked when the user starts hissing (potentially while speaking)"""

        global latest_hiss_start, hiss_cron
        
        if not latest_hiss_start:
            latest_hiss_start = datetime.now()
            hiss_cron = cron.after(f"{min_hiss_milliseconds + 5}ms", validate_hiss)

    def noise_hiss_stop():
        """Invoked when the user finishes hissing (potentially while speaking)"""
        global latest_hiss_start, hiss_cron
        latest_hiss_start = None
        cron.cancel(hiss_cron)

def validate_hiss():
    if latest_hiss_start and datetime.now() - latest_hiss_start >= timedelta(milliseconds=min_hiss_milliseconds):
        ctrl.mouse_click(button=1, hold=16000)


def hiss_handler(active):
    # if active_eyetracker:
    if active:
        actions.user.noise_hiss_start()
    else:
        actions.user.noise_hiss_stop()


# register the handler to the noise
noise.register("hiss", hiss_handler)
