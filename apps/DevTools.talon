mode: command
title: /DevTools/

-
settings():
    key_wait = 8
    
tag(): user.line_commands

^step [next]: key("f10")

^continue: key("f8")

file hunt: key(ctrl-p)

[focus] console: key(ctrl-`)