paste plain: key("ctrl-shift-v")

save next:
	key("ctrl-shift:down")
	mouse_click(0)
	key("ctrl-shift:up")

next: key("ctrl-space")

skip diary: key("ctrl-shift-space")

screen snippet: key("super-shift-s")

show desktop: key("super-d")

pop: key("space")

<number_small> o'clock: insert("{number_small}:00")

<user.thing_length>: core.repeat_command(thing_length)

^go to sleep [<phrase>]$: speech.disable()

key(shift-alt-8): speech.toggle()

# experimental from online suggestions
coalpop: insert(": ")

compop: insert(", ")

nope: edit.undo()

nozzle: insert("knausj")

google that: key(ctrl-g)

go time zone: key("down:124")


(frees|freeze|unfreeze):
	user.mouse_toggle_control_mouse()