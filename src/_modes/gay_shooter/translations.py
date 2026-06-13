
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the gay_shooter translation functions at switch:modes/gay_shooter/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/gay_shooter/translations"

	# /detect_end
	write_function(f"{path}/detect_end", """
# French
execute if score #gay_shooter_seconds switch.data matches 300 if score #game_state switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, temps écoulé ! Aucun des camps n'est sorti vainqueur au bout de 10 minutes !"}]
execute if score #game_state switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"guys","color":"light_purple"},{"text":" ! GG à "},{"selector":"@a[tag=!detached,gamemode=adventure,team=switch.temp.gays]"}]
execute if score #game_state switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"shooters","color":"gray"},{"text":" ! GG à "},{"selector":"@a[tag=!detached,gamemode=adventure,team=switch.temp.shooters]"}]
execute if score #game_state switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, aucun des camps n'est sorti vainqueur car il n'y a plus aucun joueur en vie !"}]
execute if score #game_state switch.data matches 4 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, temps écoulé ! Victoire des shooters ("},{"selector":"@a[tag=!detached,gamemode=adventure,team=switch.temp.shooters]"},{"text":") !"}]

# English
execute if score #gay_shooter_seconds switch.data matches 300 if score #game_state switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, time's up! Neither side is the winner after 10 minutes!"}]
execute if score #game_state switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, victory of the "},{"text":"guys","color":"light_purple"},{"text":"! Good Game to "},{"selector":"@a[tag=!detached,gamemode=adventure,team=switch.temp.gays]"}]
execute if score #game_state switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, victory of the "},{"text":"shooters","color":"gray"},{"text":"! Good Game to "},{"selector":"@a[tag=!detached,gamemode=adventure,team=switch.temp.shooters]"}]
execute if score #game_state switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, neither side is the winner as there are no players left alive!"}]
execute if score #game_state switch.data matches 4 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, time up! Shooters win ("},{"selector":"@a[tag=!detached,gamemode=adventure,team=switch.temp.shooters]"},{"text":")!"}]
""")

	# /start
	write_function(f"{path}/start", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Guy Shooter, les tireurs doivent empêcher les coureurs de grimper la tour !"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Starting the Guy Shooter game, the shooters must stop the runners from climbing the tower!"}]
""")

	# /xp_bar
	write_function(f"{path}/xp_bar", """
# French
title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Temps restant : ","color":"aqua"},{"score":{"name":"#remaining_time","objective":"switch.data"},"color":"yellow"},{"text":"s","color":"aqua"}]

# English
title @a[scores={switch.lang=1},tag=!detached] actionbar [{"text":"Time remaining: ","color":"aqua"},{"score":{"name":"#remaining_time","objective":"switch.data"},"color":"yellow"},{"text":"s","color":"aqua"}]
""")
