
# Imports
from stewbeet import write_function


def write_translations() -> None:
	""" Write the maps translation functions at switch:maps/translations/* """
	path: str = "switch:maps/translations"

	# /storage_map_list_remove_from_storage (currently commented-out)
	write_function(f"{path}/storage_map_list_remove_from_storage", r"""
# French
# execute unless data storage switch:main new[0] run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Rafraichissement du cycle des maps pour le mode de jeu "},{"nbt":"current_game_name","storage":"switch:main","interpret":true,"color":"red"},{"text":" !\n"}]

# English
# execute unless data storage switch:main new[0] run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Refresh map cycle for game mode "},{"nbt":"current_game_name","storage":"switch:main","interpret":true,"color":"red"},{"text":"!\n"}]
""")
