import subprocess
from talon import Module, actions, app

mod = Module()

@mod.action_class
class WorkCommands:
    def kill_adb():
        """Kill the adb process if it is running"""
        cmd = f"taskkill /IM adb.exe /F"
        subprocess.run(cmd)
        
    def start_adb():
        """Start the adb server process"""
        cmd = f"adb start-server"
        subprocess.run(cmd)
        
    def open_jira_link():
        """Open a jira ticket in a new browser tab using only the ticket id"""
        selected = actions.edit.selected_text()
        if not selected:
            print("Asked to open link to selection, but nothing selected.")
            return
        
        running_app = actions.user.get_running_app("Microsoft Edge")
        if running_app and running_app.active_window and running_app.active_window.title:
            actions.user.switcher_focus_app(running_app)
        else:
            # TODO I'd like to find a better way to reference it
            actions.user.switcher_launch("Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge")
        
        actions.sleep("100ms")
        actions.app.tab_open()
        actions.browser.focus_address()
        actions.insert(f"https://jira.ert.com/jira/browse/{selected}")
        actions.sleep("100ms")
        actions.key("enter")