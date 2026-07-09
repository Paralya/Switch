
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the castagne translation functions at switch:modes/castagne/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/castagne/translations"

	# /start
	write_function(f"{path}/start", f"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Lancement de la Castagne dans 10 secondes, soyez le dernier en vie dans ce FFA sanglant !"}}]
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"ParalyaPvPNewFR","storage":"{ns}:main","interpret":true}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Launch of Castagne in 10 seconds, be the last one alive in this bloody FFA!"}}]
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"ParalyaPvPNewEN","storage":"{ns}:main","interpret":true}}]
""")
