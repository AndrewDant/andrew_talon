from talon import Module, actions, noise, ctrl, cron
from talon_plugins import eye_mouse
from datetime import datetime, timedelta

latest_hiss_start = None
min_hiss_milliseconds = 500
hiss_cron = None

mod = Module()

@mod.action_class
class UserActions:
    def noise_hiss_start():
        """Invoked when the user starts hissing (potentially while speaking)"""
        global latest_hiss_start, hiss_cron
        
        if not latest_hiss_start:
            latest_hiss_start = datetime.now()
            hiss_cron = cron.after(f"{min_hiss_milliseconds + 5}ms", drag_handler)

    def noise_hiss_stop():
        """Invoked when the user finishes hissing (potentially while speaking)"""
        global latest_hiss_start, hiss_cron
        if ongoing_hiss():
            actions.mouse_release(0)
        
        latest_hiss_start = None
        cron.cancel(hiss_cron)


def drag_handler():
    if ongoing_hiss():
        actions.mouse_drag(0)


def ongoing_hiss():
    return latest_hiss_start and datetime.now() - latest_hiss_start >= timedelta(milliseconds=min_hiss_milliseconds)


def hiss_handler(active):
    # NOTE: as of 10/10/23 literally just clicking my mouse triggered a hiss start/stop
    if active:
        actions.user.noise_hiss_start()
    else:
        actions.user.noise_hiss_stop()


# register the handler to the noise
noise.register("hiss", hiss_handler)
