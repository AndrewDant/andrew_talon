title: /^Slay the Spire$/

-
settings():
    key_wait = 240
	user.screen_spots_slow_move_enabled = 1

# !! ends your turn !!
send it: key("e")

map: key("m")

[the] deck: key("d")

draw [pile]: key("a")

discard [pile]: key("s")

exhaust [pile]: key("x")

scroll up: user.mouse_scroll_up(55)

scroll down: user.mouse_scroll_down(55)

scroll way up: user.mouse_scroll_up(5555)

# select a specific card
card one:
	key("1")

card two:
	key("2")

card three:
	key("3")

card four:
	key("4")

card five:
	key("5")

card six:
	key("6")

card seven:
	key("7")

card eight:
	key("8")

# fix for a frequent miss hear
caret:
	key("8")

card nine:
	key("9")

# immediately play a specific card
play one:
	key("1")
	sleep(60ms)
    mouse_click(0)
	# close the mouse grid if open
	user.grid_close()
    # End any open drags
	# click automatically ends left drags so this is for right drags specifically
	user.mouse_drag_end()

play two:
	key("2")
	sleep(60ms)
    mouse_click(0)
	# close the mouse grid if open
	user.grid_close()
    # End any open drags
	# click automatically ends left drags so this is for right drags specifically
	user.mouse_drag_end()

play three:
	key("3")
	sleep(60ms)
    mouse_click(0)
	# close the mouse grid if open
	user.grid_close()
    # End any open drags
	# click automatically ends left drags so this is for right drags specifically
	user.mouse_drag_end()

play four:
	key("4")
	sleep(60ms)
    mouse_click(0)
	# close the mouse grid if open
	user.grid_close()
    # End any open drags
	# click automatically ends left drags so this is for right drags specifically
	user.mouse_drag_end()

play five:
	key("5")
	sleep(60ms)
    mouse_click(0)
	# close the mouse grid if open
	user.grid_close()
    # End any open drags
	# click automatically ends left drags so this is for right drags specifically
	user.mouse_drag_end()

play six:
	key("6")
	sleep(60ms)
    mouse_click(0)
	# close the mouse grid if open
	user.grid_close()
    # End any open drags
	# click automatically ends left drags so this is for right drags specifically
	user.mouse_drag_end()

play seven:
	key("7")
	sleep(60ms)
    mouse_click(0)
	# close the mouse grid if open
	user.grid_close()
    # End any open drags
	# click automatically ends left drags so this is for right drags specifically
	user.mouse_drag_end()

play eight:
	key("8")
	sleep(60ms)
    mouse_click(0)
	# close the mouse grid if open
	user.grid_close()
    # End any open drags
	# click automatically ends left drags so this is for right drags specifically
	user.mouse_drag_end()

play nine:
	key("9")
	sleep(60ms)
    mouse_click(0)
	# close the mouse grid if open
	user.grid_close()
    # End any open drags
	# click automatically ends left drags so this is for right drags specifically
	user.mouse_drag_end()

play ten:
	key("0")
	sleep(60ms)
    mouse_click(0)
	# close the mouse grid if open
	user.grid_close()
    # End any open drags
	# click automatically ends left drags so this is for right drags specifically
	user.mouse_drag_end()
