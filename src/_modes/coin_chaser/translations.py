
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the coin_chaser translation functions at switch:modes/coin_chaser/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/coin_chaser/translations"

	# /start
	write_function(f"{path}/start", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Coin Chaser dans 10 secondes, collectez le plus d'or dans le temps imparti grâce à vos ailes et votre équipement tridimensionnel !"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Coin Chaser game starts in 10 seconds, collect the most gold in the allotted time with your wings and three-dimensional maneuver gear!"}]
""")
