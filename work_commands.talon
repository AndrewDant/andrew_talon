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
	# key("down:124")
	key("down:155")
	key(enter)

save next:
	key("ctrl-shift:down")
	mouse_click(0)
	key("ctrl-shift:up")

next: key("ctrl-space")

skip diary: key("ctrl-shift-space")