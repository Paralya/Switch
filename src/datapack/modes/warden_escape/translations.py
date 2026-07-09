
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_server_announce


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

	# /start
	write_server_announce(f"{path}/start", "Lancement de la partie de Warden Escape dans 10 secondes, vous devez rester discrets afin de ne pas être pris pour cible par les Wardens !", "Warden Escape game starts in 10 seconds, you must be discreet to avoid being targeted by the Wardens!")
