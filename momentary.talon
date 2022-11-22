mode: sleep
-
^talon [<phrase>]$:
    mode.enable("command")
    user.manual_parse_phrase(phrase or "")
    mode.disable("command")
