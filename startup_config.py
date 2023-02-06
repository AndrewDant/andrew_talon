from talon import app, actions

def on_ready():
    actions.speech.disable()

app.register("launch", on_ready)