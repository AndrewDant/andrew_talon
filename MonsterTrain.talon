mode: command
title: /MonsterTrain/
-
# max number of floors
scroll way up:
	key("pageup")
	sleep(60ms)
	key("pageup")
	sleep(60ms)
	key("pageup")

scroll way down:
	key("pagedown")
	sleep(60ms)
	key("pagedown")
	sleep(60ms)
	key("pagedown")

# alternate way to end turn
send it: key("e")

# back out of shops or views
leave: key("q")

# Skip a card draft
skip it: key("q")

map: key("m")

# Change the animation speed
speed: key("n")

settings: key("escape")

artifacts:key("tab")

draw pile: key("x")

discard pile: key("c")

consume pile: key("v")

the deck: key("z")

unit essence: key("h")

# Used to play a card immediately on the default target
play one:
	key("1")
	sleep(60ms)
	key("enter")

play two:
	key("2")
	sleep(60ms)
	key("enter")

play three:
	key("3")
	sleep(60ms)
	key("enter")

play four:
	key("4")
	sleep(60ms)
	key("enter")

play five:
	key("5")
	sleep(60ms)
	key("enter")

play six:
	key("6")
	sleep(60ms)
	key("enter")

play seven:
	key("7")
	sleep(60ms)
	key("enter")

play eight:
	key("8")
	sleep(60ms)
	key("enter")

play nine:
	key("9")
	sleep(60ms)
	key("enter")

play ten:
	key("0")
	sleep(60ms)
	key("enter")