
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the race translation functions at switch:modes/race/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/race/translations"

	# /blocks_cruise_control
	write_function(f"{path}/blocks_cruise_control", rf"""
# French
execute on passengers run title @s[scores={{{ns}.lang=0}}] title ""
execute on passengers run title @s[scores={{{ns}.lang=0}}] subtitle [{{"text":"Cruise Control","color":"blue"}}]

# English
execute on passengers run title @s[scores={{{ns}.lang=1}}] title ""
execute on passengers run title @s[scores={{{ns}.lang=1}}] subtitle [{{"text":"Cruise Control","color":"blue"}}]
""")

	# /blocks_engine_off
	write_function(f"{path}/blocks_engine_off", rf"""
# French
execute on passengers run title @s[scores={{{ns}.lang=0}}] title ""
execute on passengers run title @s[scores={{{ns}.lang=0}}] subtitle [{{"text":"Engine Off","color":"red"}}]

# English
execute on passengers run title @s[scores={{{ns}.lang=1}}] title ""
execute on passengers run title @s[scores={{{ns}.lang=1}}] subtitle [{{"text":"Engine Off","color":"red"}}]
""")

	# /blocks_no_grip
	write_function(f"{path}/blocks_no_grip", rf"""
# French
execute on passengers run title @s[scores={{{ns}.lang=0}}] title ""
execute on passengers run title @s[scores={{{ns}.lang=0}}] subtitle [{{"text":"No Grip","color":"aqua"}}]

# English
execute on passengers run title @s[scores={{{ns}.lang=1}}] title ""
execute on passengers run title @s[scores={{{ns}.lang=1}}] subtitle [{{"text":"No Grip","color":"aqua"}}]
""")

	# /blocks_no_steering
	write_function(f"{path}/blocks_no_steering", rf"""
# French
execute on passengers run title @s[scores={{{ns}.lang=0}}] title ""
execute on passengers run title @s[scores={{{ns}.lang=0}}] subtitle [{{"text":"No Steering","color":"light_purple"}}]

# English
execute on passengers run title @s[scores={{{ns}.lang=1}}] title ""
execute on passengers run title @s[scores={{{ns}.lang=1}}] subtitle [{{"text":"No Steering","color":"light_purple"}}]
""")

	# /blocks_reactor_boost
	write_function(f"{path}/blocks_reactor_boost", rf"""
# French
execute on passengers run title @s[scores={{{ns}.lang=0}}] title ""
execute on passengers run title @s[scores={{{ns}.lang=0}}] subtitle [{{"text":"Reactor Boost","color":"gold"}}]

# English
execute on passengers run title @s[scores={{{ns}.lang=1}}] title ""
execute on passengers run title @s[scores={{{ns}.lang=1}}] subtitle [{{"text":"Reactor Boost","color":"gold"}}]
""")

	# /blocks_reset
	write_function(f"{path}/blocks_reset", rf"""
# French
execute on passengers run title @s[scores={{{ns}.lang=0}}] title ""
execute on passengers run title @s[scores={{{ns}.lang=0}}] subtitle [{{"text":"Reset","color":"green"}}]

# English
execute on passengers run title @s[scores={{{ns}.lang=1}}] title ""
execute on passengers run title @s[scores={{{ns}.lang=1}}] subtitle [{{"text":"Reset","color":"green"}}]
""")

	# /checkpoints_check_player_pos
	write_function(f"{path}/checkpoints_check_player_pos", rf"""
# French
# tellraw @a[scores={{{ns}.lang=0}},tag=!detached] [{{"text":"#x : ","color":"yellow"}},{{"score":{{"name":"#x","objective":"{ns}.data"}},"color":"aqua"}},{{"text":", #y : "}},{{"score":{{"name":"#y","objective":"{ns}.data"}},"color":"aqua"}},{{"text":", #z : "}},{{"score":{{"name":"#z","objective":"{ns}.data"}},"color":"aqua"}}]
# tellraw @a[scores={{{ns}.lang=0}},tag=!detached] [{{"text":"#dx : ","color":"yellow"}},{{"score":{{"name":"#dx","objective":"{ns}.data"}},"color":"aqua"}},{{"text":", #dy : "}},{{"score":{{"name":"#dy","objective":"{ns}.data"}},"color":"aqua"}},{{"text":", #dz : "}},{{"score":{{"name":"#dz","objective":"{ns}.data"}},"color":"aqua"}}]
# tellraw @a[scores={{{ns}.lang=0}},tag=!detached] [{{"text":"#px : ","color":"yellow"}},{{"score":{{"name":"#px","objective":"{ns}.data"}},"color":"aqua"}},{{"text":", #py : "}},{{"score":{{"name":"#py","objective":"{ns}.data"}},"color":"aqua"}},{{"text":", #pz : "}},{{"score":{{"name":"#pz","objective":"{ns}.data"}},"color":"aqua"}}]
# tellraw @a[scores={{{ns}.lang=0}},tag=!detached] [{{"text":"#px : ","color":"yellow"}},{{"score":{{"name":"#px","objective":"{ns}.data"}},"color":"aqua"}},{{"text":", #py : "}},{{"score":{{"name":"#py","objective":"{ns}.data"}},"color":"aqua"}},{{"text":", #pz : "}},{{"score":{{"name":"#pz","objective":"{ns}.data"}},"color":"aqua"}}]

# English
""")

	# /checkpoints_forced_respawn
	write_function(f"{path}/checkpoints_forced_respawn", rf"""
# French
tellraw @s[scores={{{ns}.lang=0}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Vous avez été téléporté au dernier checkpoint car vous êtes tombé hors map !"}}]

# English
tellraw @s[scores={{{ns}.lang=1}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" You have been teleported to the last checkpoint because you fell off the map!"}}]
""")

	# /checkpoints_player_in
	write_function(f"{path}/checkpoints_player_in", rf"""
# French
execute if score @s {ns}.checkpoint matches 0 if score @s {ns}.lap <= #total_laps {ns}.data run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s","color":"green"}},{{"text":" passe au tour n°"}},{{"score":{{"name":"@s","objective":"{ns}.lap"}},"color":"aqua"}},{{"text":"/"}},{{"score":{{"name":"#total_laps","objective":"{ns}.data"}},"color":"aqua"}}]
execute unless score @s {ns}.checkpoint matches 0 if score @s {ns}.lap <= #total_laps {ns}.data run tellraw @s[scores={{{ns}.lang=0}}] ["",{{"nbt":"ParalyaWarning","storage":"{ns}:main","interpret":true}},{{"text":" Checkpoint n°"}},{{"score":{{"name":"@s","objective":"{ns}.checkpoint"}},"color":"aqua"}},{{"text":"/"}},{{"score":{{"name":"#total_checkpoints","objective":"{ns}.data"}},"color":"aqua"}}]

# English
execute if score @s {ns}.checkpoint matches 0 if score @s {ns}.lap <= #total_laps {ns}.data run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s","color":"green"}},{{"text":" passes to round no."}},{{"score":{{"name":"@s","objective":"{ns}.lap"}},"color":"aqua"}},{{"text":"/"}},{{"score":{{"name":"#total_laps","objective":"{ns}.data"}},"color":"aqua"}}]
execute unless score @s {ns}.checkpoint matches 0 if score @s {ns}.lap <= #total_laps {ns}.data run tellraw @s[scores={{{ns}.lang=1}}] ["",{{"nbt":"ParalyaWarning","storage":"{ns}:main","interpret":true}},{{"text":" Checkpoint n°"}},{{"score":{{"name":"@s","objective":"{ns}.checkpoint"}},"color":"aqua"}},{{"text":"/"}},{{"score":{{"name":"#total_checkpoints","objective":"{ns}.data"}},"color":"aqua"}}]
""")

	# /finished
	write_function(f"{path}/finished", rf"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s","color":"green"}},{{"text":" a terminé la course en "}},{{"score":{{"name":"#race_seconds","objective":"{ns}.data"}}}},{{"text":","}},{{"score":{{"name":"#digit","objective":"{ns}.data"}}}},{{"text":" secondes !\n"}}]
execute if score #remaining_time {ns}.data matches 61.. if entity @a[scores={{{ns}.alive=1}}] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Vous n'avez plus que 60 secondes pour terminer la course !\n"}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s","color":"green"}},{{"text":" finished the race in "}},{{"score":{{"name":"#race_seconds","objective":"{ns}.data"}}}},{{"text":","}},{{"score":{{"name":"#digit","objective":"{ns}.data"}}}},{{"text":" seconds!\n"}}]
execute if score #remaining_time {ns}.data matches 61.. if entity @a[scores={{{ns}.alive=1}}] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" You only have 60 seconds left to finish the race!"}}]
""")

	# /process_end
	write_function(f"{path}/process_end", rf"""
# French
execute if score #process_end {ns}.data matches 1 if entity @a[scores={{{ns}.alive=2}}] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin du mini-jeu ! Les joueurs suivants ont remporté la partie : "}},{{"selector":"@a[scores={{{ns}.alive=2}},sort=random]"}}]
execute if score #process_end {ns}.data matches 1 unless entity @a[scores={{{ns}.alive=2}}] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin du mini-jeu ! Aucun joueur n'a terminé la course dans le temps imparti !"}}]

# English
execute if score #process_end {ns}.data matches 1 if entity @a[scores={{{ns}.alive=2}}] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" End of mini-game! The following players have won the game: "}},{{"selector":"@a[scores={{{ns}.alive=2}},sort=random]"}}]
execute if score #process_end {ns}.data matches 1 unless entity @a[scores={{{ns}.alive=2}}] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" End of mini-game! No player has completed the race in the allotted time!"}}]
""")

	# /restart_game
	write_function(f"{path}/restart_game", rf"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] [{{"text":"\nLes joueurs ont votés pour changer de map !","color":"red"}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] [{{"text":"\nPlayers voted to change map!","color":"red"}}]
""")

	# /right_click
	write_function(f"{path}/right_click", rf"""
# French
execute if score #race_seconds {ns}.data matches 0.. if score @s {ns}.respawn_cp_id matches -1 if data entity @s SelectedItem.components."minecraft:custom_data".{ns}.classic_respawn run tellraw @s[scores={{{ns}.lang=0}}] [{{"nbt":"ParalyaError","storage":"{ns}:main","interpret":true}},{{"text":" Tu n'as encore passé aucun checkpoint, seul le hard respawn fonctionne"}}]

# English
execute if score #race_seconds {ns}.data matches 0.. if score @s {ns}.respawn_cp_id matches -1 if data entity @s SelectedItem.components."minecraft:custom_data".{ns}.classic_respawn run tellraw @s[scores={{{ns}.lang=1}}] [{{"nbt":"ParalyaError","storage":"{ns}:main","interpret":true}},{{"text":" You haven't passed any checkpoints yet, only hard respawn works"}}]
""")

	# /second
	write_function(f"{path}/second", rf"""
# French
execute if score #race_seconds {ns}.data matches -5 run title @a[scores={{{ns}.lang=0}},tag=!detached] title {{"text":"5","color":"red"}}
execute if score #race_seconds {ns}.data matches -4 run title @a[scores={{{ns}.lang=0}},tag=!detached] title {{"text":"4","color":"red"}}
execute if score #race_seconds {ns}.data matches -3 run title @a[scores={{{ns}.lang=0}},tag=!detached] title {{"text":"3","color":"red"}}
execute if score #race_seconds {ns}.data matches -2 run title @a[scores={{{ns}.lang=0}},tag=!detached] title {{"text":"2","color":"red"}}
execute if score #race_seconds {ns}.data matches -1 run title @a[scores={{{ns}.lang=0}},tag=!detached] title {{"text":"1","color":"red"}}
execute if score #race_seconds {ns}.data matches 0 run title @a[scores={{{ns}.lang=0}},tag=!detached] title {{"text":"GO !","color":"green"}}

# English
execute if score #race_seconds {ns}.data matches -5 run title @a[scores={{{ns}.lang=1}},tag=!detached] title {{"text":"5","color":"red"}}
execute if score #race_seconds {ns}.data matches -4 run title @a[scores={{{ns}.lang=1}},tag=!detached] title {{"text":"4","color":"red"}}
execute if score #race_seconds {ns}.data matches -3 run title @a[scores={{{ns}.lang=1}},tag=!detached] title {{"text":"3","color":"red"}}
execute if score #race_seconds {ns}.data matches -2 run title @a[scores={{{ns}.lang=1}},tag=!detached] title {{"text":"2","color":"red"}}
execute if score #race_seconds {ns}.data matches -1 run title @a[scores={{{ns}.lang=1}},tag=!detached] title {{"text":"1","color":"red"}}
execute if score #race_seconds {ns}.data matches 0 run title @a[scores={{{ns}.lang=1}},tag=!detached] title {{"text":"GO!","color":"green"}}
""")

	# /start
	write_function(f"{path}/start", rf"""
# French
title @a[scores={{{ns}.lang=0}},tag=!detached] times 5 20 5
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Lancement de la partie de Race dans 10 secondes, finissez la course le plus rapidement possible !"}}]

# English
title @a[scores={{{ns}.lang=1}},tag=!detached] times 5 20 5
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Race game starts in 10 seconds, finish the race as soon as possible!"}}]
""")

	# /vote_for_change_map
	write_function(f"{path}/vote_for_change_map", rf"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] [{{"selector":"@s","color":"green"}},{{"text":" a voté pour changer de map ["}},{{"score":{{"name":"#votes","objective":"{ns}.data"}},"color":"aqua"}},{{"text":"/"}},{{"score":{{"name":"#votes_max","objective":"{ns}.data"}},"color":"aqua"}},{{"text":"]"}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] [{{"selector":"@s","color":"green"}},{{"text":" voted to change map ["}},{{"score":{{"name":"#votes","objective":"{ns}.data"}},"color":"aqua"}},{{"text":"/"}},{{"score":{{"name":"#votes_max","objective":"{ns}.data"}},"color":"aqua"}},{{"text":"]"}}]
""")

	# /vote_for_collisions
	write_function(f"{path}/vote_for_collisions", rf"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] [{{"selector":"@s","color":"red"}},{{"text":" a voté pour activer les collisions joueurs ["}},{{"score":{{"name":"#votes","objective":"{ns}.data"}},"color":"aqua"}},{{"text":"/"}},{{"score":{{"name":"#votes_max","objective":"{ns}.data"}},"color":"aqua"}},{{"text":"]"}}]
execute if score #votes {ns}.data >= #votes_max {ns}.data run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\n",{{"nbt":"ParalyaWarning","storage":"{ns}:main","interpret":true}},{{"text":" Collisions entre joueurs activées !\n"}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] [{{"selector":"@s","color":"red"}},{{"text":" voted to enable player collisions ["}},{{"score":{{"name":"#votes","objective":"{ns}.data"}},"color":"aqua"}},{{"text":"/"}},{{"score":{{"name":"#votes_max","objective":"{ns}.data"}},"color":"aqua"}},{{"text":"]"}}]
execute if score #votes {ns}.data >= #votes_max {ns}.data run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\n",{{"nbt":"ParalyaWarning","storage":"{ns}:main","interpret":true}},{{"text":" Player collisions enabled!\n"}}]
""")
