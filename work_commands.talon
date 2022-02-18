mode: command
-
login:
	insert("1111")
	key(tab)

admin login:
	insert("54321")
	key(tab)

go time zone:
	key("down:124")
	key(enter)

save next:
	key("ctrl-shift:down")
	mouse_click(0)
	key("ctrl-shift:up")

next: key("ctrl-space")

skip diary: key("ctrl-shift-space")