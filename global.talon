paste plain: key("ctrl-shift-v")

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

# still a work in progress, would like it to open this workspace
talon launch config:
    user.system_command_nb("code ~/.talon/user")

laser [vision]:
	user.mouse_toggle_control_mouse()

(freeze|frees):
	user.freeze()

(unfreeze|one freeze|one frees):
	user.unfreeze()

clipboard: key("super-v")
