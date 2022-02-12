not mode: sleep
-
^command mode <phrase>:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.enable("command")