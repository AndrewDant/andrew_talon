app: anki.exe
-
start close: insert('{{{{c1::')

end close: insert('}}}}')

close that:
    text = edit.selected_text()
    user.paste("{{{{c1::{text}}}}}")

close <number_small>:
    text = edit.selected_text()
    user.paste("{{{{c{number_small}::{text}}}}}")

add (card|note): key(ctrl-enter)

delete card: key(ctrl-delete)

change type: key(ctrl-n)

new card: key(a)

browse deck: key(b)

test this: user.test()

next: key(right)

again:  key(1)
hard:   key(2)
good:   key(3)
easy:   key(4)

show:   key(space)