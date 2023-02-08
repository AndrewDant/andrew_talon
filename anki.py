from talon import Context, Module, actions, clip

mod = Module()

ctx = Context()
ctx.matches = 'app: anki.exe'
@ctx.action_class('edit')
class Actions:
    def selected_text() -> str:
        with clip.revert():
            actions.edit.copy()
            actions.sleep("100ms")
            return clip.text()

@mod.action_class
class Actions:
    def test():
        """test text insertion"""
        selected = actions.edit.selected_text()
        actions.insert(f"{{{{c1::{selected}}}}}")

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