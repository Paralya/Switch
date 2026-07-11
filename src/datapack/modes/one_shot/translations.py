
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the one_shot translation functions at switch:modes/one_shot/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/one_shot/translations"

	# /process_end
	write_function(f"{path}/process_end", f"""
# French (#max_kills is computed by process_end before this function runs)
execute if score #process_end {ns}.data matches 1 if score #max_kills {ns}.data matches 1.. as @a[tag=!detached] if score @s {ns}.temp.kills = #max_kills {ns}.data run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "}},{{"selector":"@s"}},{{"text":" avec "}},{{"score":{{"name":"@s","objective":"{ns}.temp.kills"}},"color":"yellow"}},{{"text":" kills !"}}]
execute if score #process_end {ns}.data matches 1 unless score #max_kills {ns}.data matches 1.. run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Il n'y a eu aucun gagnant ;("}}]

# English
execute if score #process_end {ns}.data matches 1 if score #max_kills {ns}.data matches 1.. as @a[tag=!detached] if score @s {ns}.temp.kills = #max_kills {ns}.data run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" End of mini-game! The winner of the game is "}},{{"selector":"@s"}},{{"text":" with "}},{{"score":{{"name":"@s","objective":"{ns}.temp.kills"}},"color":"yellow"}},{{"text":" kills!"}}]
execute if score #process_end {ns}.data matches 1 unless score #max_kills {ns}.data matches 1.. run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" There were no winners ;("}}]
""")

	# /second
	write_function(f"{path}/second", rf"""
# French
execute if score #one_shot_seconds {ns}.data matches 4 if score #TEAM_ONESHOT {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"One Shot","bold":true,"color":"#FAB7FA"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"text":"(1 partie sur 2)","italic":true,"color":"gray"}},{{"text":" Le jeu se déroulera en ","color":"white"}},{{"text":"équipes","underlined":true,"color":"white"}},{{"text":" !\n","color":"white"}}]
execute if score #one_shot_seconds {ns}.data matches 8 if score #TEAM_ONESHOT {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"One Shot","bold":true,"color":"#FAB7FA"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"text":"(1 partie sur 2)","italic":true,"color":"gray"}},{{"text":" Le jeu se déroulera en ","color":"white"}},{{"text":"équipes","underlined":true,"color":"white"}},{{"text":" !\n","color":"white"}}]

# English
execute if score #one_shot_seconds {ns}.data matches 4 if score #TEAM_ONESHOT {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"One Shot","bold":true,"color":"#FAB7FA"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"text":"(1 of 2 games)","italic":true,"color":"gray"}},{{"text":" The game will be played in ","color":"white"}},{{"text":"teams","underlined":true,"color":"white"}},{{"text":"!\n","color":"white"}}]
execute if score #one_shot_seconds {ns}.data matches 8 if score #TEAM_ONESHOT {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"One Shot","bold":true,"color":"#FAB7FA"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"text":"(1 of 2 games)","italic":true,"color":"gray"}},{{"text":" The game will be played in ","color":"white"}},{{"text":"teams","underlined":true,"color":"white"}},{{"text":"!\n","color":"white"}}]
function {ns}:translations/common/basic_actionbar
""")

	# /start
	write_function(f"{path}/start", f"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Lancement de la partie de One Shot dans 6 secondes, soyez le premier à atteindre l'objectif de kills !"}}]
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"ParalyaPvPOldFR","storage":"{ns}:main","interpret":true}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" One Shot game starts in 6 seconds, be the first to reach the kill goal!"}}]
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"ParalyaPvPOldEN","storage":"{ns}:main","interpret":true}}]
""")
