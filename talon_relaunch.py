# From https://github.com/nriley/knausj_talon/blob/9b3ab0432f8cb8f75d1bfb188b91d3f10db7da96/code/talon_helpers.py#L174
from talon import (
    ui,
    Module,
    app,
    ui,
)
import os


mod = Module()

@mod.action_class
class ModeActions:
     def talon_relaunch():
        """Quit and relaunch the Talon app"""
        talon_app = ui.apps(pid=os.getpid())[0]
        if app.platform == "mac":
            from subprocess import Popen
            from shlex import quote

            talon_app_path = quote(talon_app.path)
            Popen(['/bin/sh', '-c',
                f'/usr/bin/open -W {talon_app_path} ; /usr/bin/open {talon_app_path}'
            ], start_new_session=True)
            talon_app.appscript().quit(waitreply=False) # XXX temporary replacement
            # XXX talon_app.quit() nonfunctional?
        elif app.platform == "windows":
            os.startfile(talon_app.exe)
            talon_app.quit()