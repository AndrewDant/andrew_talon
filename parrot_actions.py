from talon import Module, actions

mod = Module()

whistle_mode = 'scroll'

scroll_multiplier = 0.5
zoom_multiplier = scroll_multiplier

@mod.action_class
class UserActions:
    def whistle_up(power: float):
        """Transform the whistle volume into an amount to scroll downwards"""
        match whistle_mode:
            case 'scroll':
                actions.mouse_scroll(-1 * power * scroll_multiplier)
            case 'zoom':
                actions.key('ctrl:down')
                actions.mouse_scroll(-1 * power * zoom_multiplier)
                actions.key('ctrl:up')
    
    def whistle_down(power: float):
        """Transform the whistle volume into an amount to scroll upwards"""
        match whistle_mode:
            case 'scroll':
                actions.mouse_scroll(power * scroll_multiplier)
            case 'zoom':
                actions.key('ctrl:down')
                actions.mouse_scroll(power * zoom_multiplier)
                actions.key('ctrl:up')

    def set_whistle_mode(mode: str):
        """Set a string as the whistle mode"""
        global whistle_mode
        whistle_mode = mode
        print(whistle_mode)
