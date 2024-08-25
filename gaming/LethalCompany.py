from talon import Module, Context, actions

mod = Module()
mod.list("moons", desc="Lethal Company Moons")

ctx_default = Context()
ctx_default.lists["user.moons"] = {
    "company": "Company",
    "experimentation": "Experimentation",
    "assurance": "Assurance",
    "vow": "Vow",
    "offense": "Offense",
    "march": "March",
    "rend": "Rend",
    "dine": "Dine",
    "titan": "Titan"
}

talking = False
talking_key = "t"

@mod.action_class
class UserActions:
    def toggle_voice():
        """toggle voice key up or down"""
        global talking, talking_key
        if talking:
            actions.user.disable_voice()
        else:
            actions.user.enable_voice()

    def disable_voice():
        """release the voice key"""
        global talking, talking_key
        actions.key(f"{talking_key}:up")
        actions.user.mouse_drag_end()
        talking = False
        
    def enable_voice():
        """start holding the voice key"""
        global talking, talking_key
        actions.key(f"{talking_key}:down")
        actions.mouse_drag(0)
        talking = True