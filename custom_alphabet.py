# customized by: Andrew
# author: splondike

# Description: 
# Needed to use my own alphabet, instead of knauss

# What it does:
# Overrides a different list in a more specific context
# You can apply this same kind of process to overriding any other lists, captures, or actions. Just make the context matcher 'more specific' than the thing you're overriding. 



from talon import Context

ctx = Context()
ctx.matches = r"""
os: windows
"""

# default_alphabet = "arch bat cap drum each fine gust harp sit jury crunch look made near odd pit quench red sun trap urge vest whale plex yank zip".split(
#     " "
# )
default_alphabet = "air bat cap drum each fine gust harp sit john crunch look made near odd pit quiet red soap trap urge vest whale plex yank zip".split(
    " "
)
letters_string = "abcdefghijklmnopqrstuvwxyz"
alphabet = dict(zip(default_alphabet, letters_string))
ctx.lists["self.letter"] = alphabet