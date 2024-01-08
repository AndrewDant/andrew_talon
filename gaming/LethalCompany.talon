app.exe: Lethal Company.exe
-
# use foot switch to toggle speech verses talk
key(f13:down):
	speech.disable()
	key(t:down)
	
key(f13:up):
	key(t:up)
	speech.enable()
    
help:
    insert('help')
    sleep(100ms)
    key(enter)

moons:
    insert('moons')
    sleep(100ms)
    key(enter)

(root|rout|route) {user.moons}:
    insert(user.moons)
    sleep(100ms)
    key(enter)

(info) {user.moons}:
    insert(user.moons)
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

scan:
    insert('scan')
    sleep(100ms)
    key(enter)