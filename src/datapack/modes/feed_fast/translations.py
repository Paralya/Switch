
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the feed_fast translation functions at switch:modes/feed_fast/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/feed_fast/translations"

	# /record_tellraw  (macro: the record standing when the game starts)
	write_function(f"{path}/record_tellraw", f"""
# French
$tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Record actuel de $(points) points détenu par $(player)","color":"yellow"}}]

# English
$tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Current record of $(points) points held by $(player)","color":"yellow"}}]
""")

	# /record_new  (macro: the record that was just beaten)
	write_function(f"{path}/record_new", f"""
# French
$tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Nouveau record de $(points) points par $(player) !","color":"yellow"}}]

# English
$tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" New record of $(points) points by $(player)!","color":"yellow"}}]
""")

