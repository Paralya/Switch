
# ruff: noqa: E501
# Imports
import stouputils as stp
from stewbeet import Mem, write_function


# Shared / root-level translations that stay at the flat "switch:translations/*" namespace.
# Subsystem-owned translations live in each subsystem's own translations.py instead.
@stp.measure_time(message="Generated shared translations")
def main() -> None:
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:translations"

	# /common/actionbar_time_pvp19
	write_function(f"{path}/common/actionbar_time_pvp19", rf"""
# French
title @a[scores={{{ns}.lang=0}},tag=!detached,gamemode=spectator] actionbar [{{"text":"Temps restant : ","color":"gray"}},{{"score":{{"name":"#mins","objective":"{ns}.data"}},"color":"white"}},{{"text":"m"}},{{"score":{{"name":"#secs","objective":"{ns}.data"}},"color":"white"}},{{"text":"s"}}]
title @a[scores={{{ns}.lang=0}},tag=!detached,gamemode=!spectator] actionbar {{"text":"Attention : PVP 1.9+","color":"red"}}

# English
title @a[scores={{{ns}.lang=1}},tag=!detached,gamemode=spectator] actionbar [{{"text":"Time remaining: ","color":"gray"}},{{"score":{{"name":"#mins","objective":"{ns}.data"}},"color":"white"}},{{"text":"m"}},{{"score":{{"name":"#secs","objective":"{ns}.data"}},"color":"white"}},{{"text":"s"}}]
title @a[scores={{{ns}.lang=1}},tag=!detached,gamemode=!spectator] actionbar {{"text":"Careful: PVP 1.9+","color":"red"}}
""")

	# /common/basic_actionbar
	write_function(f"{path}/common/basic_actionbar", rf"""
# French
title @a[scores={{{ns}.lang=0}},tag=!detached,gamemode=spectator] actionbar [{{"text":"Temps restant : ","color":"gray"}},{{"score":{{"name":"#mins","objective":"{ns}.data"}},"color":"white"}},{{"text":"m"}},{{"score":{{"name":"#secs","objective":"{ns}.data"}},"color":"white"}},{{"text":"s"}}]
title @a[scores={{{ns}.lang=0}},tag=!detached,gamemode=!spectator] actionbar {{"text":"Attention : PVP 1.8","color":"dark_aqua"}}

# English
title @a[scores={{{ns}.lang=1}},tag=!detached,gamemode=spectator] actionbar [{{"text":"Time remaining: ","color":"gray"}},{{"score":{{"name":"#mins","objective":"{ns}.data"}},"color":"white"}},{{"text":"m"}},{{"score":{{"name":"#secs","objective":"{ns}.data"}},"color":"white"}},{{"text":"s"}}]
title @a[scores={{{ns}.lang=1}},tag=!detached,gamemode=!spectator] actionbar {{"text":"Careful: PVP 1.8","color":"dark_aqua"}}
""")

	# /common/death_missed_jump
	write_function(f"{path}/common/death_missed_jump", rf"""
# French
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] [{{"selector":"@s","color":"red"}},{{"text":" a raté son saut [+0 point]"}}]

# English
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] [{{"selector":"@s","color":"red"}},{{"text":" missed a jump [+0 point]"}}]
""")

	# /common/joined_reconnect
	write_function(f"{path}/common/joined_reconnect", rf"""
# French
execute if score #reconnect {ns}.data matches 1 run tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Re ! Tu as fini de rage-quit ?","color":"red"}}]

# English
execute if score #reconnect {ns}.data matches 1 run tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"Welcome back! Are you done with rage-quit?","color":"red"}}]
""")

	# /common/layers_start
	write_function(f"{path}/common/layers_start", rf"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Lancement de la partie de Layers, votre objectif est de vous équipez le plus rapidement pour tuer les autres joueurs au travers des couches de tous les minerais ! Le PvP s'active au bout d'une minute mais vous devez détruire l'obsidienne pour rejoindre la zone ennemi !"}}]
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\n",{{"nbt":"ParalyaPvPOldFR","storage":"{ns}:main","interpret":true}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Starting the Layers game, your objective is to gear up as quickly as possible to kill the other players through the layers of all the ores! PvP activates after one minute, but you must destroy the obsidian to reach the enemy zone!"}}]
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\n",{{"nbt":"ParalyaPvPOldEN","storage":"{ns}:main","interpret":true}}]
""")

	# /common/process_end_solo_winner
	write_function(f"{path}/common/process_end_solo_winner", rf"""
# French
execute if score #process_end {ns}.data matches 1 if score #remaining_players {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "}},{{"selector":"@a[tag=!detached,gamemode=!spectator]"}}]
execute if score #process_end {ns}.data matches 1 unless score #remaining_players {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" AÏE ! Il n'y a eu aucun gagnant 💀. Cruelle défaite de tous les joueurs !"}}]

# English
execute if score #process_end {ns}.data matches 1 if score #remaining_players {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" End of mini-game! The winner of the game is "}},{{"selector":"@a[tag=!detached,gamemode=!spectator]"}}]
execute if score #process_end {ns}.data matches 1 unless score #remaining_players {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" OUCH! There were no winners 💀. Cruel defeat for all players!"}}]
""")

	# /common/process_end_survivors
	write_function(f"{path}/common/process_end_survivors", rf"""
# French
execute if score #process_end {ns}.data matches 1 if entity @a[scores={{{ns}.alive=1..}}] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin du mini-jeu ! Les joueurs suivants ont remporté la partie : "}},{{"selector":"@a[scores={{{ns}.alive=1..}},sort=random]"}}]
execute if score #process_end {ns}.data matches 1 unless entity @a[scores={{{ns}.alive=1..}}] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin du mini-jeu ! Il n'y a eu aucun gagnant ;("}}]

# English
execute if score #process_end {ns}.data matches 1 if entity @a[scores={{{ns}.alive=1..}}] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" End of mini-game! The following players have won the game: "}},{{"selector":"@a[scores={{{ns}.alive=1..}},sort=random]"}}]
execute if score #process_end {ns}.data matches 1 unless entity @a[scores={{{ns}.alive=1..}}] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" End of mini-game! There were no winners ;("}}]
""")

	# /common/process_end_winner_adventure
	write_function(f"{path}/common/process_end_winner_adventure", rf"""
# French
execute if score #process_end {ns}.data matches 1 if score #remaining_players {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "}},{{"selector":"@a[tag=!detached,gamemode=adventure]"}}]
execute if score #process_end {ns}.data matches 1 unless score #remaining_players {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Temps écoulé ! Il n'y a eu aucun gagnant ;("}}]

# English
execute if score #process_end {ns}.data matches 1 if score #remaining_players {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" End of mini-game! The winner of the game is "}},{{"selector":"@a[tag=!detached,gamemode=adventure]"}}]
execute if score #process_end {ns}.data matches 1 unless score #remaining_players {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Time up! There were no winners ;("}}]
""")

	# /common/process_end_winner_health
	write_function(f"{path}/common/process_end_winner_health", rf"""
# French
execute if score #process_end {ns}.data matches 1 if score #remaining_players {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "}},{{"selector":"@a[tag=!detached,gamemode=survival]","color":"yellow"}},{{"text":" avec un total de "}},{{"score":{{"name":"#health","objective":"{ns}.data"}},"color":"yellow"}},{{"text":" points de vie restants !"}}]
execute if score #process_end {ns}.data matches 1 unless score #remaining_players {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Temps écoulé ! Il n'y a eu aucun gagnant ;("}}]

# English
execute if score #process_end {ns}.data matches 1 if score #remaining_players {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" End of mini-game! The winner of the game is "}},{{"selector":"@a[tag=!detached,gamemode=survival]","color":"yellow"}},{{"text":" with a total of "}},{{"score":{{"name":"#health","objective":"{ns}.data"}},"color":"yellow"}},{{"text":" remaining life points!"}}]
execute if score #process_end {ns}.data matches 1 unless score #remaining_players {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Time up! There were no winners ;("}}]
""")

	# /common/process_end_winner_points
	write_function(f"{path}/common/process_end_winner_points", rf"""
# French
execute if score #process_end {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "}},{{"selector":"@a[tag=!detached,tag={ns}.winner]"}},{{"text":" avec "}},{{"score":{{"name":"#max","objective":"{ns}.data"}},"color":"gold"}},{{"text":" points !"}}]

# English
execute if score #process_end {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" End of mini-game! The winner of the game is "}},{{"selector":"@a[tag=!detached,tag={ns}.winner]"}},{{"text":" with "}},{{"score":{{"name":"#max","objective":"{ns}.data"}},"color":"gold"}},{{"text":" points!"}}]
""")

	# /test_mode (root-level toggle message)
	write_function(f"{path}/test_mode", rf"""
# French
execute if score #test_mode {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}}] {{"text":"Le mode test est maintenant ACTIVÉ","color":"green"}}
execute if score #test_mode {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=0}}] {{"text":"Le mode test est maintenant DÉSACTIVÉ","color":"red"}}

# English
execute if score #test_mode {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}}] {{"text":"Test mode is now ON","color":"green"}}
execute if score #test_mode {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=1}}] {{"text":"Test mode is now OFF","color":"red"}}
""")

	# /changelog
	write_function(f"{path}/changelog", rf"""
# French
tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"\n[Accédez aux changelog en clickant ici]\n","color":"red","click_event":{{"action":"open_url","url":"https://github.com/Paralya/Switch/releases"}}}}]

# English
tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"\n[Access the changelog by clicking here]\n","color":"red","click_event":{{"action":"open_url","url":"https://github.com/Paralya/Switch/releases"}}}}]
""")

	# /post_load
	write_function(f"{path}/post_load", f"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=convention.debug] {{"text":"[Loaded Switch v1.0.0]","italic":false,"color":"green"}}

# English
tellraw @a[scores={{{ns}.lang=1}},tag=convention.debug] {{"text":"[Loaded Switch v1.0.0]","italic":false,"color":"green"}}
""")
