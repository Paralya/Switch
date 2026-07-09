
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the rush_the_point translation functions at switch:modes/rush_the_point/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/rush_the_point/translations"

	# /advancements_break_obsidian_confirm
	write_function(f"{path}/advancements_break_obsidian_confirm", rf"""
# French
execute if score #random {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s"}},{{"text":" a récuperé l'obsidienne, cela donne l'effet Absorption à son équipe ! [+250 points]\n"}}]
execute if score #random {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s"}},{{"text":" a récuperé l'obsidienne, cela donne l'effet Speed à son équipe ! [+250 points]\n"}}]
execute if score #random {ns}.data matches 2 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s"}},{{"text":" a récuperé l'obsidienne, cela donne l'effet Strength à son équipe ! [+250 points]\n"}}]
execute if score #random {ns}.data matches 3 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s"}},{{"text":" a récuperé l'obsidienne, cela donne l'effet Resistance à son équipe ! [+250 points]\n"}}]
execute if score #random {ns}.data matches 4 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s"}},{{"text":" a récuperé l'obsidienne, un Wither a été invoqué contre l'équipe ennemi ! [+250 points]\n"}}]
execute if score #random {ns}.data matches 5 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s"}},{{"text":" a récuperé l'obsidienne, cela donne l'effet Slowness à l'équipe ennemi ! [+250 points]\n"}}]
execute if score #random {ns}.data matches 6 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s"}},{{"text":" a récuperé l'obsidienne, cela donne l'effet Glowing à l'équipe ennemi ! [+250 points]\n"}}]
execute if score #random {ns}.data matches 7 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s"}},{{"text":" a récuperé l'obsidienne, cela donne l'effet Levitation à l'équipe ennemi ! [+250 points]\n"}}]
execute if score #random {ns}.data matches 8 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s"}},{{"text":" a récuperé l'obsidienne, cela donne l'effet Wither à l'équipe ennemi ! [+250 points]\n"}}]
execute if score #random {ns}.data matches 9 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s"}},{{"text":" a récuperé l'obsidienne, cela donne l'effet Weakness à l'équipe ennemi ! [+250 points]\n"}}]

# English
execute if score #random {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s"}},{{"text":" got the obsidian bonus, which gives the Absorption effect to their team! [+250 points]\n"}}]
execute if score #random {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s"}},{{"text":" got the obsidian bonus, which gives the Speed effect to their team! [+250 points]\n"}}]
execute if score #random {ns}.data matches 2 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s"}},{{"text":" got the obsidian bonus, which gives the Strength effect to their team! [+250 points]\n"}}]
execute if score #random {ns}.data matches 3 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s"}},{{"text":" got the obsidian bonus, this gives the Resistance effect to their team! [+250 points]\n"}}]
execute if score #random {ns}.data matches 4 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s"}},{{"text":" got the obsidian bonus, a Wither has been summoned against the enemy team! [+250 points]\n"}}]
execute if score #random {ns}.data matches 5 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s"}},{{"text":" got the obsidian bonus, which gives the Slowness effect to the enemy team! [+250 points]\n"}}]
execute if score #random {ns}.data matches 6 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s"}},{{"text":" got the obsidian bonus, which gives the Glowing effect to the enemy team! [+250 points]\n"}}]
execute if score #random {ns}.data matches 7 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s"}},{{"text":" got the obsidian bonus, which gives the Levitation effect to the enemy team! [+250 points]\n"}}]
execute if score #random {ns}.data matches 8 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s"}},{{"text":" got the obsidian bonus, which gives the Wither effect to the enemy team! [+250 points]\n"}}]
execute if score #random {ns}.data matches 9 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s"}},{{"text":" got the obsidian bonus, which gives the Weakness effect to the enemy team! [+250 points]\n"}}]
""")

	# /bonus_reload
	write_function(f"{path}/bonus_reload", rf"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Une obsidienne bonus est apparue !"}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" A bonus obsidian has appeared!"}}]
""")

	# /classes_
	write_function(f"{path}/classes_", rf"""
# French
execute if score @s {ns}.temp.chosen_class matches 3 unless score @s {ns}.temp.elytra_cooldown matches 0 run tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Erreur : Vous devez attendre encore ","color":"red"}},{{"score":{{"name":"@s","objective":"{ns}.temp.elytra_cooldown"}},"color":"dark_red"}},{{"text":" secondes avant de choisir cette classe","color":"red"}}]

# English
execute if score @s {ns}.temp.chosen_class matches 3 unless score @s {ns}.temp.elytra_cooldown matches 0 run tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"Error: You have to wait ","color":"red"}},{{"score":{{"name":"@s","objective":"{ns}.temp.elytra_cooldown"}},"color":"dark_red"}},{{"text":" seconds before choosing this class","color":"red"}}]
""")

	# /fireball_no_cooldown
	write_function(f"{path}/fireball_no_cooldown", rf"""
# French
title @s[scores={{{ns}.lang=0}}] actionbar [{{"text":"Cooldown en recharge : ","color":"red"}},{{"score":{{"name":"#seconds","objective":"{ns}.temp.fireball_cooldown"}},"color":"dark_red"}},{{"text":"."}},{{"score":{{"name":"#digits","objective":"{ns}.temp.fireball_cooldown"}},"color":"dark_red"}},{{"text":"s"}}]

# English
title @s[scores={{{ns}.lang=1}}] actionbar [{{"text":"Cooldown reloading: ","color":"red"}},{{"score":{{"name":"#seconds","objective":"{ns}.temp.fireball_cooldown"}},"color":"dark_red"}},{{"text":"."}},{{"score":{{"name":"#digits","objective":"{ns}.temp.fireball_cooldown"}},"color":"dark_red"}},{{"text":"s"}}]
""")

	# /process_end
	write_function(f"{path}/process_end", rf"""
# French
execute if score #process_end {ns}.data matches 1 if score #red_points {ns}.data > #blue_points {ns}.data run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin du mini-jeu avec une victoire de l'équipe rouge : "}},{{"selector":"@a[tag=!detached,team={ns}.rush_the_point.red,sort=random]"}}]
execute if score #process_end {ns}.data matches 1 if score #red_points {ns}.data = #blue_points {ns}.data run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin du mini-jeu sur une égalité mdr !"}}]
execute if score #process_end {ns}.data matches 1 if score #red_points {ns}.data < #blue_points {ns}.data run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin du mini-jeu avec une victoire de l'équipe bleue : "}},{{"selector":"@a[tag=!detached,team={ns}.rush_the_point.blue,sort=random]"}}]

# English
execute if score #process_end {ns}.data matches 1 if score #red_points {ns}.data > #blue_points {ns}.data run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" End of mini-game with red team winning: "}},{{"selector":"@a[tag=!detached,team={ns}.rush_the_point.red,sort=random]"}}]
execute if score #process_end {ns}.data matches 1 if score #red_points {ns}.data = #blue_points {ns}.data run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" End of mini-game on a tie lol!"}}]
execute if score #process_end {ns}.data matches 1 if score #red_points {ns}.data < #blue_points {ns}.data run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" End of mini-game with blue team winning: "}},{{"selector":"@a[tag=!detached,team={ns}.rush_the_point.blue,sort=random]"}}]
""")

	# /start
	write_function(f"{path}/start", rf"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Lancement de la partie de Rush The Point dans 10 secondes, votre objectif est de capturer tous les points de la map pour faire le maximum de score pour votre équipe grâce aux différents kits !"}}]
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\n",{{"nbt":"ParalyaPvPOldFR","storage":"{ns}:main","interpret":true}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Rush The Point game starts in 10 seconds, your goal is to capture all the points on the map to make the maximum score for your team thanks to the different kits!"}}]
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\n",{{"nbt":"ParalyaPvPOldEN","storage":"{ns}:main","interpret":true}}]
""")

	# /tick_zone
	write_function(f"{path}/tick_zone", rf"""
# French
execute if score @s {ns}.temp.zone_capture matches -60 if score #state {ns}.data matches 1 run tellraw @a[team={ns}.rush_the_point.red,distance=..5,scores={{{ns}.lang=0}}] {{"text":"Point capturée, plus besoin d'y rester !","color":"green"}}
execute if score @s {ns}.temp.zone_capture matches 60 if score #state {ns}.data matches 2 run tellraw @a[team={ns}.rush_the_point.blue,distance=..5,scores={{{ns}.lang=0}}] {{"text":"Point capturée, plus besoin d'y rester !","color":"green"}}

# English
execute if score @s {ns}.temp.zone_capture matches -60 if score #state {ns}.data matches 1 run tellraw @a[team={ns}.rush_the_point.red,distance=..5,scores={{{ns}.lang=1}}] {{"text":"Point captured, no need to stay there!","color":"green"}}
execute if score @s {ns}.temp.zone_capture matches 60 if score #state {ns}.data matches 2 run tellraw @a[team={ns}.rush_the_point.blue,distance=..5,scores={{{ns}.lang=1}}] {{"text":"Point captured, no need to stay there!","color":"green"}}
""")
