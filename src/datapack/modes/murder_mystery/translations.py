
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_server_announce


def write_translations():
	""" Write the murder_mystery translation functions at switch:modes/murder_mystery/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/murder_mystery/translations"

	# /detect_end
	write_function(f"{path}/detect_end", f"""
# French
execute if score #remaining_time {ns}.data matches ..1 if score #game_state {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin de partie, temps écoulé ! Victoire des innocents restants !"}}]
execute if score #remaining_time {ns}.data matches ..1 if score #game_state {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin de partie, victoire de "}},{{"selector":"@a[tag=!detached,gamemode=!spectator,scores={{{ns}.temp.role=3}}]","color":"red"}}]
execute if score #remaining_time {ns}.data matches ..1 if score #game_state {ns}.data matches 2 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin de partie, victoire des "}},{{"text":"innocents","color":"green"}},{{"text":" ! GG à "}},{{"selector":"@a[tag=!detached,gamemode=!spectator,scores={{{ns}.temp.role=1..2}}]"}}]
execute if score #remaining_time {ns}.data matches ..1 if score #game_state {ns}.data matches 3 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin de partie, aucun des camps n'est sorti vainqueur car il n'y a plus aucun joueur en vie !"}}]
execute if score #remaining_time {ns}.data matches ..1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Détective : "}},{{"selector":"@a[scores={{{ns}.temp.role=2}}]","color":"green"}},{{"text":" - Murderer : "}},{{"selector":"@a[scores={{{ns}.temp.role=3}}]","color":"red"}}]
execute if score #remaining_time {ns}.data matches ..1 as @a[scores={{{ns}.temp.role=3}}] on attacker if entity @s[scores={{{ns}.temp.role=1}}] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Dernier Héro : "}},{{"selector":"@s","color":"blue"}}]

# English
execute if score #remaining_time {ns}.data matches ..1 if score #game_state {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Game over, time's up! Victory for the remaining innocents!"}}]
execute if score #remaining_time {ns}.data matches ..1 if score #game_state {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Game over, winner is "}},{{"selector":"@a[tag=!detached,gamemode=!spectator,scores={{{ns}.temp.role=3}}]","color":"red"}}]
execute if score #remaining_time {ns}.data matches ..1 if score #game_state {ns}.data matches 2 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Game over, victory for the "}},{{"text":"innocents","color":"green"}},{{"text":"! GG to "}},{{"selector":"@a[tag=!detached,gamemode=!spectator,scores={{{ns}.temp.role=1..2}}]"}}]
execute if score #remaining_time {ns}.data matches ..1 if score #game_state {ns}.data matches 3 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Game over, neither side is the winner as there are no players left alive!"}}]
execute if score #remaining_time {ns}.data matches ..1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Detective: "}},{{"selector":"@a[scores={{{ns}.temp.role=2}}]","color":"green"}},{{"text":" - Murderer: "}},{{"selector":"@a[scores={{{ns}.temp.role=3}}]","color":"red"}}]
execute if score #remaining_time {ns}.data matches ..1 as @a[scores={{{ns}.temp.role=3}}] on attacker if entity @s[scores={{{ns}.temp.role=1}}] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Last Hero: "}},{{"selector":"@s","color":"blue"}}]
""")

	# /kill_player
	write_function(f"{path}/kill_player", f"""
# French
title @s[scores={{{ns}.lang=0}}] title {{"text":"Vous êtes mort","color":"red"}}

# English
title @s[scores={{{ns}.lang=1}}] title {{"text":"You are dead","color":"red"}}
""")

	# /percentage_title
	write_function(f"{path}/percentage_title", f"""
# French
title @s[scores={{{ns}.lang=0}}] actionbar [{{"text":"Murderer Chance: ","color":"red"}},{{"score":{{"name":"#percentage_murderer","objective":"{ns}.data"}},"color":"red"}},{{"text":"%","color":"red"}},{{"text":" - ","color":"gray"}},{{"text":"Detective Chance: ","color":"aqua"}},{{"score":{{"name":"#percentage_detective","objective":"{ns}.data"}},"color":"aqua"}},{{"text":"%","color":"aqua"}}]

# English
title @s[scores={{{ns}.lang=1}}] actionbar [{{"text":"Murderer Chance: ","color":"red"}},{{"score":{{"name":"#percentage_murderer","objective":"{ns}.data"}},"color":"red"}},{{"text":"%","color":"red"}},{{"text":" - ","color":"gray"}},{{"text":"Detective Chance: ","color":"aqua"}},{{"score":{{"name":"#percentage_detective","objective":"{ns}.data"}},"color":"aqua"}},{{"text":"%","color":"aqua"}}]
""")

	# /second
	write_function(f"{path}/second", f"""
# French
execute if score #murder_mystery_seconds {ns}.data matches 0 run title @a[scores={{{ns}.lang=0}},tag=!detached] title {{"text":"Vous êtes"}}
execute if score #murder_mystery_seconds {ns}.data matches 0 run title @a[scores={{{ns}.lang=0,{ns}.temp.role=1}}] subtitle {{"text":"Innocent","color":"green"}}
execute if score #murder_mystery_seconds {ns}.data matches 0 run title @a[scores={{{ns}.lang=0,{ns}.temp.role=2}}] subtitle {{"text":"Detective","color":"aqua"}}
execute if score #murder_mystery_seconds {ns}.data matches 0 run title @a[scores={{{ns}.lang=0,{ns}.temp.role=3}}] subtitle {{"text":"Murderer","color":"red"}}
execute if score #murder_mystery_seconds {ns}.data matches 0 if score #nb_murderers {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}}] [{{"text":"Les rôles ont été distribués, il y a ","color":"yellow"}},{{"score":{{"name":"#nb_murderers","objective":"{ns}.data"}},"color":"red"}},{{"text":" meutrier et "}},{{"score":{{"name":"#nb_murderers","objective":"{ns}.data"}},"color":"green"}},{{"text":" détective !"}}]
execute if score #murder_mystery_seconds {ns}.data matches 0 if score #nb_murderers {ns}.data matches 2.. run tellraw @a[scores={{{ns}.lang=0}}] [{{"text":"Les rôles ont été distribués, il y a ","color":"yellow"}},{{"score":{{"name":"#nb_murderers","objective":"{ns}.data"}},"color":"red"}},{{"text":" meutriers et "}},{{"score":{{"name":"#nb_murderers","objective":"{ns}.data"}},"color":"green"}},{{"text":" détectives !"}}]
execute if score #remaining_time {ns}.data matches 0.. if score #murder_mystery_seconds {ns}.data matches 0.. run title @a[scores={{{ns}.lang=0}},tag=!detached] actionbar [{{"text":"Temps restant : ","color":"aqua"}},{{"score":{{"name":"#minute","objective":"{ns}.data"}},"color":"yellow"}},{{"text":"m"}},{{"score":{{"name":"#second","objective":"{ns}.data"}},"color":"yellow"}},{{"text":"s"}}]

# English
execute if score #murder_mystery_seconds {ns}.data matches 0 run title @a[scores={{{ns}.lang=1}},tag=!detached] title {{"text":"You are"}}
execute if score #murder_mystery_seconds {ns}.data matches 0 run title @a[scores={{{ns}.lang=1,{ns}.temp.role=1}}] subtitle {{"text":"Innocent","color":"green"}}
execute if score #murder_mystery_seconds {ns}.data matches 0 run title @a[scores={{{ns}.lang=1,{ns}.temp.role=2}}] subtitle {{"text":"Detective","color":"aqua"}}
execute if score #murder_mystery_seconds {ns}.data matches 0 run title @a[scores={{{ns}.lang=1,{ns}.temp.role=3}}] subtitle {{"text":"Murderer","color":"red"}}
execute if score #murder_mystery_seconds {ns}.data matches 0 if score #nb_murderers {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}}] [{{"text":"The roles have been assigned, there is ","color":"yellow"}},{{"score":{{"name":"#nb_murderers","objective":"{ns}.data"}},"color":"red"}},{{"text":" murderer and "}},{{"score":{{"name":"#nb_murderers","objective":"{ns}.data"}},"color":"green"}},{{"text":" detective!"}}]
execute if score #murder_mystery_seconds {ns}.data matches 0 if score #nb_murderers {ns}.data matches 2.. run tellraw @a[scores={{{ns}.lang=1}}] [{{"text":"The roles have been assigned, there are ","color":"yellow"}},{{"score":{{"name":"#nb_murderers","objective":"{ns}.data"}},"color":"red"}},{{"text":" murderers and "}},{{"score":{{"name":"#nb_murderers","objective":"{ns}.data"}},"color":"green"}},{{"text":" detectives!"}}]
execute if score #remaining_time {ns}.data matches 0.. if score #murder_mystery_seconds {ns}.data matches 0.. run title @a[scores={{{ns}.lang=1}},tag=!detached] actionbar [{{"text":"Time remaining: ","color":"aqua"}},{{"score":{{"name":"#minute","objective":"{ns}.data"}},"color":"yellow"}},{{"text":"m"}},{{"score":{{"name":"#second","objective":"{ns}.data"}},"color":"yellow"}},{{"text":"s"}}]
""")

	# /start
	write_server_announce(f"{path}/start", "Lancement de la partie de Murder Mystery, votre rôle va vous être donné !\\n", "Starting the Murder Mystery game, your role is about to be given to you!\\n")

	# /throw_error
	write_function(f"{path}/throw_error", f"""
# French
title @s[scores={{{ns}.lang=0}}] actionbar {{"text":"Erreur, cooldown de 10 secondes !","color":"red"}}

# English
title @s[scores={{{ns}.lang=1}}] actionbar {{"text":"Error, 10-second cooldown!","color":"red"}}
""")

	# /throw_feedback
	write_function(f"{path}/throw_feedback", f"""
# French
execute if score @s {ns}.temp.throw_reload matches 189 run title @s[scores={{{ns}.lang=0}}] actionbar {{"text":"|======================|","color":"gray"}}
execute if score @s {ns}.temp.throw_reload matches 190 run title @s[scores={{{ns}.lang=0}}] actionbar {{"text":"|====================--|","color":"gray"}}
execute if score @s {ns}.temp.throw_reload matches 191 run title @s[scores={{{ns}.lang=0}}] actionbar {{"text":"|==================----|","color":"gray"}}
execute if score @s {ns}.temp.throw_reload matches 192 run title @s[scores={{{ns}.lang=0}}] actionbar {{"text":"|================------|","color":"gray"}}
execute if score @s {ns}.temp.throw_reload matches 193 run title @s[scores={{{ns}.lang=0}}] actionbar {{"text":"|==============--------|","color":"gray"}}
execute if score @s {ns}.temp.throw_reload matches 194 run title @s[scores={{{ns}.lang=0}}] actionbar {{"text":"|============----------|","color":"gray"}}
execute if score @s {ns}.temp.throw_reload matches 195 run title @s[scores={{{ns}.lang=0}}] actionbar {{"text":"|==========------------|","color":"gray"}}
execute if score @s {ns}.temp.throw_reload matches 196 run title @s[scores={{{ns}.lang=0}}] actionbar {{"text":"|========--------------|","color":"gray"}}
execute if score @s {ns}.temp.throw_reload matches 197 run title @s[scores={{{ns}.lang=0}}] actionbar {{"text":"|======----------------|","color":"gray"}}
execute if score @s {ns}.temp.throw_reload matches 198 run title @s[scores={{{ns}.lang=0}}] actionbar {{"text":"|====------------------|","color":"gray"}}
execute if score @s {ns}.temp.throw_reload matches 199 run title @s[scores={{{ns}.lang=0}}] actionbar {{"text":"|==--------------------|","color":"gray"}}
execute if score @s {ns}.temp.throw_reload matches 200 run title @s[scores={{{ns}.lang=0}}] actionbar {{"text":"|----------------------|","color":"gray"}}

# English
execute if score @s {ns}.temp.throw_reload matches 189 run title @s[scores={{{ns}.lang=1}}] actionbar {{"text":"|======================|","color":"gray"}}
execute if score @s {ns}.temp.throw_reload matches 190 run title @s[scores={{{ns}.lang=1}}] actionbar {{"text":"|====================--|","color":"gray"}}
execute if score @s {ns}.temp.throw_reload matches 191 run title @s[scores={{{ns}.lang=1}}] actionbar {{"text":"|==================----|","color":"gray"}}
execute if score @s {ns}.temp.throw_reload matches 192 run title @s[scores={{{ns}.lang=1}}] actionbar {{"text":"|================------|","color":"gray"}}
execute if score @s {ns}.temp.throw_reload matches 193 run title @s[scores={{{ns}.lang=1}}] actionbar {{"text":"|==============--------|","color":"gray"}}
execute if score @s {ns}.temp.throw_reload matches 194 run title @s[scores={{{ns}.lang=1}}] actionbar {{"text":"|============----------|","color":"gray"}}
execute if score @s {ns}.temp.throw_reload matches 195 run title @s[scores={{{ns}.lang=1}}] actionbar {{"text":"|==========------------|","color":"gray"}}
execute if score @s {ns}.temp.throw_reload matches 196 run title @s[scores={{{ns}.lang=1}}] actionbar {{"text":"|========--------------|","color":"gray"}}
execute if score @s {ns}.temp.throw_reload matches 197 run title @s[scores={{{ns}.lang=1}}] actionbar {{"text":"|======----------------|","color":"gray"}}
execute if score @s {ns}.temp.throw_reload matches 198 run title @s[scores={{{ns}.lang=1}}] actionbar {{"text":"|====------------------|","color":"gray"}}
execute if score @s {ns}.temp.throw_reload matches 199 run title @s[scores={{{ns}.lang=1}}] actionbar {{"text":"|==--------------------|","color":"gray"}}
execute if score @s {ns}.temp.throw_reload matches 200 run title @s[scores={{{ns}.lang=1}}] actionbar {{"text":"|----------------------|","color":"gray"}}
""")

	# /throw_loop
	write_function(f"{path}/throw_loop", f"""
# French
# tellraw @a[scores={{{ns}.lang=0}}] [{{"score":{{"name":"#x","objective":"{ns}.data"}}}},{{"score":{{"name":"#y","objective":"{ns}.data"}}}},{{"score":{{"name":"#z","objective":"{ns}.data"}}}}]
# tellraw @a[scores={{{ns}.lang=0}}] [{{"score":{{"name":"#dest_x","objective":"{ns}.data"}}}},{{"score":{{"name":"#dest_y","objective":"{ns}.data"}}}},{{"score":{{"name":"#dest_z","objective":"{ns}.data"}}}}]

# English
""")

	# /tick_bow
	write_function(f"{path}/tick_bow", f"""
# French
execute as @p[gamemode=!spectator,scores={{{ns}.temp.role=1..2}},distance=..1] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] {{"text":"L'arc du détective a été ramassé !","color":"green"}}

# English
execute as @p[gamemode=!spectator,scores={{{ns}.temp.role=1..2}},distance=..1] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] {{"text":"The detective's bow has been picked up!","color":"green"}}
""")
