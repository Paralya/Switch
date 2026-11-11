
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the warden_escape translation functions at switch:modes/warden_escape/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/warden_escape/translations"

	# /death
	write_function(f"{path}/death", f"""
# French
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] [{{"selector":"@s","color":"red"}},{{"text":" est mort, il a survécu "}},{{"score":{{"name":"#warden_escape_seconds","objective":"{ns}.data"}}}},{{"text":" secondes !"}}]

# English
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] [{{"selector":"@s","color":"red"}},{{"text":" died, survived "}},{{"score":{{"name":"#warden_escape_seconds","objective":"{ns}.data"}}}},{{"text":" seconds!"}}]
""")

