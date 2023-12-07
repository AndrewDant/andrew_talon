import math
from talon import Module, actions

mod = Module()

@mod.action_class
class UserActions:
    def whistle_scroll_up(power: float):
        """Transform the whistle volume into an amount to scroll upwards"""
        actions.mouse_scroll(transform_power(power))
    
    def whistle_scroll_down(power: float):
        """Transform the whistle volume into an amount to scroll downwards"""
        actions.mouse_scroll(-1 * transform_power(power))

def transform_power(power: float):
    transformed_power = 2 * (power ** 0.75)
    # print(f"Original power: ${power}\n\t\t\t\tTransformed power: ${transformed_power}")
    return transformed_power
