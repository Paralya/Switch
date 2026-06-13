
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the feed_fast translation functions at switch:modes/feed_fast/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/feed_fast/translations"

	# /start
	write_function(f"{path}/start", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Feed Fast dans 5 secondes, mangez les nourritures les plus rassasiantes pour marquer le maximum de points !"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Feed Fast game starts in 5 seconds, eat the most satiating foods to score maximum points!"}]
""")
