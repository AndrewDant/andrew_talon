import os
from talon import (
    ui,
    Module,
    app,
    ui,
    actions,
    Context
)

mod = Module()
ctx = Context()

@mod.action_class
class CustomMute:
    def mute_teams_anywhere():
        """Mute teams whether it is focused or not"""
        initial_window = ui.active_window()
        app_list = actions.user.get_running_app_list("Microsoft Teams")
        for app in app_list:
            actions.user.switcher_focus_app(app)
            actions.sleep("50ms")
            actions.key("ctrl-shift-m")
            actions.sleep("50ms")
        actions.sleep("50ms")
        actions.key("ctrl-shift-m")
        actions.sleep("50ms")
        actions.user.switcher_focus_window(initial_window)
        
    def mute_discord_anywhere():
        """Mute discord whether it is focused or not"""
        initial_window = ui.active_window()
        actions.user.switcher_focus("Discord")
        actions.sleep("50ms")
        actions.key("ctrl-shift-m")
        actions.sleep("50ms")
        actions.user.switcher_focus_window(initial_window)
        
    def mute_teams_or_discord():
        """Switch to then mute either teams or discord. Default to teams if open"""
        initial_window = ui.active_window()
        app_list = None
        try:
            app_list = [actions.user.get_running_app("Discord")]
        except:
            app_list = actions.user.get_running_app_list("Microsoft Teams")
        for app in app_list:
            try:
                actions.user.switcher_focus_app(app)
            except:
                pass
            actions.sleep("60ms")
            actions.key("ctrl-shift-m")
            actions.sleep("60ms")
        actions.user.switcher_focus_window(initial_window)
        
