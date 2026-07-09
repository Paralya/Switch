
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_server_announce


def write_translations():
	""" Write the gay_shooter translation functions at switch:modes/gay_shooter/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/gay_shooter/translations"

	# /detect_end
	write_function(f"{path}/detect_end", f"""
# French
execute if score #gay_shooter_seconds {ns}.data matches 300 if score #game_state {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin de partie, temps écoulé ! Aucun des camps n'est sorti vainqueur au bout de 10 minutes !"}}]
execute if score #game_state {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin de partie, victoire des "}},{{"text":"guys","color":"light_purple"}},{{"text":" ! GG à "}},{{"selector":"@a[tag=!detached,gamemode=adventure,team={ns}.temp.gays]"}}]
execute if score #game_state {ns}.data matches 2 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin de partie, victoire des "}},{{"text":"shooters","color":"gray"}},{{"text":" ! GG à "}},{{"selector":"@a[tag=!detached,gamemode=adventure,team={ns}.temp.shooters]"}}]
execute if score #game_state {ns}.data matches 3 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin de partie, aucun des camps n'est sorti vainqueur car il n'y a plus aucun joueur en vie !"}}]
execute if score #game_state {ns}.data matches 4 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin de partie, temps écoulé ! Victoire des shooters ("}},{{"selector":"@a[tag=!detached,gamemode=adventure,team={ns}.temp.shooters]"}},{{"text":") !"}}]

# English
execute if score #gay_shooter_seconds {ns}.data matches 300 if score #game_state {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Game over, time's up! Neither side is the winner after 10 minutes!"}}]
execute if score #game_state {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Game over, victory of the "}},{{"text":"guys","color":"light_purple"}},{{"text":"! Good Game to "}},{{"selector":"@a[tag=!detached,gamemode=adventure,team={ns}.temp.gays]"}}]
execute if score #game_state {ns}.data matches 2 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Game over, victory of the "}},{{"text":"shooters","color":"gray"}},{{"text":"! Good Game to "}},{{"selector":"@a[tag=!detached,gamemode=adventure,team={ns}.temp.shooters]"}}]
execute if score #game_state {ns}.data matches 3 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Game over, neither side is the winner as there are no players left alive!"}}]
execute if score #game_state {ns}.data matches 4 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Game over, time up! Shooters win ("}},{{"selector":"@a[tag=!detached,gamemode=adventure,team={ns}.temp.shooters]"}},{{"text":")!"}}]
""")

	# /start
	write_server_announce(f"{path}/start", "Lancement de la partie de Guy Shooter, les tireurs doivent empêcher les coureurs de grimper la tour !", "Starting the Guy Shooter game, the shooters must stop the runners from climbing the tower!")

	# /xp_bar
	write_function(f"{path}/xp_bar", f"""
# French
title @a[scores={{{ns}.lang=0}},tag=!detached] actionbar [{{"text":"Temps restant : ","color":"aqua"}},{{"score":{{"name":"#remaining_time","objective":"{ns}.data"}},"color":"yellow"}},{{"text":"s","color":"aqua"}}]

# English
title @a[scores={{{ns}.lang=1}},tag=!detached] actionbar [{{"text":"Time remaining: ","color":"aqua"}},{{"score":{{"name":"#remaining_time","objective":"{ns}.data"}},"color":"yellow"}},{{"text":"s","color":"aqua"}}]
""")
