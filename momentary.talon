mode: sleep
-
please [<phrase>]$:
    mode.enable("command")
    user.manual_parse_phrase(phrase or "")
    mode.disable("command")
