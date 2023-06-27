import re
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
        
    def open_jira_link(base_url: str):
        """Open a jira ticket in a new browser tab using only the ticket id"""
        selected = actions.edit.selected_text()
        if not selected:
            print("Asked to open link to selection, but nothing selected.")
            return
            
        try:
            ticket_id = re.search('(ONEECOA-\d+)', selected, flags=re.IGNORECASE).group(1)
        except AttributeError:
            print("Could not extract jira ticket id")
            return
        
        running_app_list = [app for app in actions.user.get_running_app_list("Microsoft Edge") if app.active_window and app.active_window.title]
        # TODO maybe a better way to filter this in the future
        running_app = running_app_list[0]
        if running_app and running_app.active_window and running_app.active_window.title:
            actions.user.switcher_focus_app(running_app)
            actions.sleep("250ms")
        else:
            # TODO I'd like to find a better way to reference it
            actions.user.switcher_launch("Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge")
            actions.sleep("500ms")
        
        actions.app.tab_open()
        actions.browser.focus_address()
        actions.sleep("100ms")
        actions.insert(f"{base_url}/jira/browse/{ticket_id}")
        actions.sleep("100ms")
        actions.key("enter")