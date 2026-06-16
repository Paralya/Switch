
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the memory_mine translation functions at switch:modes/memory_mine/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/memory_mine/translations"

	# /death
	write_function(f"{path}/death", """
# French
execute if entity @s[gamemode=!spectator] unless entity @p[tag=switch.owner] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" est mort, survivant "},{"score":{"name":"#memory_mine_seconds","objective":"switch.data"}},{"text":" secondes !"}]
execute if entity @s[gamemode=!spectator] if entity @p[tag=switch.owner] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" a marché sur la mine de "},{"selector":"@p[tag=switch.owner]"},{"text":", survivant donc "},{"score":{"name":"#memory_mine_seconds","objective":"switch.data"}},{"text":" secondes !"}]

# English
execute if entity @s[gamemode=!spectator] unless entity @p[tag=switch.owner] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" died, surviving for "},{"score":{"name":"#memory_mine_seconds","objective":"switch.data"}},{"text":" seconds!"}]
execute if entity @s[gamemode=!spectator] if entity @p[tag=switch.owner] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" stepped on "},{"selector":"@p[tag=switch.owner]"},{"text":"'s mine, surviving for "},{"score":{"name":"#memory_mine_seconds","objective":"switch.data"}},{"text":" seconds!"}]
""")

	# /start
	write_function(f"{path}/start", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Memory Mine dans 5 secondes, votre objectif est de rejoindre le cercle à chaque fois qu'il apparaît et d'éviter les mines que vous ou les autres joueurs posent !"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Memory Mine game starts in 5 seconds, your objective is to reach the circle each time it appears and avoid the mines you or the other players lay!"}]
""")
