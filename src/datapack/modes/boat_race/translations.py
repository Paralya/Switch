
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_server_announce


def write_translations():
	""" Write the boat_race translation functions at switch:modes/boat_race/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/boat_race/translations"

	# /start
	write_server_announce(f"{path}/start", "Lancement de la partie de Boat Race. Vous avez 8 secondes pour placer votre bateau et y rentrer ainsi que 8 minutes maximum pour finir la course !", "Start the Boat Race game. You have 8 seconds to get your boat in and out, and a maximum of 8 minutes to finish the race!")

	# /second
	write_function(f"{path}/second", f"""
# French
execute if score #boat_race_seconds {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Ouverture de la barrière ! GOOOOOO !"}}]

# English
execute if score #boat_race_seconds {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Gate opening! GOOOOOO!"}}]
""")

	# /finish
	write_function(f"{path}/finish", f"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Le joueur "}},{{"selector":"@s","color":"yellow"}},{{"text":" a fini la course, il a effectué un temps de "}},{{"score":{{"name":"#minutes","objective":"{ns}.data"}},"color":"aqua"}},{{"text":"m"}},{{"score":{{"name":"#seconds","objective":"{ns}.data"}},"color":"aqua"}},{{"text":"s !"}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" The player "}},{{"selector":"@s","color":"yellow"}},{{"text":" finished the race, he clocked a time of "}},{{"score":{{"name":"#minutes","objective":"{ns}.data"}},"color":"aqua"}},{{"text":"m"}},{{"score":{{"name":"#seconds","objective":"{ns}.data"}},"color":"aqua"}},{{"text":"s!"}}]
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
# French
execute if score #process_end {ns}.data matches 1 if entity @a[scores={{{ns}.alive=-1}}] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin du mini-jeu ! Les joueurs suivants ont remporté la partie : "}},{{"selector":"@a[scores={{{ns}.alive=-1}},sort=random]"}}]
execute if score #process_end {ns}.data matches 1 unless entity @a[scores={{{ns}.alive=-1}}] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin du mini-jeu ! Il n'y a eu aucun gagnant ;("}}]

# English
execute if score #process_end {ns}.data matches 1 if entity @a[scores={{{ns}.alive=-1}}] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" End of mini-game! The following players have won the game: "}},{{"selector":"@a[scores={{{ns}.alive=-1}},sort=random]"}}]
execute if score #process_end {ns}.data matches 1 unless entity @a[scores={{{ns}.alive=-1}}] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" End of mini-game! There were no winners ;("}}]
""")
