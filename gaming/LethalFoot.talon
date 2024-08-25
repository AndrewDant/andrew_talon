app.exe: Lethal Company.exe
mode: all
-
key(f13):
    user.toggle_voice()
    speech.toggle()
    
talking:
    speech.disable()
    user.enable_voice()
    
(over|done [talking]):
    speech.enable()
    user.disable_voice()