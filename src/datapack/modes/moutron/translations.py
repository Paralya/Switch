
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_server_announce


def write_translations():
	""" Write the moutron translation functions at switch:modes/moutron/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/moutron/translations"

	# /death
	write_function(f"{path}/death", """
# French
execute if entity @s[gamemode=!spectator] unless entity @p[tag=switch.moutron_killer] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" s'est pris un mur, survivant ainsi "},{"score":{"name":"#moutron_seconds","objective":"switch.data"}},{"text":" secondes !"}]
execute if entity @s[gamemode=!spectator] if entity @p[tag=switch.moutron_killer] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" s'est mangé en pleine face la trainée de "},{"selector":"@p[tag=switch.moutron_killer]"},{"text":", survivant ainsi "},{"score":{"name":"#moutron_seconds","objective":"switch.data"}},{"text":" secondes !"}]

# English
execute if entity @s[gamemode=!spectator] unless entity @p[tag=switch.moutron_killer] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" ran into a wall, survived "},{"score":{"name":"#moutron_seconds","objective":"switch.data"}},{"text":" seconds!"}]
execute if entity @s[gamemode=!spectator] if entity @p[tag=switch.moutron_killer] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" got hit by "},{"selector":"@p[tag=switch.moutron_killer]"},{"text":"'s trail, survived "},{"score":{"name":"#moutron_seconds","objective":"switch.data"}},{"text":" seconds!"}]
""")

	# /second
	write_function(f"{path}/second", """
# French
execute if score #moutron_seconds switch.data matches -5 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"5","color":"red"}
execute if score #moutron_seconds switch.data matches -4 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"4","color":"red"}
execute if score #moutron_seconds switch.data matches -3 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"3","color":"red"}
execute if score #moutron_seconds switch.data matches -2 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"2","color":"red"}
execute if score #moutron_seconds switch.data matches -1 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"1","color":"red"}
execute if score #moutron_seconds switch.data matches 0 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"GO !","color":"red"}

# English
execute if score #moutron_seconds switch.data matches -5 run title @a[scores={switch.lang=1},tag=!detached] title {"text":"5","color":"red"}
execute if score #moutron_seconds switch.data matches -4 run title @a[scores={switch.lang=1},tag=!detached] title {"text":"4","color":"red"}
execute if score #moutron_seconds switch.data matches -3 run title @a[scores={switch.lang=1},tag=!detached] title {"text":"3","color":"red"}
execute if score #moutron_seconds switch.data matches -2 run title @a[scores={switch.lang=1},tag=!detached] title {"text":"2","color":"red"}
execute if score #moutron_seconds switch.data matches -1 run title @a[scores={switch.lang=1},tag=!detached] title {"text":"1","color":"red"}
execute if score #moutron_seconds switch.data matches 0 run title @a[scores={switch.lang=1},tag=!detached] title {"text":"GO !","color":"red"}
""")

	# /start
	write_server_announce(f"{path}/start", "Lancement de la partie de Moutron dans 10 secondes, chaque mouton va créer une trainée derrière lui et votre objectif est de survivre le plus longtemps en évitant tous les obstacles !", "Moutron game starts in 10 seconds, each sheep will create a trail behind it and your goal is to survive as long as possible by avoiding all obstacles!")

	# /tick
	write_function(f"{path}/tick", """
# French
title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Durée des trainées : ","color":"aqua"},{"score":{"name":"#temp","objective":"switch.data"},"color":"yellow"},{"text":"s","color":"aqua"}]

# English
title @a[scores={switch.lang=1},tag=!detached] actionbar [{"text":"Trail duration: ","color":"aqua"},{"score":{"name":"#temp","objective":"switch.data"},"color":"yellow"},{"text":"s","color":"aqua"}]
""")
