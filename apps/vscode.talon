app: vscode
-
generate docs: user.vscode("jsdoc-generator.generateJsdoc")

quick fix: key(ctrl-.)

copy command id: user.copy_command_id()

pipeline:
    user.vscode_with_plugin("gl.pipelineActions")
    sleep(400ms)
    key("enter")

open [active] file in browser: user.vscode_with_plugin("gl.openActiveFile")

search next: user.vscode("search.action.focusNextSearchResult")
search last: user.vscode("search.action.focusPreviousSearchResult")
search file remove: user.vscode("search.searchEditor.action.deleteFileResults")
search remove: user.vscode("search.action.remove")

cursorless record: user.vscode("cursorless.recordTestCase")

open recent: user.vscode("workbench.action.openRecent")

toggle word wrap:
    user.vscode_with_plugin("editor.action.toggleWordWrap")
    
(show file|open file): user.vscode_with_plugin("extension.openFileFromPath")

jest: user.vscode_with_plugin("editor.action.triggerSuggest")

toggle hats: user.vscode("cursorless.toggleDecorations")

toggle blame: user.vscode("gitlens.toggleFileBlame")

# moved into custom cursorless commands, along with stage and unstage selected ranges
# revert [selected] range: user.vscode("git.revertSelectedRanges")

git graph: user.vscode("git-graph.view")
git clone: user.vscode("git.clone")
git add remote: user.vscode("git.addRemote")
git discard: user.vscode("git.clean")

accept current: user.vscode("merge-conflict.accept.current")
accept incoming: user.vscode("merge-conflict.accept.incoming")
accept both: user.vscode("merge-conflict.accept.both")

accept all current: user.vscode("merge-conflict.accept.all-current")
accept all incoming: user.vscode("merge-conflict.accept.all-incoming")
accept all both: user.vscode("merge-conflict.accept.all-both")

refresh tasks:
    user.vscode("workbench.view.explorer")
    sleep(40ms)
    user.vscode("bitlab-vscode.taskpanel.refresh")

# TODO this only works in specific contexts, need to configure a conditional keybinding
real file: user.vscode("git.openFile")
real old file: user.vscode("git-graph.openFile")
keep file: user.vscode("workbench.action.keepEditor")

powershell terminal: user.vscode_with_plugin("andreas.setSetting", "terminal.integrated.defaultProfile.windows", "PowerShell", "global")
git bash terminal: user.vscode_with_plugin("andreas.setSetting", "terminal.integrated.defaultProfile.windows", "Git Bash", 'global')
