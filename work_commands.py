import subprocess
from talon import Module

mod = Module()

@mod.action_class
class WorkCommands:
    def kill_adb():
        """Kill the adb process if it is running"""
        cmd = f"taskkill /IM adb.exe /F"
        subprocess.run(cmd)