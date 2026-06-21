
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the protect_the_king translation functions at switch:modes/protect_the_king/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/protect_the_king/translations"

	# /detect_end
	write_function(f"{path}/detect_end", """
# French
execute if score #protect_the_king_seconds switch.data matches 900 if score #game_state switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, temps écoulé ! Aucun des camps n'est sorti vainqueur au bout de 15 minutes !"}]
execute if score #game_state switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"rouges","color":"red"},{"text":" ! GG à "},{"selector":"@a[tag=!detached,team=switch.temp.red_king]"},{"text":", "},{"selector":"@a[tag=!detached,gamemode=!spectator,team=switch.temp.red]"}]
execute if score #game_state switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"bleus","color":"blue"},{"text":" ! GG à "},{"selector":"@a[tag=!detached,team=switch.temp.blue_king]"},{"text":", "},{"selector":"@a[tag=!detached,gamemode=!spectator,team=switch.temp.blue]"}]
execute if score #game_state switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, aucun des camps n'est sorti vainqueur car il n'y a plus aucun joueur en vie !"}]

# English
execute if score #protect_the_king_seconds switch.data matches 900 if score #game_state switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, time up! Neither side is the winner after 15 minutes!"}]
execute if score #game_state switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, victory for "},{"text":"red","color":"red"},{"text":" team! GG to "},{"selector":"@a[tag=!detached,team=switch.temp.red_king]"},{"text":", "},{"selector":"@a[tag=!detached,gamemode=!spectator,team=switch.temp.red]"}]
execute if score #game_state switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, victory for "},{"text":"blue","color":"blue"},{"text":" team! GG to "},{"selector":"@a[tag=!detached,team=switch.temp.blue_king]"},{"text":", "},{"selector":"@a[tag=!detached,gamemode=!spectator,team=switch.temp.blue]"}]
execute if score #game_state switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, neither side has won because there are no players left alive!"}]
""")

	# /start
	write_function(f"{path}/start", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Protect The King, deux équipes s'affrontent et la partie se termine lorsqu'un des deux rois est tué !"}]
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"ParalyaPvPNewFR","storage":"switch:main","interpret":true}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Start the Protect The King game, two teams compete and the game ends when one of the two kings is killed!"}]
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"ParalyaPvPNewEN","storage":"switch:main","interpret":true}]
""")
