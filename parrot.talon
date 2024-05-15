not mode: user.gaming
-
parrot(whistle_low:repeat):
	user.whistle_scroll_up(power)

parrot(whistle_high:repeat):
	user.whistle_scroll_down(power)
	
parrot(dental_click):
	# app.notify('dental')
	# tracking.control_toggle()
	
parrot(palate_click):
	# app.notify('palate')
	core.repeat_command(1)
	