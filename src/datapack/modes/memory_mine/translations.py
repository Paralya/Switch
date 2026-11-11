
# Imports
from stewbeet import Mem, write_function


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

