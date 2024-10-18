app.exe: Lethal Company.exe
-
help:
    insert('help')
    sleep(100ms)
    key(enter)

confirm:
    insert('confirm')
    sleep(100ms)
    key(enter)

deny:
    insert('deny')
    sleep(100ms)
    key(enter)

moons:
    insert('moons')
    sleep(100ms)
    key(enter)

{user.moons}:
    insert('route {user.moons}')
    sleep(100ms)
    key(enter)

(info {user.moons}|{user.moons} info):
    insert('{user.moons} info')
    sleep(100ms)
    key(enter)

store:
    insert('store')
    sleep(100ms)
    key(enter)
    
view monitor:
    insert('view monitor')
    sleep(100ms)
    key(enter)
    
switch:
    insert('switch')
    sleep(100ms)
    key(enter)

other:
    insert('other')
    sleep(100ms)
    key(enter)

scan:
    insert('scan')
    sleep(100ms)
    key(enter)

(quit|leave) [terminal]: key(tab)