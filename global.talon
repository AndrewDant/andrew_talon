paste plain: key("ctrl-shift-v")

screen snippet: key("super-shift-s")

show desktop: key("super-d")

pop: key("space")

<number_small> o'clock: insert("{number_small}:00")
<user.thing_length>: core.repeat_command(thing_length)

^(go to sleep|hey there|voice off) [<phrase>]$: speech.disable()

key(shift-f11): speech.toggle()

coalpop: insert(": ")

coalclap:
	insert(":")
	key(enter)

compop: insert(", ")

comclap:
	insert(",")
	key(enter)

nope: edit.undo()

nozzle: insert("knausj")

google that: key(ctrl-g)

# still a work in progress, would like it to open this workspace
talon launch config:
    user.system_command_nb("code ~/.talon/user") 

laser [vision]:
	user.mouse_toggle_control_mouse()
	
^new laser$: experimental.control2_toggle()
	
key(shift-f10): user.mouse_toggle_control_mouse()

clipboard: key("super-v")

(mute|muting) [myself]: key(ctrl-shift-m)

toad: insert('TODO ')

double equals: insert('==')

triple equals: insert('===')

focus next: key(alt-tab)

dot pie: insert('.py')

teams mute: user.mute_teams_anywhere()

discord mute: user.mute_discord_anywhere()

super mute: user.mute_teams_or_discord()

key(shift-f9): user.mute_teams_or_discord()

[open] task manager: key(ctrl-shift-escape)

type pasting: insert(clip.text())
