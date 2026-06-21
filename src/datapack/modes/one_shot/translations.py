
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the one_shot translation functions at switch:modes/one_shot/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/one_shot/translations"

	# /process_end
	write_function(f"{path}/process_end", """
# French
execute if score #process_end switch.data matches 1 as @a[tag=!detached,scores={switch.temp.kills=18..}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "},{"selector":"@s"}]
execute if score #process_end switch.data matches 1 unless entity @a[tag=!detached,scores={switch.temp.kills=18..}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Il n'y a eu aucun gagnant ;("}]

# English
execute if score #process_end switch.data matches 1 as @a[tag=!detached,scores={switch.temp.kills=18..}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" End of mini-game! The winner of the game is "},{"selector":"@s"}]
execute if score #process_end switch.data matches 1 unless entity @a[tag=!detached,scores={switch.temp.kills=18..}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" There were no winners ;("}]
""")

	# /second
	write_function(f"{path}/second", r"""
# French
execute if score #one_shot_seconds switch.data matches 4 if score #TEAM_ONESHOT switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"One Shot","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"(1 partie sur 2)","italic":true,"color":"gray"},{"text":" Le jeu se déroulera en ","color":"white"},{"text":"équipes","underlined":true,"color":"white"},{"text":" !\n","color":"white"}]
execute if score #one_shot_seconds switch.data matches 8 if score #TEAM_ONESHOT switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"One Shot","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"(1 partie sur 2)","italic":true,"color":"gray"},{"text":" Le jeu se déroulera en ","color":"white"},{"text":"équipes","underlined":true,"color":"white"},{"text":" !\n","color":"white"}]
title @a[scores={switch.lang=0},tag=!detached,gamemode=spectator] actionbar [{"text":"Temps restant : ","color":"gray"},{"score":{"name":"#mins","objective":"switch.data"},"color":"white"},{"text":"m"},{"score":{"name":"#secs","objective":"switch.data"},"color":"white"},{"text":"s"}]
title @a[scores={switch.lang=0},tag=!detached,gamemode=!spectator] actionbar {"text":"Attention : PVP 1.8","color":"dark_aqua"}

# English
execute if score #one_shot_seconds switch.data matches 4 if score #TEAM_ONESHOT switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"One Shot","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"(1 of 2 games)","italic":true,"color":"gray"},{"text":" The game will be played in ","color":"white"},{"text":"teams","underlined":true,"color":"white"},{"text":"!\n","color":"white"}]
execute if score #one_shot_seconds switch.data matches 8 if score #TEAM_ONESHOT switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"One Shot","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"(1 of 2 games)","italic":true,"color":"gray"},{"text":" The game will be played in ","color":"white"},{"text":"teams","underlined":true,"color":"white"},{"text":"!\n","color":"white"}]
title @a[scores={switch.lang=1},tag=!detached,gamemode=spectator] actionbar [{"text":"Time remaining: ","color":"gray"},{"score":{"name":"#mins","objective":"switch.data"},"color":"white"},{"text":"m"},{"score":{"name":"#secs","objective":"switch.data"},"color":"white"},{"text":"s"}]
title @a[scores={switch.lang=1},tag=!detached,gamemode=!spectator] actionbar {"text":"Careful: PVP 1.8","color":"dark_aqua"}
""")

	# /start
	write_function(f"{path}/start", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de One Shot dans 6 secondes, soyez le premier à atteindre l'objectif de kills !"}]
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"ParalyaPvPOldFR","storage":"switch:main","interpret":true}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" One Shot game starts in 6 seconds, be the first to reach the kill goal!"}]
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"ParalyaPvPOldEN","storage":"switch:main","interpret":true}]
""")
