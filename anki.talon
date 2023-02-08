app: anki.exe
-
close this: insert('{{{{c1::')
# close this: user.cloze_wrap_selection(1)
close <number_small>: user.cloze_wrap_selection(number_small)

end close: insert('}}}}')

add card: key(ctrl-enter)

delete card: key(ctrl-delete)

change type: key(ctrl-n)

new card: key(a)

browse deck: key(b)

test this: user.test()