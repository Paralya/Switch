
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function


def write_translations() -> None:
	""" Write the maps translation functions at switch:maps/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:maps/translations"

	# /storage_map_list_remove_from_storage (currently commented-out)
	write_function(f"{path}/storage_map_list_remove_from_storage", rf"""
# French
# execute unless data storage {ns}:main new[0] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\n",{{"nbt":"ParalyaWarning","storage":"{ns}:main","interpret":true}},{{"text":" Rafraichissement du cycle des maps pour le mode de jeu "}},{{"nbt":"current_game_name","storage":"{ns}:main","interpret":true,"color":"red"}},{{"text":" !\n"}}]

# English
# execute unless data storage {ns}:main new[0] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\n",{{"nbt":"ParalyaWarning","storage":"{ns}:main","interpret":true}},{{"text":" Refresh map cycle for game mode "}},{{"nbt":"current_game_name","storage":"{ns}:main","interpret":true,"color":"red"}},{{"text":"!\n"}}]
""")
