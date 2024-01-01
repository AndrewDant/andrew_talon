not mode: sleep
-
^commander:
    mode.disable("dictation")
    mode.disable("user.gaming")
    mode.enable("command")
    
^dictator:
    mode.disable("command")
    mode.disable("user.gaming")
    mode.enable("dictation")

^(gamer|game mode):
    mode.disable("command")
    mode.disable("dictation")
    mode.enable("user.gaming")

^talon (re start|restart): user.talon_relaunch()