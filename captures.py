from talon import Module

mod = Module()

@mod.capture(rule="(long|longer|longest|again)")
def thing_length(m) -> str:
    if "longest" in m:
        return 3
    if "longer" in m:
        return 2
    elif 'long' in m:
        return 1
    elif 'again' in m:
        return 1
    else:
        return 0

# @mod.action_class
# class SomeActionsClass:
#     def use_thing_length(length: str):
