from talon import Module, actions, noise, cron, scope
from talon_plugins import eye_mouse

min_hiss_time = "150ms"
ongoing_hiss = False

mod = Module()

@mod.action_class
class UserActions:
    def noise_hiss_start():
        """Invoked when the user starts hissing (potentially while speaking)"""
        print("hiss start")
        global ongoing_hiss
        ongoing_hiss = True

        cron.after(min_hiss_time, validate_hiss)

    def noise_hiss_stop():
        """Invoked when the user finishes hissing (potentially while speaking)"""
        print("hiss stop")
        global ongoing_hiss
        ongoing_hiss = False

        actions.mouse_release(0)


def validate_hiss():
    if ongoing_hiss:
        actions.mouse_drag(0)


def hiss_handler(active):
    sleep_mode = "sleep" in scope.get("mode")
    # aegis says this api will definitely change
    active_eyetracker = eye_mouse.mouse.attached_tracker is not None

    if active_eyetracker and not sleep_mode:
        if active:
            actions.user.noise_hiss_start()
        else:
            actions.user.noise_hiss_stop()


# register the handler to the noise
noise.register("hiss", hiss_handler)
