import subprocess
from talon import Module

mod = Module()

@mod.action_class
class WorkCommands:
    def kill_adb():
        """Kill the adb process if it is running"""
        cmd = f"taskkill /IM adb.exe /F"
        subprocess.run(cmd)
        
    def start_adb():
        """Start the adb server process"""
        cmd = f"adb start-server"
        subprocess.run(cmd)