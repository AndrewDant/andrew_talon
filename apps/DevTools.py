from talon import Context, actions

ctx = Context()

@ctx.action_class("edit")
class EditActions:
    # talon edit actions
    def jump_line(n: int):
        actions.key("ctrl-p")
        actions.sleep("100ms")
        actions.insert(":" + str(n))
        actions.sleep("100ms")
        actions.key("enter")
        actions.edit.line_start()