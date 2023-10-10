from talon import Module, actions, noise, ctrl, cron
from talon_plugins import eye_mouse
from datetime import datetime, timedelta

latest_hiss_start = None
min_hiss_milliseconds = 1000

mod = Module()

@mod.action_class
class UserActions:
    def noise_hiss_start():
        """Invoked when the user starts hissing (potentially while speaking)"""
        global latest_hiss_start
        
        if not latest_hiss_start:
            latest_hiss_start = datetime.now()
            cron.after(f"{min_hiss_milliseconds + 5}ms", validate_hiss)

    def noise_hiss_stop():
        """Invoked when the user finishes hissing (potentially while speaking)"""
        global latest_hiss_start
        # probably need a better check here
        if latest_hiss_start:
            actions.mouse_release(0)
        
        latest_hiss_start = None


def validate_hiss():
    if latest_hiss_start and datetime.now() - latest_hiss_start >= timedelta(milliseconds=min_hiss_milliseconds):
        actions.mouse_drag(0)


def hiss_handler(active):
    if active:
        actions.user.noise_hiss_start()
    else:
        actions.user.noise_hiss_stop()


# register the handler to the noise
noise.register("hiss", hiss_handler)
