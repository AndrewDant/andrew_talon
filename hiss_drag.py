from talon_plugins import eye_mouse


mod = Module()


@mod.action_class
class UserActions:
    def noise_hiss_start():
        """Invoked when the user starts hissing (potentially while speaking)"""
        print("hiss start")
        # ctrl.mouse_click(0, down: true)
        actions.mouse_drag(0)

    def noise_hiss_stop():
        """Invoked when the user finishes hissing (potentially while speaking)"""
        
        print("hiss stop")
        actions.mouse_release(0)


def hiss_handler(active):
    if active and eye_mouse.mouse.attached_tracker is not None:
        actions.user.noise_hiss_start()
    else:
        actions.user.noise_hiss_stop()


# register the handler to the noise
noise.register("hiss", hiss_handler)