
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the fish_fight translation functions at switch:modes/fish_fight/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/fish_fight/translations"

	# /axobonus
	write_function(f"{path}/axobonus", rf"""
# French
execute if score #random {ns}.data matches 0 if score #TEAM_FISH {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" a obtenu un effet de Slow Falling !\n","color":"white"}}]
execute if score #random {ns}.data matches 0 if score #TEAM_FISH {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" a obtenu un effet de Slow Falling pour son équipe !\n","color":"white"}}]
execute if score #random {ns}.data matches 1 if score #TEAM_FISH {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" a obtenu un effet de Speed !\n","color":"white"}}]
execute if score #random {ns}.data matches 1 if score #TEAM_FISH {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" a obtenu un effet de Speed pour son équipe !\n","color":"white"}}]
execute if score #random {ns}.data matches 2 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" a obtenu des blocs de laine !\n","color":"white"}}]
execute if score #random {ns}.data matches 3 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" a gagné une vie ! (3 maximum)","color":"gold"}},{{"text":"\n"}}]
execute if score #random {ns}.data matches 4 if score #TEAM_FISH {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" a infligé aux autres joueurs un effet de Glowing et Weakness !\n","color":"white"}}]
execute if score #random {ns}.data matches 4 if score #TEAM_FISH {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" a infligé à l'équipe adverse un effet de Glowing et Weakness !\n","color":"white"}}]
execute if score #random {ns}.data matches 5 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" a obtenu un effet de Force !\n","color":"white"}}]
execute if score #random {ns}.data matches 6 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" a obtenu 10 perles de l'End !\n","color":"white"}}]
execute if score #random {ns}.data matches 7 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" a invoqué des axolotls !\n","color":"white"}}]
execute if score #random {ns}.data matches 8 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" a invoqué des poissons mécontents !\n","color":"white"}}]
execute if score #random {ns}.data matches 9 if score #TEAM_FISH {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" a ralenti ses adversaires !\n","color":"white"}}]
execute if score #random {ns}.data matches 9 if score #TEAM_FISH {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" a ralenti l'équipe adverse !\n","color":"white"}}]
execute if score #random {ns}.data matches 10 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" est invincible pendant quelques secondes !\n","color":"white"}}]
execute if score #random {ns}.data matches 11 if score #TEAM_FISH {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" a infligé un effet de Levitation à ses adversaires !\n","color":"white"}}]
execute if score #random {ns}.data matches 11 if score #TEAM_FISH {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" a infligé un effet de Levitation à l'équipe adverse !\n","color":"white"}}]
execute if score #random {ns}.data matches 12 if score #TEAM_FISH {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" a obtenu un effet de Jump Boost !\n","color":"white"}}]
execute if score #random {ns}.data matches 12 if score #TEAM_FISH {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" a obtenu un effet de Jump Boost pour son équipe !\n","color":"white"}}]

# English
execute if score #random {ns}.data matches 0 if score #TEAM_FISH {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" got a Slow Falling effect!\n","color":"white"}}]
execute if score #random {ns}.data matches 0 if score #TEAM_FISH {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" got a Slow Falling effect for their team!","color":"white"}},{{"text":" "}}]
execute if score #random {ns}.data matches 1 if score #TEAM_FISH {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" got a Speed effect!","color":"white"}},{{"text":" "}}]
execute if score #random {ns}.data matches 1 if score #TEAM_FISH {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" got a Speed effect for their team!\n","color":"white"}}]
execute if score #random {ns}.data matches 2 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" got wool blocks!","color":"white"}},{{"text":" "}}]
execute if score #random {ns}.data matches 3 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" won a life! (3 maximum)","color":"gold"}},{{"text":"\n"}}]
execute if score #random {ns}.data matches 4 if score #TEAM_FISH {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" inflicted Glowing and Weakness on the other players!\n","color":"white"}}]
execute if score #random {ns}.data matches 4 if score #TEAM_FISH {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" inflicted a Glowing and Weakness effect on the opposing team!\n","color":"white"}}]
execute if score #random {ns}.data matches 5 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" got a Force effect!","color":"white"}},{{"text":" "}}]
execute if score #random {ns}.data matches 6 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" got 10 pearls from the End!\n","color":"white"}}]
execute if score #random {ns}.data matches 7 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" summoned axolotls!\n","color":"white"}}]
execute if score #random {ns}.data matches 8 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" summoned disgruntled fish!\n","color":"white"}}]
execute if score #random {ns}.data matches 9 if score #TEAM_FISH {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" slowed down their opponents!\n","color":"white"}}]
execute if score #random {ns}.data matches 9 if score #TEAM_FISH {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" slowed down the opposing team!\n","color":"white"}}]
execute if score #random {ns}.data matches 10 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" is invincible for a few seconds!\n","color":"white"}}]
execute if score #random {ns}.data matches 11 if score #TEAM_FISH {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" inflicted a Levitation effect on their opponents!","color":"white"}},{{"text":" "}}]
execute if score #random {ns}.data matches 11 if score #TEAM_FISH {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" inflicted a Levitation effect on the opposing team!\n","color":"white"}}]
execute if score #random {ns}.data matches 12 if score #TEAM_FISH {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" got a Jump Boost effect!","color":"white"}},{{"text":" "}}]
execute if score #random {ns}.data matches 12 if score #TEAM_FISH {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"AxoBonus","bold":false,"color":"light_purple"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"selector":"@s","color":"yellow","bold":true}},{{"text":" got a Jump Boost effect for their team!","color":"white"}},{{"text":" "}}]
""")

	# /death
	write_function(f"{path}/death", rf"""
# French
execute if entity @s[scores={{{ns}.alive=1}}] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] [{{"selector":"@s","color":"dark_red"}},{{"text":" est mort. il a survécu "}},{{"score":{{"name":"#fish_fight_seconds","objective":"{ns}.data"}}}},{{"text":" secondes !"}}]
execute if entity @s[scores={{{ns}.alive=2}}] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] [{{"selector":"@s","color":"red"}},{{"text":" est tombé, il ne lui reste plus qu'1 vie !"}}]
execute if entity @s[scores={{{ns}.alive=3}}] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] [{{"selector":"@s","color":"red"}},{{"text":" est tombé, il lui reste 2 vies !"}}]

# English
execute if entity @s[scores={{{ns}.alive=1}}] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] [{{"selector":"@s","color":"dark_red"}},{{"text":" died. survived "}},{{"score":{{"name":"#fish_fight_seconds","objective":"{ns}.data"}}}},{{"text":" seconds!"}}]
execute if entity @s[scores={{{ns}.alive=2}}] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] [{{"selector":"@s","color":"red"}},{{"text":" has fallen, only 1 life left!"}}]
execute if entity @s[scores={{{ns}.alive=3}}] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] [{{"selector":"@s","color":"red"}},{{"text":" has fallen, he has 2 lives left!"}}]
""")

	# /process_end
	write_function(f"{path}/process_end", rf"""
# French
execute if score #process_end {ns}.data matches 1 if score #remaining_players {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "}},{{"selector":"@a[scores={{{ns}.alive=1..}}]"}}]
execute if score #process_end {ns}.data matches 1 unless score #remaining_players {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Il n'y a eu aucun gagnant ;("}}]

# English
execute if score #process_end {ns}.data matches 1 if score #remaining_players {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" End of mini-game! The winner of the game is "}},{{"selector":"@a[scores={{{ns}.alive=1..}}]"}}]
execute if score #process_end {ns}.data matches 1 unless score #remaining_players {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" There were no winners ;("}}]
""")

	# /second
	write_function(f"{path}/second", rf"""
# French
execute if score #fish_fight_seconds {ns}.data matches 3 if score #TEAM_FISH {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"Fish Fight","bold":true,"color":"#FAB7FA"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"text":"(1 partie sur 2)","italic":true,"color":"gray"}},{{"text":" Le jeu se déroulera en ","color":"white"}},{{"text":"équipes","underlined":true,"color":"white"}},{{"text":" !\n","color":"white"}}]
execute if score #temp {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"Fish Fight","bold":true,"color":"#FAB7FA"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"text":"Un Axolotl Bonus est apparu ! Tuez le pour obtenir un bonus et gagner des coeurs !"}},{{"text":"\n"}}]
execute if score #fish_fight_seconds {ns}.data matches 69 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"Fish Event","bold":true,"color":"#FAB7FA"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"text":"Des TNT ont été donnés à des joueurs aléatoires !\n","color":"white"}}]
execute if score #fish_fight_seconds {ns}.data matches 125 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"Fish Event","bold":true,"color":"#FAB7FA"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"text":"Des TNT ont été donnés à des joueurs aléatoires !\n","color":"white"}}]
execute if score #fish_fight_seconds {ns}.data matches 86 if score #random {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"Fish Event","bold":true,"color":"#FAB7FA"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"text":"Des poissons mécontents envahissent le terrain !\n","color":"white"}}]
execute if score #fish_fight_seconds {ns}.data matches 116 if score #random {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"Fish Event","bold":true,"color":"#FAB7FA"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"text":"Des poissons mécontents envahissent le terrain !\n","color":"white"}}]
title @a[scores={{{ns}.lang=0}},tag=!detached,gamemode=spectator] actionbar [{{"text":"Temps écoulé : ","color":"gray"}},{{"score":{{"name":"#mins","objective":"{ns}.data"}},"color":"white"}},{{"text":"m"}},{{"score":{{"name":"#secs","objective":"{ns}.data"}},"color":"white"}},{{"text":"s"}}]
title @a[scores={{{ns}.lang=0}},tag=!detached,gamemode=!spectator] actionbar {{"text":"Attention : PVP 1.9+","color":"red"}}

# English
execute if score #fish_fight_seconds {ns}.data matches 3 if score #TEAM_FISH {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"Fish Fight","bold":true,"color":"#FAB7FA"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"text":"(1 of 2 games)","italic":true,"color":"gray"}},{{"text":" The game will be played in ","color":"white"}},{{"text":"teams","underlined":true,"color":"white"}},{{"text":"!","color":"white"}},{{"text":" "}}]
execute if score #temp {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"Fish Fight","bold":true,"color":"#FAB7FA"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"text":"An Axolotl Bonus has appeared! Kill it to get a bonus and win hearts!"}},{{"text":"\n"}}]
execute if score #fish_fight_seconds {ns}.data matches 69 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"Fish Event","bold":true,"color":"#FAB7FA"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"text":"TNTs were given to random players!\n","color":"white"}}]
execute if score #fish_fight_seconds {ns}.data matches 125 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"Fish Event","bold":true,"color":"#FAB7FA"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"text":"TNTs were given to random players!\n","color":"white"}}]
execute if score #fish_fight_seconds {ns}.data matches 86 if score #random {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"Fish Event","bold":true,"color":"#FAB7FA"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"text":"Disgruntled Fish invade!\n","color":"white"}}]
execute if score #fish_fight_seconds {ns}.data matches 116 if score #random {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"Fish Event","bold":true,"color":"#FAB7FA"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"text":"Disgruntled Fish Invade!\n","color":"white"}}]
title @a[scores={{{ns}.lang=1}},tag=!detached,gamemode=spectator] actionbar [{{"text":"Elapsed time: ","color":"gray"}},{{"score":{{"name":"#mins","objective":"{ns}.data"}},"color":"white"}},{{"text":"m"}},{{"score":{{"name":"#secs","objective":"{ns}.data"}},"color":"white"}},{{"text":"s"}}]
title @a[scores={{{ns}.lang=1}},tag=!detached,gamemode=!spectator] actionbar {{"text":"Careful: PVP 1.9+","color":"red"}}
""")

	# /start
	write_function(f"{path}/start", rf"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Lancement de la partie de Fish Fight, votre objectif est d'expulsez les autres joueurs et d'être le dernier en vie !"}}]
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\n",{{"nbt":"ParalyaPvPNewFR","storage":"{ns}:main","interpret":true}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Starting the Fish Fight game, your objective is to expel the other players and be the last one alive!"}}]
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\n",{{"nbt":"ParalyaPvPNewEN","storage":"{ns}:main","interpret":true}}]
""")

	# /teams_tp_only_one_winner
	write_function(f"{path}/teams_tp_only_one_winner", rf"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"----------------------------------","color":"#CCDBF9"}},{{"text":"\nOnly One Winner","bold":true,"color":"#9FD5EE"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"text":"Il ne reste qu'","color":"white"}},{{"text":"une","bold":true,"underlined":true,"color":"white"}},{{"text":" équipe en vie, vous avez obtenu une victoire ! Mais il faut maintenant se battre pour être le dernier","color":"white"}},{{"text":" Vainqueur","italic":true,"color":"red"}},{{"text":"..","color":"white"}},{{"text":"\n----------------------------------","color":"#CCDBF9"}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"----------------------------------","color":"#CCDBF9"}},{{"text":"\nOnly One Winner","bold":true,"color":"#9FD5EE"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"text":"Only ","color":"white"}},{{"text":"one","bold":true,"underlined":true,"color":"white"}},{{"text":" team alive, you've got a win! But now you have to fight to be the last one ","color":"white"}},{{"text":"Winner","italic":true,"color":"red"}},{{"text":"...","color":"white"}},{{"text":"\n----------------------------------","color":"#CCDBF9"}}]
""")

	# /teams_tp_setup
	write_function(f"{path}/teams_tp_setup", rf"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"Fish Fight","bold":true,"color":"#8DF0CE"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"text":"(1 partie sur 2)","bold":true,"italic":true,"color":"gray"}},{{"text":" Le jeu se déroulera en 2 équipes !\n","bold":true}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"Fish Fight","bold":true,"color":"#8DF0CE"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"text":"(1 of 2 games)","bold":true,"italic":true,"color":"gray"}},{{"text":" The game will be played in 2 teams!\n","bold":true}}]
""")

	# /teams_tp_setup4
	write_function(f"{path}/teams_tp_setup4", rf"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"Fish Fight","bold":true,"color":"#8DF0CE"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"text":"(1 partie sur 2)","bold":true,"italic":true,"color":"gray"}},{{"text":" Le jeu se déroulera en 4 équipes !\n","bold":true}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"Fish Fight","bold":true,"color":"#8DF0CE"}},{{"text":" \u2022 ","bold":true,"color":"gray"}},{{"text":"(1 of 2 games)","bold":true,"italic":true,"color":"gray"}},{{"text":" The game will be played by 4 teams!\n","bold":true}}]
""")
