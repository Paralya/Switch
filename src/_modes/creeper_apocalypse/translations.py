
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the creeper_apocalypse translation functions at switch:modes/creeper_apocalypse/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/creeper_apocalypse/translations"

	# /death
	write_function(f"{path}/death", """
# French
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" est mort, il a survécu "},{"score":{"name":"#creeper_apocalypse_seconds","objective":"switch.data"}},{"text":" secondes !"}]

# English
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" died, survived "},{"score":{"name":"#creeper_apocalypse_seconds","objective":"switch.data"}},{"text":" seconds!"}]
""")

	# /start
	write_function(f"{path}/start", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Creeper Apocalypse dans 5 secondes, survivez faces aux creepers qui se dupliquent sans cesse !"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Creeper Apocalypse game starts in 5 seconds, survive the ever duplicating creepers!"}]
""")

	# /tick
	write_function(f"{path}/tick", """
# French
title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Creepers : ","color":"dark_green"},{"score":{"name":"#creeper_count","objective":"switch.data"},"color":"green"},{"text":", Temps restant : "},{"score":{"name":"#remaining_time","objective":"switch.data"},"color":"green"},{"text":"s","color":"dark_green"}]

# English
title @a[scores={switch.lang=1},tag=!detached] actionbar [{"text":"Creepers: ","color":"dark_green"},{"score":{"name":"#creeper_count","objective":"switch.data"},"color":"green"},{"text":", Time remaining: "},{"score":{"name":"#remaining_time","objective":"switch.data"},"color":"green"},{"text":"s","color":"dark_green"}]
""")
