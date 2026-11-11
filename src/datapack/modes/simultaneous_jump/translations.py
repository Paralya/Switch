
# Imports
from stewbeet import Mem, write_function


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

