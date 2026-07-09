
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_server_announce


def write_translations():
	""" Write the memory_mine translation functions at switch:modes/memory_mine/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/memory_mine/translations"

	# /death
	write_function(f"{path}/death", f"""
# French
execute if entity @s[gamemode=!spectator] unless entity @p[tag={ns}.owner] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] [{{"selector":"@s","color":"red"}},{{"text":" est mort, survivant "}},{{"score":{{"name":"#memory_mine_seconds","objective":"{ns}.data"}}}},{{"text":" secondes !"}}]
execute if entity @s[gamemode=!spectator] if entity @p[tag={ns}.owner] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] [{{"selector":"@s","color":"red"}},{{"text":" a marché sur la mine de "}},{{"selector":"@p[tag={ns}.owner]"}},{{"text":", survivant donc "}},{{"score":{{"name":"#memory_mine_seconds","objective":"{ns}.data"}}}},{{"text":" secondes !"}}]

# English
execute if entity @s[gamemode=!spectator] unless entity @p[tag={ns}.owner] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] [{{"selector":"@s","color":"red"}},{{"text":" died, surviving for "}},{{"score":{{"name":"#memory_mine_seconds","objective":"{ns}.data"}}}},{{"text":" seconds!"}}]
execute if entity @s[gamemode=!spectator] if entity @p[tag={ns}.owner] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] [{{"selector":"@s","color":"red"}},{{"text":" stepped on "}},{{"selector":"@p[tag={ns}.owner]"}},{{"text":"'s mine, surviving for "}},{{"score":{{"name":"#memory_mine_seconds","objective":"{ns}.data"}}}},{{"text":" seconds!"}}]
""")

	# /start
	write_server_announce(f"{path}/start", "Lancement de la partie de Memory Mine dans 5 secondes, votre objectif est de rejoindre le cercle à chaque fois qu'il apparaît et d'éviter les mines que vous ou les autres joueurs posent !", "Memory Mine game starts in 5 seconds, your objective is to reach the circle each time it appears and avoid the mines you or the other players lay!")
