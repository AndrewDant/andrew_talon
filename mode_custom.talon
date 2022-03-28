not mode: sleep
-
^commander$:
    mode.disable("dictation")
    mode.enable("command")

^talon (re start|restart): user.talon_relaunch()