app: vscode
-
generate docs: key(alt-j)

quick fix: key(ctrl-.)

copy command id: user.copy_command_id()

pipeline: user.vscode_with_plugin("gl.pipelineActions")
open [active] file in browser: user.vscode_with_plugin("gl.openActiveFile")

search next: user.vscode("search.action.focusNextSearchResult")
search last: user.vscode("search.action.focusPreviousSearchResult")
search file remove: user.vscode("search.searchEditor.action.deleteFileResults")
search remove: user.vscode("search.action.remove")

cursorless record: user.vscode("cursorless.recordTestCase")

open recent: user.vscode("workbench.action.openRecent")

change language:
    user.vscode_with_plugin("workbench.action.editor.changeLanguageMode")
    
toggle word wrap:
    user.vscode_with_plugin("editor.action.toggleWordWrap")
    
(show file|open file): user.vscode_with_plugin("extension.openFileFromPath")

jest: user.vscode_with_plugin("editor.action.triggerSuggest")

toggle hats: user.vscode("cursorless.toggleDecorations")