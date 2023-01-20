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

def teams_mute_windows(app_list):
    for app in app_list:
        if app.active_window and "Microsoft Teams" in app.active_window.title:
            actions.user.switcher_focus_app(app)
            actions.sleep("50ms")
            actions.key("ctrl-shift-m")
            actions.sleep("50ms")

@mod.action_class
class CustomMute:
    def mute_teams_anywhere():
        """Mute teams whether it is focused or not"""
        initial_window = ui.active_window()
        app_list = actions.user.get_running_app_list("Microsoft Teams")
        teams_mute_windows(app_list)
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
        is_teams = False
        try:
            app_list = [actions.user.get_running_app("Discord")]
        except:
            app_list = actions.user.get_running_app_list("Microsoft Teams")
            is_teams = True
        if is_teams:
            teams_mute_windows(app_list)
        else:
            for app in app_list:
                try:
                    actions.user.switcher_focus_app(app)
                except:
                    pass
                actions.sleep("60ms")
                actions.key("ctrl-shift-m")
                actions.sleep("60ms")
        actions.user.switcher_focus_window(initial_window)
        
