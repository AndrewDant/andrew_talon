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

meeting_window = None

def teams_mute_windows(app_list):
    global meeting_window
    window_was_focused = False
    if meeting_window:
        try:
            actions.user.switcher_focus_window(meeting_window)
            window_was_focused = True
        finally:
            pass
    
    if not window_was_focused:
        for app in app_list:
            # teams now shows up as a single app with multiple windows, so if the active window is not the right one then this won't work
            if app.active_window and "Microsoft Teams" in app.active_window.title:
                actions.user.switcher_focus_window(app.active_window)
                window_was_focused = True
    
    if window_was_focused:
        actions.sleep("50ms")
        actions.key("ctrl-shift-m")
        actions.sleep("50ms")

@mod.action_class
class CustomMute:
    def store_meeting_window():
        """save the current window so we know which one to focus in the future"""
        global meeting_window
        meeting_window = ui.active_window()
        
    def mute_teams_anywhere():
        """Mute teams whether it is focused or not"""
        initial_window = ui.active_window()
        
        # this gets apps with either an exact name match or name that starts with this text. Usually that's only one app, even if it has multiple windows
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
        
