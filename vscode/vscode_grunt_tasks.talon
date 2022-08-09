app: vscode
-
handheld dev:
    user.vscode_with_plugin("workbench.action.tasks.runTask", "grunt: handheld-dev")

handheld build and install:
    user.vscode_with_plugin("workbench.action.tasks.runTask", "grunt: handheld-android-build-and-install")

handheld [just] build:
    user.vscode_with_plugin("workbench.action.tasks.runTask", "grunt: handheld-android-build")

handheld [just] install:
    user.vscode_with_plugin("workbench.action.tasks.runTask", "grunt: handheld-android-install")

tablet dev:
    user.vscode_with_plugin("workbench.action.tasks.runTask", "grunt: tablet-dev")

tablet build and install:
    user.vscode_with_plugin("workbench.action.tasks.runTask", "grunt: tablet-android-build-and-install")

tablet [just] build:
    user.vscode_with_plugin("workbench.action.tasks.runTask", "grunt: tablet-android-build")

tablet [just] install:
    user.vscode_with_plugin("workbench.action.tasks.runTask", "grunt: tablet-android-install")

start server:
    user.vscode_with_plugin("workbench.action.tasks.runTask", "npm: start - server")

project startup:
    user.vscode_with_plugin("workbench.action.tasks.runTask", "grunt: pde-proj-start")
    
jest: user.vscode_with_plugin("editor.action.triggerSuggest")