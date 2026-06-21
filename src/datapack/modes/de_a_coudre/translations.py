
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the de_a_coudre translation functions at switch:modes/de_a_coudre/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/de_a_coudre/translations"

	# /done
	write_function(f"{path}/done", """
# French
execute if score #points switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"green"},{"text":" valide son saut et fait "},{"score":{"name":"#points","objective":"switch.data"},"color":"aqua"},{"text":" point !"}]
execute if score #points switch.data matches 2.. run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"green"},{"text":" valide son saut et fait "},{"score":{"name":"#points","objective":"switch.data"},"color":"aqua"},{"text":" points !"}]

# English
execute if score #points switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"green"},{"text":" validates their jump and makes "},{"score":{"name":"#points","objective":"switch.data"},"color":"aqua"},{"text":" point!"}]
execute if score #points switch.data matches 2.. run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"green"},{"text":" validates their jump and makes "},{"score":{"name":"#points","objective":"switch.data"},"color":"aqua"},{"text":" points!"}]
""")

	# /new_round
	write_function(f"{path}/new_round", """
# French
execute unless score #rounds switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"Démarrage d'un nouveau round ! [","color":"yellow"},{"score":{"name":"#current_round","objective":"switch.data"},"color":"gold"},{"text":"/"},{"score":{"name":"#max_rounds","objective":"switch.data"},"color":"gold"},{"text":"]"}]

# English
execute unless score #rounds switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"Starting a new round! [","color":"yellow"},{"score":{"name":"#current_round","objective":"switch.data"},"color":"gold"},{"text":"/"},{"score":{"name":"#max_rounds","objective":"switch.data"},"color":"gold"},{"text":"]"}]
""")

	# /process_end
	write_function(f"{path}/process_end", """
# French
execute if score #process_end switch.data matches 1 if score #detect_end switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "},{"selector":"@a[tag=!detached,tag=switch.winner]"},{"text":" avec "},{"score":{"name":"#max","objective":"switch.data"},"color":"gold"},{"text":" points !"}]
execute if score #process_end switch.data matches 1 if score #detect_end switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Temps écoulé ! Il n'y a eu aucun gagnant ;("}]

# English
execute if score #process_end switch.data matches 1 if score #detect_end switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" End of mini-game! The winner of the game is "},{"selector":"@a[tag=!detached,tag=switch.winner]"},{"text":" with "},{"score":{"name":"#max","objective":"switch.data"},"color":"gold"},{"text":" points!"}]
execute if score #process_end switch.data matches 1 if score #detect_end switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Time up! There were no winners ;("}]
""")

	# /start
	write_function(f"{path}/start", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Dé à Coudre, marquez le maximum de points en sautant dans des points d'eau encerclé de blocs !"}]
tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"Démarrage d'un nouveau round ! [","color":"yellow"},{"text":"1","color":"gold"},{"text":"/"},{"score":{"name":"#max_rounds","objective":"switch.data"},"color":"gold"},{"text":"]"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Launching game of Dé à Coudre, score as many points as possible by jumping into water dots surrounded by blocks!"}]
tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"Starting a new round! [","color":"yellow"},{"text":"1","color":"gold"},{"text":"/"},{"score":{"name":"#max_rounds","objective":"switch.data"},"color":"gold"},{"text":"]"}]
""")
