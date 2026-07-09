
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_server_announce


def write_translations():
	""" Write the simultaneous_jump translation functions at switch:modes/simultaneous_jump/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/simultaneous_jump/translations"

	# /done
	write_function(f"{path}/done", f"""
# French
execute if score #points {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] [{{"selector":"@s","color":"green"}},{{"text":" valide son saut et fait "}},{{"score":{{"name":"#points","objective":"{ns}.data"}},"color":"aqua"}},{{"text":" point !"}}]
execute if score #points {ns}.data matches 2.. run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] [{{"selector":"@s","color":"green"}},{{"text":" valide son saut et fait "}},{{"score":{{"name":"#points","objective":"{ns}.data"}},"color":"aqua"}},{{"text":" points !"}}]

# English
execute if score #points {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] [{{"selector":"@s","color":"green"}},{{"text":" validates a jump and makes "}},{{"score":{{"name":"#points","objective":"{ns}.data"}},"color":"aqua"}},{{"text":" point!"}}]
execute if score #points {ns}.data matches 2.. run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] [{{"selector":"@s","color":"green"}},{{"text":" validates a jump and makes "}},{{"score":{{"name":"#points","objective":"{ns}.data"}},"color":"aqua"}},{{"text":" points!"}}]
""")

	# /start
	write_server_announce(f"{path}/start", "Lancement de la partie de Simultaneous Jump dans 5 secondes ! Comme le Dé à Coudre, vous devez marquer le plus de points en sautant dans des points d'eau encerclé de blocs, mais en même temps que tout le monde et avec le PvP d'activé !", "Simultaneous Jump game starts in 5 seconds! Like the Dé à Coudre, you have to score the most points by jumping into water spots surrounded by blocks, but at the same time as everyone else and with PvP enabled!")
