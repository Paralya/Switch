
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the panic_chase translation functions at switch:modes/panic_chase/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/panic_chase/translations"

	# /detect_end
	write_function(f"{path}/detect_end", """
# French
execute if score #remaining_time switch.data matches 0 if score #game_state switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, temps écoulé ! Victoire des "},{"text":"souris","color":"blue"},{"text":" ! GG à "},{"selector":"@a[tag=!detached,gamemode=!spectator,team=switch.temp.mouse]"}]
execute if score #game_state switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"chasseurs","color":"red"},{"text":" ! GG à "},{"selector":"@a[tag=!detached,gamemode=!spectator,team=switch.temp.hunter]"}]
execute if score #game_state switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, plus aucun chasseur en vie donc victoire des "},{"text":"souris","color":"blue"},{"text":" ! GG à "},{"selector":"@a[tag=!detached,gamemode=!spectator,team=switch.temp.mouse]"}]
execute if score #game_state switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, aucun des camps n'est sorti vainqueur car il n'y a plus aucun joueur en vie !"}]

# English
execute if score #remaining_time switch.data matches 0 if score #game_state switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, time up! Victory for "},{"text":"mouse","color":"blue"},{"text":"! GG to "},{"selector":"@a[tag=!detached,gamemode=!spectator,team=switch.temp.mouse]"}]
execute if score #game_state switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, victory for "},{"text":"hunters","color":"red"},{"text":"! GG to "},{"selector":"@a[tag=!detached,gamemode=!spectator,team=switch.temp.hunter]"}]
execute if score #game_state switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, no hunter left alive so victory for the "},{"text":"mouse","color":"blue"},{"text":" team! GG to "},{"selector":"@a[tag=!detached,gamemode=!spectator,team=switch.temp.mouse]"}]
execute if score #game_state switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, neither side has won because there are no players left alive!"}]
""")

	# /second
	write_function(f"{path}/second", """
# French
execute if score #remaining_time switch.data matches 0.. run title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Temps restant : ","color":"aqua"},{"score":{"name":"#minute","objective":"switch.data"},"color":"yellow"},{"text":"m"},{"score":{"name":"#second","objective":"switch.data"},"color":"yellow"},{"text":"s"}]

# English
execute if score #remaining_time switch.data matches 0.. run title @a[scores={switch.lang=1},tag=!detached] actionbar [{"text":"Time remaining: ","color":"aqua"},{"score":{"name":"#minute","objective":"switch.data"},"color":"yellow"},{"text":"m"},{"score":{"name":"#second","objective":"switch.data"},"color":"yellow"},{"text":"s"}]
""")

	# /start
	write_function(f"{path}/start", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Panic Chase, libération des chasseurs dans 30 secondes ! Les souris doivent échapper aux chasseurs jusqu'à la fin du temps imparti alors que les chasseurs doivent les chasser !"}]
tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"Attention, les souris ne peuvent pas taper les chasseurs !","color":"yellow"}]
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"ParalyaPvPNewFR","storage":"switch:main","interpret":true}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Panic Chase game launched, hunters will be free in 30 seconds! The mouse must escape from the hunters until the time runs out, while the hunters must chase them away!"}]
tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"Careful, the mouses can't hit the hunters!","color":"yellow"}]
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"ParalyaPvPNewEN","storage":"switch:main","interpret":true}]
""")
