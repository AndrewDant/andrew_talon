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

(project startup|clean strings):
    user.vscode_with_plugin("workbench.action.tasks.runTask", "grunt: pde-proj-start")
    
site pad web:
    user.vscode_with_plugin("workbench.action.tasks.runTask", "grunt: spw")
    
log pad web:
    user.vscode_with_plugin("workbench.action.tasks.runTask", "grunt: lpw")
    
web host [staging]:
    user.vscode_with_plugin("workbench.action.tasks.runTask", "grunt: web-host-staging")
    
web host dev:
    user.vscode_with_plugin("workbench.action.tasks.runTask", "grunt: web-host-dev")
    
(stop|kill) web host:
    user.vscode_with_plugin("workbench.action.tasks.runTask", "grunt: web-host-stop")