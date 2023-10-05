mode: command
title: /DevTools/

-
settings():
    key_wait = 8

^step [next]: key("f10")

^continue: key("f8")

file hunt: key(ctrl-p)

line hunt:
    key(ctrl-p)
    key(:)

[focus] console: key(ctrl-`)