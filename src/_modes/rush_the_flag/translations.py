
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the rush_the_flag translation functions at switch:modes/rush_the_flag/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/rush_the_flag/translations"

	# /advancements_break_obsidian_confirm
	write_function(f"{path}/advancements_break_obsidian_confirm", """
# French
execute if score #random switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé l'obsidienne, cela donne l'effet Absorption à son équipe !\\n"}]
execute if score #random switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé l'obsidienne, cela donne l'effet Speed à son équipe !\\n"}]
execute if score #random switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé l'obsidienne, cela donne l'effet Strength à son équipe !\\n"}]
execute if score #random switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé l'obsidienne, cela donne l'effet Resistance à son équipe !\\n"}]
execute if score #random switch.data matches 4 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé l'obsidienne, un Wither a été invoqué contre l'équipe ennemi !\\n"}]
execute if score #random switch.data matches 5 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé l'obsidienne, cela donne l'effet Slowness à l'équipe ennemi !\\n"}]
execute if score #random switch.data matches 6 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé l'obsidienne, cela donne l'effet Glowing à l'équipe ennemi !\\n"}]
execute if score #random switch.data matches 7 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé l'obsidienne, cela donne l'effet Levitation à l'équipe ennemi !\\n"}]
execute if score #random switch.data matches 8 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé l'obsidienne, cela donne l'effet Wither à l'équipe ennemi !\\n"}]
execute if score #random switch.data matches 9 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé l'obsidienne, cela donne l'effet Weakness à l'équipe ennemi !\\n"}]

# English
execute if score #random switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" got the obsidian bonus, which gives the Absorption effect to their team!\\n"}]
execute if score #random switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" got the obsidian bonus, which gives the Speed effect to their team!\\n"}]
execute if score #random switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" got the obsidian bonus, which gives the Strength effect to their team!\\n"}]
execute if score #random switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" got the obsidian bonus, this gives the Resistance effect to their team!\\n"}]
execute if score #random switch.data matches 4 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" got the obsidian bonus, a Wither has been summoned against the enemy team!\\n"}]
execute if score #random switch.data matches 5 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" got the obsidian bonus, which gives the Slowness effect to the enemy team!\\n"}]
execute if score #random switch.data matches 6 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" got the obsidian bonus, which gives the Glowing effect to the enemy team!\\n"}]
execute if score #random switch.data matches 7 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" got the obsidian bonus, which gives the Levitation effect to the enemy team!\\n"}]
execute if score #random switch.data matches 8 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" got the obsidian bonus, which gives the Wither effect to the enemy team!\\n"}]
execute if score #random switch.data matches 9 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" got the obsidian bonus, which gives the Weakness effect to the enemy team!\\n"}]
""")

	# /flag_drop
	write_function(f"{path}/flag_drop", """
# French
execute if entity @s[tag=switch.blue_flag] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"[RushTheFlag]","color":"yellow"},{"text":" Le drapeau "},{"text":"bleu","color":"blue"},{"text":" vient de lâcher !"}]
execute if entity @s[tag=switch.red_flag] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"[RushTheFlag]","color":"yellow"},{"text":" Le drapeau "},{"text":"rouge","color":"red"},{"text":" vient de lâcher !"}]

# English
execute if entity @s[tag=switch.blue_flag] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"[RushTheFlag]","color":"yellow"},{"text":" The "},{"text":"blue","color":"blue"},{"text":" flag just dropped!"}]
execute if entity @s[tag=switch.red_flag] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"[RushTheFlag]","color":"yellow"},{"text":" The "},{"text":"red","color":"red"},{"text":" flag just dropped!"}]
""")

	# /flag_pickup
	write_function(f"{path}/flag_pickup", """
# French
execute if entity @s[tag=switch.blue_flag] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"[RushTheFlag]","color":"yellow"},{"text":" Le drapeau "},{"text":"bleu","color":"blue"},{"text":" a été ramassé !"}]
execute if entity @s[tag=switch.red_flag] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"[RushTheFlag]","color":"yellow"},{"text":" Le drapeau "},{"text":"rouge","color":"red"},{"text":" a été ramassé !"}]

# English
execute if entity @s[tag=switch.blue_flag] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"[RushTheFlag]","color":"yellow"},{"text":" The "},{"text":"blue","color":"blue"},{"text":" flag has been picked up!"}]
execute if entity @s[tag=switch.red_flag] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"[RushTheFlag]","color":"yellow"},{"text":" The "},{"text":"red","color":"red"},{"text":" flag has been picked up!"}]
""")

	# /flag_reset
	write_function(f"{path}/flag_reset", """
# French
execute if entity @s[tag=switch.blue_flag] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"[RushTheFlag]","color":"yellow"},{"text":" Le drapeau "},{"text":"bleu","color":"blue"},{"text":" est à nouveau en place !"}]
execute if entity @s[tag=switch.red_flag] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"[RushTheFlag]","color":"yellow"},{"text":" Le drapeau "},{"text":"rouge","color":"red"},{"text":" est à nouveau en place !"}]

# English
execute if entity @s[tag=switch.blue_flag] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"[RushTheFlag]","color":"yellow"},{"text":" The "},{"text":"blue","color":"blue"},{"text":" flag has been returned!"}]
execute if entity @s[tag=switch.red_flag] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"[RushTheFlag]","color":"yellow"},{"text":" The "},{"text":"red","color":"red"},{"text":" flag has been returned!"}]
""")

	# /process_end
	write_function(f"{path}/process_end", """
# French
execute if score #process_end switch.data matches 1 if score #red_points switch.data > #blue_points switch.data run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu avec une victoire de l'équipe rouge : "},{"selector":"@a[tag=!detached,team=switch.rush_the_point.red,sort=random]"}]
execute if score #process_end switch.data matches 1 if score #red_points switch.data = #blue_points switch.data if score #red_flag_pickups switch.data > #blue_flag_pickups switch.data run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Égalité de points ! L'équipe rouge gagne grâce à plus de prises de drapeau : "},{"selector":"@a[tag=!detached,team=switch.rush_the_point.red,sort=random]"}]
execute if score #process_end switch.data matches 1 if score #red_points switch.data = #blue_points switch.data if score #blue_flag_pickups switch.data > #red_flag_pickups switch.data run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Égalité de points ! L'équipe bleue gagne grâce à plus de prises de drapeau : "},{"selector":"@a[tag=!detached,team=switch.rush_the_point.blue,sort=random]"}]
execute if score #process_end switch.data matches 1 if score #red_points switch.data = #blue_points switch.data if score #red_flag_pickups switch.data = #blue_flag_pickups switch.data run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu sur une égalité mdr !"}]
execute if score #process_end switch.data matches 1 if score #red_points switch.data < #blue_points switch.data run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu avec une victoire de l'équipe bleue : "},{"selector":"@a[tag=!detached,team=switch.rush_the_point.blue,sort=random]"}]

# English
execute if score #process_end switch.data matches 1 if score #red_points switch.data > #blue_points switch.data run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" End of mini-game with red team winning: "},{"selector":"@a[tag=!detached,team=switch.rush_the_point.red,sort=random]"}]
execute if score #process_end switch.data matches 1 if score #red_points switch.data = #blue_points switch.data if score #red_flag_pickups switch.data > #blue_flag_pickups switch.data run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Points tied! Red team wins by most flag pickups: "},{"selector":"@a[tag=!detached,team=switch.rush_the_point.red,sort=random]"}]
execute if score #process_end switch.data matches 1 if score #red_points switch.data = #blue_points switch.data if score #blue_flag_pickups switch.data > #red_flag_pickups switch.data run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Points tied! Blue team wins by most flag pickups: "},{"selector":"@a[tag=!detached,team=switch.rush_the_point.blue,sort=random]"}]
execute if score #process_end switch.data matches 1 if score #red_points switch.data = #blue_points switch.data if score #red_flag_pickups switch.data = #blue_flag_pickups switch.data run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" End of mini-game on a tie lol!"}]
execute if score #process_end switch.data matches 1 if score #red_points switch.data < #blue_points switch.data run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" End of mini-game with blue team winning: "},{"selector":"@a[tag=!detached,team=switch.rush_the_point.blue,sort=random]"}]
""")

	# /score_point
	write_function(f"{path}/score_point", """
# French
execute if entity @s[tag=switch.blue_flag] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"[RushTheFlag] ","color":"yellow"},{"selector":"@p[tag=switch.has_blue_flag]"},{"text":" vient de sécuriser le drapeau ","color":"aqua"},{"text":"bleu","color":"blue"}]
execute if entity @s[tag=switch.red_flag] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"[RushTheFlag] ","color":"yellow"},{"selector":"@p[tag=switch.has_red_flag]"},{"text":" vient de sécuriser le drapeau ","color":"aqua"},{"text":"rouge","color":"red"}]

# English
execute if entity @s[tag=switch.blue_flag] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"[RushTheFlag] ","color":"yellow"},{"selector":"@p[tag=switch.has_blue_flag]"},{"text":" just secured the ","color":"aqua"},{"text":"blue","color":"blue"},{"text":" flag","color":"aqua"}]
execute if entity @s[tag=switch.red_flag] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"[RushTheFlag] ","color":"yellow"},{"selector":"@p[tag=switch.has_red_flag]"},{"text":" just secured the ","color":"aqua"},{"text":"red","color":"red"},{"text":" flag","color":"aqua"}]
""")

	# /start
	write_function(f"{path}/start", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Rush The Flag dans 10 secondes, votre objectif est de capturer le drapeau ennemi et de le sécuriser jusqu'à votre base grâce aux différents kits !"}]
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"ParalyaPvPOldFR","storage":"switch:main","interpret":true}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Rush The Flag game starts in 10 seconds, your objective is to capture the enemy flag and secure it to your base using the various kits!"}]
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"ParalyaPvPOldEN","storage":"switch:main","interpret":true}]
""")
