
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the simultaneous_jump translation functions at switch:modes/simultaneous_jump/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/simultaneous_jump/translations"

	# /done
	write_function(f"{path}/done", """
# French
execute if score #points switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"green"},{"text":" valide son saut et fait "},{"score":{"name":"#points","objective":"switch.data"},"color":"aqua"},{"text":" point !"}]
execute if score #points switch.data matches 2.. run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"green"},{"text":" valide son saut et fait "},{"score":{"name":"#points","objective":"switch.data"},"color":"aqua"},{"text":" points !"}]

# English
execute if score #points switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"green"},{"text":" validates a jump and makes "},{"score":{"name":"#points","objective":"switch.data"},"color":"aqua"},{"text":" point!"}]
execute if score #points switch.data matches 2.. run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"green"},{"text":" validates a jump and makes "},{"score":{"name":"#points","objective":"switch.data"},"color":"aqua"},{"text":" points!"}]
""")

	# /start
	write_function(f"{path}/start", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Simultaneous Jump dans 5 secondes ! Comme le Dé à Coudre, vous devez marquer le plus de points en sautant dans des points d'eau encerclé de blocs, mais en même temps que tout le monde et avec le PvP d'activé !"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Simultaneous Jump game starts in 5 seconds! Like the Dé à Coudre, you have to score the most points by jumping into water spots surrounded by blocks, but at the same time as everyone else and with PvP enabled!"}]
""")
