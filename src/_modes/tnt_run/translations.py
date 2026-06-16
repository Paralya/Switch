
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the tnt_run translation functions at switch:modes/tnt_run/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/tnt_run/translations"

	# /death
	write_function(f"{path}/death", """
# French
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" est mort, il a survécu "},{"score":{"name":"#tnt_run_seconds","objective":"switch.data"}},{"text":" secondes !"}]

# English
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" died, survived "},{"score":{"name":"#tnt_run_seconds","objective":"switch.data"}},{"text":" seconds!"}]
""")

	# /second
	write_function(f"{path}/second", """
# French
execute if score #tnt_run_seconds switch.data matches -5 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"5","color":"red"}
execute if score #tnt_run_seconds switch.data matches -4 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"4","color":"red"}
execute if score #tnt_run_seconds switch.data matches -3 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"3","color":"red"}
execute if score #tnt_run_seconds switch.data matches -2 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"2","color":"red"}
execute if score #tnt_run_seconds switch.data matches -1 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"1","color":"red"}
execute if score #tnt_run_seconds switch.data matches 0 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"GO !","color":"red"}

# English
execute if score #tnt_run_seconds switch.data matches -5 run title @a[scores={switch.lang=1},tag=!detached] title {"text":"5","color":"red"}
execute if score #tnt_run_seconds switch.data matches -4 run title @a[scores={switch.lang=1},tag=!detached] title {"text":"4","color":"red"}
execute if score #tnt_run_seconds switch.data matches -3 run title @a[scores={switch.lang=1},tag=!detached] title {"text":"3","color":"red"}
execute if score #tnt_run_seconds switch.data matches -2 run title @a[scores={switch.lang=1},tag=!detached] title {"text":"2","color":"red"}
execute if score #tnt_run_seconds switch.data matches -1 run title @a[scores={switch.lang=1},tag=!detached] title {"text":"1","color":"red"}
execute if score #tnt_run_seconds switch.data matches 0 run title @a[scores={switch.lang=1},tag=!detached] title {"text":"GO !","color":"red"}
""")

	# /start
	write_function(f"{path}/start", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de TNT Run dans 10 secondes, ne vous arrêtez pas de courir car les blocs sous vos pieds vont disparaitre en continu !"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" TNT Run game starts in 10 seconds, don't stop running because the blocks under your feet will disappear continuously!"}]
""")
