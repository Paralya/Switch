
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the castagne translation functions at switch:modes/castagne/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/castagne/translations"

	# /start
	write_function(f"{path}/start", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la Castagne dans 10 secondes, soyez le dernier en vie dans ce FFA sanglant !"}]
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"ParalyaPvPNewFR","storage":"switch:main","interpret":true}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Launch of Castagne in 10 seconds, be the last one alive in this bloody FFA!"}]
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"ParalyaPvPNewEN","storage":"switch:main","interpret":true}]
""")
