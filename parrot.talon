not mode: user.gaming
-
parrot(whistle_high:repeat):
	user.whistle_up(power)

parrot(whistle_low:repeat):
	user.whistle_down(power)
	
whistle scroll: user.set_whistle_mode('scroll')
whistle zoom: user.set_whistle_mode('zoom')
	
parrot(dental_click):
	# app.notify('dental')
	# tracking.control_toggle()
	
parrot(palate_click):
	# app.notify('palate')
	core.repeat_command(1)
	