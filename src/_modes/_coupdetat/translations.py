
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the _coupdetat translation functions at switch:modes/_coupdetat/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/_coupdetat/translations"

	# /process_end
	write_function(f"{path}/process_end", r"""
# French
execute if score #detect_end switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Stupéfaction ! ","color":"green"},{"selector":"@s","color":"aqua"},{"text":" a réussi son coup d'état pour lancer le mini-jeu ","color":"green"},{"nbt":"coupdetat.name_fr","storage":"switch:main","interpret":true,"color":"yellow"},{"text":" !\n","color":"green"}]
execute if score #detect_end switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"aqua"},{"text":" a raté son coup d'état ! Il est mort au combat et a perdu ses 100","color":"red"},{"nbt":"SapphireFR","storage":"switch:main","interpret":true},{"text":" investis...\n","color":"red"}]
execute if score #detect_end switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"aqua"},{"text":" a raté son coup d'état ! Il a manqué de temps et a perdu ses 100","color":"red"},{"nbt":"SapphireFR","storage":"switch:main","interpret":true},{"text":" investis...\n","color":"red"}]

# English
execute if score #detect_end switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Stupefaction! ","color":"green"},{"selector":"@s","color":"aqua"},{"text":" successfully completed their coup d'état to launch the minigame ","color":"green"},{"nbt":"coupdetat.name_en","storage":"switch:main","interpret":true,"color":"yellow"},{"text":"!\n","color":"green"}]
execute if score #detect_end switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"aqua"},{"text":" failed their coup d'état! They died in battle and lost their 100","color":"red"},{"nbt":"SapphireEN","storage":"switch:main","interpret":true},{"text":" invested...\n","color":"red"}]
execute if score #detect_end switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"aqua"},{"text":" failed their coup d'état! They ran out of time and lost their 100","color":"red"},{"nbt":"SapphireEN","storage":"switch:main","interpret":true},{"text":" invested...\n","color":"red"}]
""")

	# /start
	write_function(f"{path}/start", r"""
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"aqua"},{"text":" a eu l'audace de démarrer son coup d'état pour lancer le mini-jeu "},{"nbt":"coupdetat.name_fr","storage":"switch:main","interpret":true,"color":"yellow"},{"text":" ! Va-t-il réussir à battre le dictateur en moins de 50 secondes ?!\n"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"aqua"},{"text":" had the audacity to start their coup d'état to launch the minigame "},{"nbt":"coupdetat.name_en","storage":"switch:main","interpret":true,"color":"yellow"},{"text":"! Will they succeed in defeating the dictator in under 50 seconds?!\n"}]
""")

	# /tick
	write_function(f"{path}/tick", r"""
# French
title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Temps restant : ","color":"aqua"},{"score":{"name":"#remaining_seconds","objective":"switch.data"},"color":"yellow"},{"text":"s"}]

# English
title @a[scores={switch.lang=1},tag=!detached] actionbar [{"text":"Remaining time: ","color":"aqua"},{"score":{"name":"#remaining_seconds","objective":"switch.data"},"color":"yellow"},{"text":"s"}]
""")
