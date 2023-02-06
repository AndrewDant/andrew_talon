from talon import Context, Module, actions

mod = Module()

@mod.action_class
class Actions:
    def test():
        """test text insertion"""
        selected = actions.edit.selected_text()
        num = 1
        # actions.insert(f"this is some other text {num}")

    def cloze_wrap_selection(cloze_number: int) -> str:
        """Wraps the current selection in a cloze."""
        selected = actions.edit.selected_text()
        if not selected:
            print("Asked to wrap selection, but nothing selected!")
            return
        # Delete separately for compatibility with programs that don't overwrite
        # selected text (e.g. Emacs)
        # actions.edit.delete()
        print(cloze_number)
        print(selected)
        text = 'some other text'
        # text = f"{{{{c{cloze_number}:{selected}}}}}"
        actions.insert(text)
        return text