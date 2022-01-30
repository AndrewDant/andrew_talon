space bar: key("space")

paste plain: key("ctrl-shift-v")

next: key("ctrl-space")

skip diary: key("ctrl-shift-space")

screen snippet: key("super-shift-s")

show desktop: key("super-d")

pop: key("space")

<number_small> o'clock:
    insert("{number_small}:00")

<user.thing_length>: core.repeat_command(thing_length)

^go to sleep [<phrase>]$: speech.disable()

key(shift-alt-8): speech.toggle()
