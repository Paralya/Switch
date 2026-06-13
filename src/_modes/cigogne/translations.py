
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the cigogne translation functions at switch:modes/cigogne/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/cigogne/translations"

	# /start
	write_function(f"{path}/start", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de Cigogne dans 10 secondes, vous êtes invisibles et votre objectif est de tuer tous les autres joueurs ! Des particules d'eau apparaissent sous vos pieds si vous ne sneakez pas, et vous obtenez l'effet glowing si vous sneakez pendant 5 secondes de suite !"}]
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"ParalyaPvPOldFR","storage":"switch:main","interpret":true}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Launch of Cigogne in 10 seconds, you're invisible and your aim is to kill all the other players! Water particles appear under your feet if you don't sneak, and you get the glowing effect if you sneak for 5 seconds in a row!"}]
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"ParalyaPvPOldEN","storage":"switch:main","interpret":true}]
""")

	# /tick
	write_function(f"{path}/tick", """
# French
execute as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.sneak=..99,switch.lang=0}] run title @s actionbar [{"text":"Accroupi → Brillance : ","color":"aqua"},{"score":{"name":"@s","objective":"switch.temp.sneak"},"color":"yellow"},{"text":"/100","color":"yellow"}]
execute as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.sneak=100,switch.lang=0}] run title @s actionbar [{"text":"Relâche SHIFT maintenant !","color":"red"}]

# English
execute as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.sneak=..99,switch.lang=1}] run title @s actionbar [{"text":"Sneak → Glow: ","color":"aqua"},{"score":{"name":"@s","objective":"switch.temp.sneak"},"color":"yellow"},{"text":"/100","color":"yellow"}]
execute as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.sneak=100,switch.lang=1}] run title @s actionbar [{"text":"Release SHIFT now!","color":"red"}]
""")
