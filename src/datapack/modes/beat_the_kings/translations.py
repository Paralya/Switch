
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the beat_the_kings translation functions at switch:modes/beat_the_kings/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/beat_the_kings/translations"

	# /start
	write_function(f"{path}/start", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Beat The Kings dans 15 secondes !\\nLes rois sont moins nombreux mais plus puissants que les civils et les deux équipes doivent s'affronter pour exterminer l'équipe ennemie !"}]
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"ParalyaPvPOldFR","storage":"switch:main","interpret":true}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Beat The Kings game starts in 15 seconds!\\nThe kings are fewer in number but more powerful than the civilians, and the two teams must compete to exterminate the enemy team!"}]
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"ParalyaPvPOldEN","storage":"switch:main","interpret":true}]
""")

	# /second
	write_function(f"{path}/second", """
# French
execute if score #beat_the_kings_seconds switch.data matches 30 run tellraw @a[scores={switch.lang=0},tag=!detached,team=switch.temp.king] ["",{"nbt":"ParalyaAstuceFR","storage":"switch:main","interpret":true},{"text":" Utilisez votre arc pour drainer la vie des joueurs !"}]

# English
execute if score #beat_the_kings_seconds switch.data matches 30 run tellraw @a[scores={switch.lang=1},tag=!detached,team=switch.temp.king] ["",{"nbt":"ParalyaAstuceEN","storage":"switch:main","interpret":true},{"text":" Use your bow to drain players' health!"}]
function switch:translations/common/basic_actionbar
""")

	# /detect_end
	write_function(f"{path}/detect_end", """
# French
execute if score #beat_the_kings_seconds switch.data matches 900 if score #game_state switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, temps écoulé ! Aucun des camps n'est sorti vainqueur au bout de 10 minutes !"}]
execute if score #game_state switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"civils","color":"green"},{"text":" ! GG à "},{"selector":"@a[scores={switch.alive=1..},team=switch.temp.civil]"}]
execute if score #game_state switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"kings","color":"yellow"},{"text":" ! GG à "},{"selector":"@a[scores={switch.alive=1..},team=switch.temp.king]"}]
execute if score #game_state switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, aucun des camps n'est sorti vainqueur car il n'y a plus aucun joueur en vie !"}]

# English
execute if score #beat_the_kings_seconds switch.data matches 900 if score #game_state switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, time up! Neither side is the winner after 10 minutes!"}]
execute if score #game_state switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, victory for "},{"text":"civilians","color":"green"},{"text":"! GG to "},{"selector":"@a[scores={switch.alive=1..},team=switch.temp.civil]"}]
execute if score #game_state switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, victory for "},{"text":"kings","color":"yellow"},{"text":"! GG to "},{"selector":"@a[scores={switch.alive=1..},team=switch.temp.king]"}]
execute if score #game_state switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, neither side has won because there are no players left alive!"}]
""")

	# /roles/announcement
	write_function(f"{path}/roles_announcement", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached,team=switch.temp.civil] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous êtes "},{"text":"civil","color":"green"},{"text":" ! Vous devez trouver tous les kings et leur faire cracher leur entrailles pour gagner la partie !"}]
tellraw @a[scores={switch.lang=0},tag=!detached,team=switch.temp.king] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous êtes un "},{"text":"king","color":"yellow"},{"text":" ! Votre objectif est d'exterminer tous les civils afin de contrôler le serveur ! Pour cela, vous êtes incivil permanent !"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached,team=switch.temp.civil] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" You are "},{"text":"civil","color":"green"},{"text":"! You must find all the kings and make them spit out their entrails to win the game!"}]
tellraw @a[scores={switch.lang=1},tag=!detached,team=switch.temp.king] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" You're a "},{"text":"king","color":"yellow"},{"text":"! Your goal is to exterminate all civilians in order to control the server! To achieve this, you are permanently uncivil!"}]
""")
