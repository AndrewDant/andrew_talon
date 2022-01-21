from talon import Module

mod = Module()

@mod.capture(rule="(long|longer)")
def thing_length(m) -> str:
    if "longer" in m:
        return 2
    elif 'long' in m:
        return 1
    else:
        return 0

# @mod.action_class
# class SomeActionsClass:
#     def use_thing_length(length: str):
