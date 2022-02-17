from talon import Module
from talon_plugins.eye_mouse import config,  toggle_movement

mod = Module()

@mod.action_class
class Freeze:
    def freeze():
        """Stop movement of the cursor without turning off the eye tracker"""
        toggle_movement(False)
    
    def unfreeze():
        """Resume movement of the eye tracker"""
        toggle_movement(True)