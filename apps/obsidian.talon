app: obsidian
-
tag(): user.tabs
tag(): user.find
tag(): user.line_commands
tag(): user.splits
tag(): user.emoji

file hunt [<user.text>]:
    key(ctrl-o)
    edit.delete_line()
    sleep(100ms)
    insert(text or "")

pop daily note:
    key(ctrl-p)
    sleep(100ms)
    insert('today daily note')
    key(enter)

please [<user.text>]:
    key(ctrl-p)
    edit.delete_line()
    sleep(100ms)
    insert(text or "")    

new note: key(ctrl-n)

add list:                   insert("- ")
add task:                   insert("- [ ] ")

task:            key(ctrl-l)

form bold:        key(ctrl-b)
form italic:      key(ctrl-i)
form strike:      key(ctrl-shift-x)

bar switch:     key(alt-b)

rack switch:    key(alt-c)

show (help | settings):     key(ctrl-,)
add (prop | tag):           key(ctrl-;)

link: user.insert_between("[[", "]]")
link this:
    text = edit.selected_text()
    user.paste("[[{text}]]")