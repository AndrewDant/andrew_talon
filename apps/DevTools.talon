title: /DevTools/

-
settings():
    key_wait = 8
    
tag(): user.line_commands

^step [next]: key("f10")

^continue: key("f8")

file hunt [<user.text>]:
    key(ctrl-p)
    sleep(100ms)
    insert(text or "")

[focus] console: key(ctrl-`)

disable breakpoints: key(ctrl-f8)