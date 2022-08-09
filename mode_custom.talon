not mode: sleep
-
^commander:
    mode.disable("dictation")
    mode.enable("command")
    
^dictator:
    mode.disable("command")
    mode.enable("dictation")

^talon (re start|restart): user.talon_relaunch()