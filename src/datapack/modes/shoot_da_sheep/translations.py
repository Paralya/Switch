
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_server_announce


def write_translations():
	""" Write the shoot_da_sheep translation functions at switch:modes/shoot_da_sheep/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/shoot_da_sheep/translations"

	# /reward
	write_function(f"{path}/reward", f"""
# French
execute if score #color {ns}.data matches 0..3 run tellraw @s[scores={{{ns}.lang=0}}] {{"text":"+1 point","color":"gray"}}
execute if score #color {ns}.data matches 4..5 run tellraw @s[scores={{{ns}.lang=0}}] {{"text":"+2 points","color":"aqua"}}
execute if score #color {ns}.data matches 6..7 run tellraw @s[scores={{{ns}.lang=0}}] {{"text":"+3 points","color":"aqua"}}
execute if score #color {ns}.data matches 8..9 run tellraw @s[scores={{{ns}.lang=0}}] {{"text":"+4 points","color":"yellow"}}
execute if score #color {ns}.data matches 10..11 run tellraw @s[scores={{{ns}.lang=0}}] {{"text":"+6 points","color":"yellow"}}
execute if score #color {ns}.data matches 12..13 run tellraw @s[scores={{{ns}.lang=0}}] {{"text":"+8 points","color":"gold"}}
execute if score #color {ns}.data matches 14 run tellraw @s[scores={{{ns}.lang=0}}] {{"text":"+10 points","color":"red"}}
execute if score #color {ns}.data matches 15 run tellraw @s[scores={{{ns}.lang=0}}] {{"text":"-50% points","color":"dark_gray"}}

# English
execute if score #color {ns}.data matches 0..3 run tellraw @s[scores={{{ns}.lang=1}}] {{"text":"+1 point","color":"gray"}}
execute if score #color {ns}.data matches 4..5 run tellraw @s[scores={{{ns}.lang=1}}] {{"text":"+2 points","color":"aqua"}}
execute if score #color {ns}.data matches 6..7 run tellraw @s[scores={{{ns}.lang=1}}] {{"text":"+3 points","color":"aqua"}}
execute if score #color {ns}.data matches 8..9 run tellraw @s[scores={{{ns}.lang=1}}] {{"text":"+4 points","color":"yellow"}}
execute if score #color {ns}.data matches 10..11 run tellraw @s[scores={{{ns}.lang=1}}] {{"text":"+6 points","color":"yellow"}}
execute if score #color {ns}.data matches 12..13 run tellraw @s[scores={{{ns}.lang=1}}] {{"text":"+8 points","color":"gold"}}
execute if score #color {ns}.data matches 14 run tellraw @s[scores={{{ns}.lang=1}}] {{"text":"+10 points","color":"red"}}
execute if score #color {ns}.data matches 15 run tellraw @s[scores={{{ns}.lang=1}}] {{"text":"-50% points","color":"dark_gray"}}
""")

	# /start
	write_server_announce(f"{path}/start", "Lancement de la partie de Shoot Da'Sheep dans 5 secondes, votre objectif est de marquer le plus de point en tirant sur les moutons en rapportant le plus !", "Shoot Da'Sheep game starts in 5 seconds, your goal is to score the most points by shooting the sheep with the most points!")
