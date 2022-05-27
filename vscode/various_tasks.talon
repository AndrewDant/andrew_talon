app: vscode
-
generate docs: key(alt-j)

quick fix: key(ctrl-.)

copy command id: user.copy_command_id()

pipeline: user.vscode_with_plugin("gl.pipelineActions")

search next: user.vscode("search.action.focusNextSearchResult")
search last: user.vscode("search.action.focusPreviousSearchResult")
search file remove: user.vscode("search.searchEditor.action.deleteFileResults")
search remove: user.vscode("search.action.remove")

cursorless record: user.vscode("cursorless.recordTestCase")

open recent: user.vscode("workbench.action.openRecent")