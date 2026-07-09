
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_server_announce


def write_translations():
	""" Write the minigolf translation functions at switch:modes/minigolf/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/minigolf/translations"

	# /check_lost_ball
	write_function(f"{path}/check_lost_ball", f"""
# French
execute if score #finished {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] [{{"selector":"@s","color":"green"}},{{"text":" vient de terminer en "}},{{"score":{{"name":"@s","objective":"golf_ball.shots"}},"color":"dark_green"}},{{"text":" coups et "}},{{"score":{{"name":"#minigolf_seconds","objective":"{ns}.data"}},"color":"dark_green"}},{{"text":" secondes !"}}]
execute if score #finished {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] [{{"selector":"@s","color":"red"}},{{"text":" a abandonné !"}}]

# English
execute if score #finished {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] [{{"selector":"@s","color":"green"}},{{"text":" just finished in "}},{{"score":{{"name":"@s","objective":"golf_ball.shots"}},"color":"dark_green"}},{{"text":" shots and "}},{{"score":{{"name":"#minigolf_seconds","objective":"{ns}.data"}},"color":"dark_green"}},{{"text":" seconds!"}}]
execute if score #finished {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] [{{"selector":"@s","color":"red"}},{{"text":" abandoned!"}}]
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
# French
execute if score #process_end {ns}.data matches 1 if entity @a[tag=!detached,tag={ns}.winner] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "}},{{"selector":"@a[tag=!detached,tag={ns}.winner]"}},{{"text":" avec "}},{{"score":{{"name":"#min","objective":"{ns}.data"}},"color":"gold"}},{{"text":" coups !"}}]
execute if score #process_end {ns}.data matches 1 unless entity @a[tag=!detached,tag={ns}.winner] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin du mini-jeu ! Aucun participant n'a terminé..."}}]

# English
execute if score #process_end {ns}.data matches 1 if entity @a[tag=!detached,tag={ns}.winner] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" End of mini-game! The winner of the game is "}},{{"selector":"@a[tag=!detached,tag={ns}.winner]"}},{{"text":" with "}},{{"score":{{"name":"#min","objective":"{ns}.data"}},"color":"gold"}},{{"text":" moves!"}}]
execute if score #process_end {ns}.data matches 1 unless entity @a[tag=!detached,tag={ns}.winner] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" End of mini-game! No participant has finished..."}}]
""")

	# /record_tellraw_macro
	write_function(f"{path}/record_tellraw_macro", f"""
# French
$execute if score #new_record {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Nouveau record de $(shots) coups par $(player) en $(time)s !","color":"yellow"}}]
$execute unless score #new_record {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Record actuel de $(shots) coups et $(time)s détenu par $(player)","color":"yellow"}}]

# English
$execute if score #new_record {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" New record $(shots) hits by $(player) in $(time)s!","color":"yellow"}}]
$execute unless score #new_record {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Current record of $(shots) hits and $(time)s held by $(player)","color":"yellow"}}]
""")

	# /start
	write_server_announce(f"{path}/start", "Lancement de la partie de MiniGolf, vous avez 5 secondes de préparation !", "Starting the MiniGolf game, you have 5 seconds to prepare!")
