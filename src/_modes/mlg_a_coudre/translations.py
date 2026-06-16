
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the mlg_a_coudre translation functions at switch:modes/mlg_a_coudre/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/mlg_a_coudre/translations"

	# /death
	write_function(f"{path}/death", """
# French
execute if score @s switch.temp.lives matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" a raté son saut mais il lui reste une vie !"}]
execute if score @s switch.temp.lives matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" a raté son saut, il termine "},{"score":{"name":"#position","objective":"switch.data"}},{"text":"ème !"}]

# English
execute if score @s switch.temp.lives matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" missed a jump but has one life left!"}]
execute if score @s switch.temp.lives matches 0 if score #position switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" missed a jump, finishing "},{"score":{"name":"#position","objective":"switch.data"}},{"text":"nd!"}]
execute if score @s switch.temp.lives matches 0 if score #position switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" missed a jump, finishing "},{"score":{"name":"#position","objective":"switch.data"}},{"text":"rd!"}]
execute if score @s switch.temp.lives matches 0 if score #position switch.data matches 4.. run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" missed a jump, finishing "},{"score":{"name":"#position","objective":"switch.data"}},{"text":"th!"}]
""")

	# /done
	write_function(f"{path}/done", """
# French
execute if score #success switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"dark_gray"},{"text":" valide son saut."}]

# English
execute if score #success switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"dark_gray"},{"text":" validates a jump."}]
""")

	# /mlg_a_coudre
	write_function(f"{path}/mlg_a_coudre", """
# French
execute if score @s switch.temp.lives matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"green"},{"text":" vient de réussir un MLG à Coudre mais ne gagne pas d'Extra Life car il en a déjà 2 !"}]
execute if score @s switch.temp.lives matches ..1 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"green"},{"text":" vient de réussir un MLG à Coudre et gagne une Extra Life !"}]

# English
execute if score @s switch.temp.lives matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"green"},{"text":" has just closed a hole but doesn't win an Extra Life because he already has 2!"}]
execute if score @s switch.temp.lives matches ..1 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"green"},{"text":" has just closed a hole and won an Extra Life!"}]
""")

	# /process_end
	write_function(f"{path}/process_end", """
# French
execute if score #process_end switch.data matches 1 if score #position switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "},{"selector":"@a[scores={switch.temp.lives=1..}]"}]
execute if score #process_end switch.data matches 1 unless score #position switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Temps écoulé ! Il n'y a eu aucun gagnant ;("}]

# English
execute if score #process_end switch.data matches 1 if score #position switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" End of mini-game! The winner of the game is "},{"selector":"@a[scores={switch.temp.lives=1..}]"}]
execute if score #process_end switch.data matches 1 unless score #position switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Time up! There were no winners ;("}]
""")

	# /start
	write_function(f"{path}/start", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de MLG à Coudre, sautez et posez votre seau d'eau pour amortir votre chute !"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Starting the MLG à Coudre game, jump and put down your bucket of water to cancel your fall damages!"}]
""")
