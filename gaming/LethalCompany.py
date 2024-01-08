from talon import Module, Context

mod = Module()
mod.list("moons", desc="Lethal Company Moons")

ctx_default = Context()
ctx_default.lists["user.moons"] = {
    "company": "Company",
    "experimentation": "Experimentation",
    "assurance": "Assurance",
    "vow": "Vow",
    "offense": "Offense",
    "march": "March",
    "rend": "Rend",
    "dine": "Dine",
    "titan": "Titan"
}