from talon import Context, actions

ctx = Context()

ctx.matches = r"""
title: /DevTools/
"""

@ctx.action_class("edit")
class EditActions:
    def jump_line(n: int):
        actions.key("ctrl-p")
        actions.sleep("100ms")
        actions.insert(":" + str(n))
        actions.sleep("100ms")
        actions.key("enter")
        actions.edit.line_start()