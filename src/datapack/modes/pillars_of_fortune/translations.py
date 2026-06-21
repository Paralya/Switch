
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the pillars_of_fortune translation functions at switch:modes/pillars_of_fortune/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/pillars_of_fortune/translations"

	# /second
	write_function(f"{path}/second", """
# French
title @a[scores={switch.lang=0},tag=!detached,gamemode=spectator] actionbar [{"text":"Temps restant : ","color":"gray"},{"score":{"name":"#mins","objective":"switch.data"},"color":"white"},{"text":"m"},{"score":{"name":"#secs","objective":"switch.data"},"color":"white"},{"text":"s"}]
title @a[scores={switch.lang=0},tag=!detached,gamemode=!spectator] actionbar {"text":"Attention : PVP 1.9+","color":"red"}
execute if score #pillars_of_fortune_seconds switch.data matches 180 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Trois minutes sont passées, les joueurs vont échanger leur position toutes les minutes !","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 50 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Échange des positions dans 5 secondes !","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 51 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Échange des positions dans 4 secondes !","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 52 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Échange des positions dans 3 secondes !","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 53 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Échange des positions dans 2 secondes !","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 54 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Échange des positions dans 1 seconde !","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 55 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Échange effectué !","color":"yellow"}

# English
title @a[scores={switch.lang=1},tag=!detached,gamemode=spectator] actionbar [{"text":"Time remaining: ","color":"gray"},{"score":{"name":"#mins","objective":"switch.data"},"color":"white"},{"text":"m"},{"score":{"name":"#secs","objective":"switch.data"},"color":"white"},{"text":"s"}]
title @a[scores={switch.lang=1},tag=!detached,gamemode=!spectator] actionbar {"text":"Careful: PVP 1.9+","color":"red"}
execute if score #pillars_of_fortune_seconds switch.data matches 180 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"Three minutes have passed, players will swap their positions every minute!","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 50 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"Swapping positions in 5 seconds!","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 51 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"Swapping positions in 4 seconds!","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 52 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"Swapping positions in 3 seconds!","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 53 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"Swapping positions in 2 seconds!","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 54 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"Swapping positions in 1 second!","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 55 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"Swapping done!","color":"yellow"}
""")

	# /start
	write_function(f"{path}/start", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de Pillars of Fortune dans 5 secondes, soyez le dernier en vie dans ce FFA sanglant !"}]
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"ParalyaPvPNewFR","storage":"switch:main","interpret":true}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Launch of Pillars of Fortune in 5 seconds, be the last one alive in this bloody FFA!"}]
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"ParalyaPvPNewEN","storage":"switch:main","interpret":true}]
""")
