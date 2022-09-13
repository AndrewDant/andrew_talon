mode: sleep
-
^listen [<phrase>]$:
    mode.enable("command")
    user.manual_parse_phrase(phrase or "")
    mode.disable("command")
