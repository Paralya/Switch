
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the capture_the_flag translation functions at switch:modes/capture_the_flag/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/capture_the_flag/translations"

	# /start
	write_function(f"{path}/start", f"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Lancement de la partie de Capture The Flag dans 10 secondes, votre objectif est de capturer le drapeau ennemi grâce aux différentes classes à votre disposition !"}}]
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"ParalyaPvPOldFR","storage":"{ns}:main","interpret":true}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Starting Capture The Flag in 10 seconds, your goal is to capture the enemy flag using the different classes at your disposal!"}}]
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"ParalyaPvPOldEN","storage":"{ns}:main","interpret":true}}]
""")

	# /flag_drop
	write_function(f"{path}/flag_drop", f"""
# French
execute if entity @s[tag={ns}.blue_flag] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"[CaptureTheFlag]","color":"yellow"}},{{"text":" Le drapeau "}},{{"text":"bleu","color":"blue"}},{{"text":" vient de lâcher !"}}]
execute if entity @s[tag={ns}.red_flag] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"[CaptureTheFlag]","color":"yellow"}},{{"text":" Le drapeau "}},{{"text":"rouge","color":"red"}},{{"text":" vient de lâcher !"}}]

# English
execute if entity @s[tag={ns}.blue_flag] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"[CaptureTheFlag]","color":"yellow"}},{{"text":" The "}},{{"text":"blue","color":"blue"}},{{"text":" flag just dropped!"}}]
execute if entity @s[tag={ns}.red_flag] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"[CaptureTheFlag]","color":"yellow"}},{{"text":" The "}},{{"text":"red","color":"red"}},{{"text":" flag just dropped!"}}]
""")

	# /flag_pickup
	write_function(f"{path}/flag_pickup", f"""
# French
execute if entity @s[tag={ns}.blue_flag] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"[CaptureTheFlag]","color":"yellow"}},{{"text":" Le drapeau "}},{{"text":"bleu","color":"blue"}},{{"text":" a été ramassé !"}}]
execute if entity @s[tag={ns}.red_flag] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"[CaptureTheFlag]","color":"yellow"}},{{"text":" Le drapeau "}},{{"text":"rouge","color":"red"}},{{"text":" a été ramassé !"}}]

# English
execute if entity @s[tag={ns}.blue_flag] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"[CaptureTheFlag]","color":"yellow"}},{{"text":" The "}},{{"text":"blue","color":"blue"}},{{"text":" flag has been picked up!"}}]
execute if entity @s[tag={ns}.red_flag] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"[CaptureTheFlag]","color":"yellow"}},{{"text":" The "}},{{"text":"red","color":"red"}},{{"text":" flag has been picked up!"}}]
""")

	# /flag_reset
	write_function(f"{path}/flag_reset", f"""
# French
execute if entity @s[tag={ns}.blue_flag] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"[CaptureTheFlag]","color":"yellow"}},{{"text":" Le drapeau "}},{{"text":"bleu","color":"blue"}},{{"text":" est à nouveau en place !"}}]
execute if entity @s[tag={ns}.red_flag] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"[CaptureTheFlag]","color":"yellow"}},{{"text":" Le drapeau "}},{{"text":"rouge","color":"red"}},{{"text":" est à nouveau en place !"}}]

# English
execute if entity @s[tag={ns}.blue_flag] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"[CaptureTheFlag]","color":"yellow"}},{{"text":" The "}},{{"text":"blue","color":"blue"}},{{"text":" flag is back in place!"}}]
execute if entity @s[tag={ns}.red_flag] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"[CaptureTheFlag]","color":"yellow"}},{{"text":" The "}},{{"text":"red","color":"red"}},{{"text":" flag is back in place!"}}]
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
# French
execute if score #process_end {ns}.data matches 1 if score #red_points {ns}.data > #blue_points {ns}.data run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin du mini-jeu avec une victoire de l'équipe rouge : "}},{{"selector":"@a[tag=!detached,team={ns}.temp.red,sort=random]"}}]
execute if score #process_end {ns}.data matches 1 if score #red_points {ns}.data = #blue_points {ns}.data if score #red_flag_pickups {ns}.data > #blue_flag_pickups {ns}.data run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Égalité de points ! L'équipe rouge gagne grâce à plus de prises de drapeau : "}},{{"selector":"@a[tag=!detached,team={ns}.temp.red,sort=random]"}}]
execute if score #process_end {ns}.data matches 1 if score #red_points {ns}.data = #blue_points {ns}.data if score #blue_flag_pickups {ns}.data > #red_flag_pickups {ns}.data run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Égalité de points ! L'équipe bleue gagne grâce à plus de prises de drapeau : "}},{{"selector":"@a[tag=!detached,team={ns}.temp.blue,sort=random]"}}]
execute if score #process_end {ns}.data matches 1 if score #red_points {ns}.data = #blue_points {ns}.data if score #red_flag_pickups {ns}.data = #blue_flag_pickups {ns}.data run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin du mini-jeu sur une égalité mdr !"}}]
execute if score #process_end {ns}.data matches 1 if score #red_points {ns}.data < #blue_points {ns}.data run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin du mini-jeu avec une victoire de l'équipe bleue : "}},{{"selector":"@a[tag=!detached,team={ns}.temp.blue,sort=random]"}}]

# English
execute if score #process_end {ns}.data matches 1 if score #red_points {ns}.data > #blue_points {ns}.data run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" End of mini-game with a victory for the red team: "}},{{"selector":"@a[tag=!detached,team={ns}.temp.red,sort=random]"}}]
execute if score #process_end {ns}.data matches 1 if score #red_points {ns}.data = #blue_points {ns}.data if score #red_flag_pickups {ns}.data > #blue_flag_pickups {ns}.data run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Points tied! Red team wins by most flag pickups: "}},{{"selector":"@a[tag=!detached,team={ns}.temp.red,sort=random]"}}]
execute if score #process_end {ns}.data matches 1 if score #red_points {ns}.data = #blue_points {ns}.data if score #blue_flag_pickups {ns}.data > #red_flag_pickups {ns}.data run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Points tied! Blue team wins by most flag pickups: "}},{{"selector":"@a[tag=!detached,team={ns}.temp.blue,sort=random]"}}]
execute if score #process_end {ns}.data matches 1 if score #red_points {ns}.data = #blue_points {ns}.data if score #red_flag_pickups {ns}.data = #blue_flag_pickups {ns}.data run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" End of mini-game on a tie lol!"}}]
execute if score #process_end {ns}.data matches 1 if score #red_points {ns}.data < #blue_points {ns}.data run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Mini-game ends with blue team winning: "}},{{"selector":"@a[tag=!detached,team={ns}.temp.blue,sort=random]"}}]
""")

	# /score_point
	write_function(f"{path}/score_point", f"""
# French
execute if entity @s[tag={ns}.blue_flag] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"[CaptureTheFlag] ","color":"yellow"}},{{"selector":"@p[tag={ns}.has_blue_flag]"}},{{"text":" vient de sécuriser le drapeau ","color":"aqua"}},{{"text":"bleu","color":"blue"}}]
execute if entity @s[tag={ns}.red_flag] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"[CaptureTheFlag] ","color":"yellow"}},{{"selector":"@p[tag={ns}.has_red_flag]"}},{{"text":" vient de sécuriser le drapeau ","color":"aqua"}},{{"text":"rouge","color":"red"}}]

# English
execute if entity @s[tag={ns}.blue_flag] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"[CaptureTheFlag] ","color":"yellow"}},{{"selector":"@p[tag={ns}.has_blue_flag]"}},{{"text":" just secured the ","color":"aqua"}},{{"text":"blue","color":"blue"}},{{"text":" flag!","color":"aqua"}}]
execute if entity @s[tag={ns}.red_flag] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"[CaptureTheFlag] ","color":"yellow"}},{{"selector":"@p[tag={ns}.has_red_flag]"}},{{"text":" just secured the ","color":"aqua"}},{{"text":"red","color":"red"}},{{"text":" flag!","color":"aqua"}}]
""")
