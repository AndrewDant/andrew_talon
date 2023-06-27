mode: command
-
login:
	insert("1111")
	key(tab)
	
login extra:
	insert("111111")
	key(tab)

admin login:
	insert("54321")
	key(tab)

training code:
	insert("A1B2C3")
	key(tab)

go time zone:
	key(tab)
	key(enter)
	sleep(100ms)
	key("down:124")
	# key("down:156")
	key(enter)
	sleep(50ms)
	key(ctrl-space)

save (next):
	key("ctrl-shift:down")
	mouse_click(0)
	key("ctrl-shift:up")

next: key("ctrl-space")

skip diary: key("ctrl-shift-space")

my username: insert('andrew.dant')

unlock code: key(ctrl-1)

first (sight|site) [user]:
	insert('site admin')
	key(tab:2)
	insert('1111')
	key(tab)
	insert('1111')
	key(tab)
	key(ctrl-1)
	
handheld (sight|site) user:
	insert('site user')
	key(tab)
	key(enter)
	key(down)
	key(enter)
	sleep(50ms)
	key(tab)
	key(enter)
	key(down)
	key(enter)
	sleep(50ms)
	key(tab)
	insert('1111')
	key(tab)
	insert('1111')
	key(tab)
	key(ctrl-space)
	
handheld trainer:
	insert('trainer')
	key(tab)
	insert('1')
	key(ctrl-space)
	sleep(70ms)
	key(ctrl-space)
	sleep(70ms)
	key(ctrl-space)

email work: insert('andrew.dant@clario.com')

email work old: insert('andrew.dant@ert.com')

(killer|kill the) bee: user.kill_adb()

(starter|start the) bee: user.start_adb()

[enable] all diaries:
	user.switcher_focus_window_by_name('DevTools')
	sleep(50ms)
    key(ctrl-`)
    sleep(50ms)
    insert("PDE.DevConfig.isAllDiariesVisitEnabled=true")
    key(enter)
	
(flash form|open form):
	user.switcher_focus_window_by_name('DevTools')
	sleep(50ms)
    key(ctrl-`)
    sleep(50ms)
    insert("LF.router.navigate('questionnaire/some_questionnaire/checkAlwaysAvailability', {{trigger: true}})")
	
(branch to screen|skip to screen):
	user.switcher_focus_window_by_name('DevTools')
	sleep(50ms)
    key(ctrl-`)
    sleep(50ms)
    insert("LF.Branching.Helpers.navigateToScreen('some_screen')")
	
test string:
	user.switcher_focus_window_by_name('DevTools')
	sleep(50ms)
    key(ctrl-`)
    sleep(50ms)
    insert("LF.getStrings('myText', $.noop, {{namespace: 'myQuestionnaire' }});")
	
jira that:
	user.open_jira_link('https://jira.ert.com')
	
jira dev [that]:
	user.open_jira_link('https://jiradev.ert.com')