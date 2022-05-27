mode: command
-
login:
	insert("1111")
	key(tab)

admin login:
	insert("54321")
	key(tab)

training code:
	insert("A1B2C3")
	key(tab)

go time zone:
	key(tab)
	key(enter)
	sleep(100ms)
	# key("down:124")
	key("down:156")
	key(enter)
	sleep(50ms)
	key(ctrl-space)

save next:
	key("ctrl-shift:down")
	mouse_click(0)
	key("ctrl-shift:up")

next: key("ctrl-space")

skip diary: key("ctrl-shift-space")

my username: insert('andrew.dant')

unlock code: key(ctrl-1)

first (sight|site) [user]:
	insert('site admin')
	key(tab:2)
	insert('1111')
	key(tab)
	insert('1111')
	key(tab)
	key(ctrl-1)