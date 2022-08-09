mode: command
title: /DevTools/

-
settings():
    key_wait = 8

step [next]: key("f10")

continue: key("f8")

file hunt: key(ctrl-p)

[enable] all diaries:
    key(ctrl-`)
    sleep(50ms)
    insert("PDE.DevConfig.isAllDiariesVisitEnabled=true")
    key(enter)

[focus] console: key(ctrl-`)