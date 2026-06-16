
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the snowball_painter translation functions at switch:modes/snowball_painter/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/snowball_painter/translations"

	# /start
	write_function(f"{path}/start", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Snowball Painter dans 5 secondes, un tableau est présent et vous devez être le joueur ayant peint le plus à la fin du temps imparti !"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Snowball Painter game starts in 5 seconds, there is a painting and you must be the player who has painted the most by the end of the time limit!"}]
""")
