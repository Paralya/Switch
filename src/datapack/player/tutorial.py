# Imports
from stewbeet import Mem, write_function


def write_tutorial() -> None:
	""" Write the tutorial dialogues shown to new players. """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:player"

	# /tutorial/finish
	write_function(f"{path}/tutorial/finish", f"""
team leave @s
scoreboard players reset @s {ns}.tutorial
advancement grant @s only {ns}:tutorial
execute in minecraft:overworld run tp @s 0 69.69 0
clear @s

function {ns}:stats/util_update_player
""")

	# /tutorial/next_dialogue
	write_function(f"{path}/tutorial/next_dialogue", f"""
scoreboard players add @s[team={ns}.tutorial] {ns}.tutorial 1
execute if score @s {ns}.tutorial matches ..6 run playsound ui.button.click ambient @s
execute if score @s {ns}.tutorial matches ..6 run function {ns}:player/tutorial/second
scoreboard players set @s {ns}.trigger.tutorial 0
""")

	# /tutorial/second
	write_function(f"{path}/tutorial/second", rf"""
## Objectives:
# How to vote
# Shop
# Help
# Attach/Detach
# End

# If player is not in the tutorial area, teleport them
execute in minecraft:overworld positioned -500 69.69 -500 unless entity @s[distance=..50] run tp @s ~ ~ ~ 0 0
gamemode adventure @s[gamemode=!adventure]

# Init dialog
execute if score @s {ns}.tutorial matches 0 run data modify storage {ns}:temp cutted_username set string entity @s equipment.head.components."minecraft:profile".name 0 4
execute if score @s {ns}.tutorial matches 0 run data modify storage {ns}:temp username set from entity @s equipment.head.components."minecraft:profile".name
execute if score @s {ns}.tutorial matches 0 run scoreboard players operation #dialog_type {ns}.data = @s {ns}.id
execute if score @s {ns}.tutorial matches 0 run scoreboard players operation #dialog_type {ns}.data %= #6 {ns}.data

# Second dialog
execute if score @s {ns}.tutorial matches 2 run scoreboard players set #vote_game_1 {ns}.data 2
execute if score @s {ns}.tutorial matches 2 run scoreboard players set #vote_game_2 {ns}.data 1
execute if score @s {ns}.tutorial matches 2 run scoreboard players set #vote_game_3 {ns}.data 0
execute if score @s {ns}.tutorial matches 2 run scoreboard players set #vote_game_4 {ns}.data 0
execute if score @s {ns}.tutorial matches 2 run scoreboard players set #vote_game_5 {ns}.data 9
execute if score @s {ns}.tutorial matches 2 run scoreboard players set #vote_game_6 {ns}.data 1
execute if score @s {ns}.tutorial matches 2 run scoreboard players set #for_tutorial {ns}.data 1
execute if score @s {ns}.tutorial matches 2 run function {ns}:engine/voting_time/message

# Third dialog
execute if score @s {ns}.tutorial matches 3 run particle dust{{color:[0.0,1.0,0.0],scale:1.0}} -500 69.1 -497 0.1 0 1.5 0 150 force @s
execute if score @s {ns}.tutorial matches 3 run particle dust{{color:[0.0,1.0,0.0],scale:1.0}} -500 69.6 -496 0.1 0 0.35 0 35 force @s
execute if score @s {ns}.tutorial matches 3 run particle dust{{color:[0.0,1.0,0.0],scale:1.0}} -500 70.1 -491 0.1 0 2 0 200 force @s
execute if score @s {ns}.tutorial matches 3 run particle dust{{color:[0.0,1.0,0.0],scale:1.0}} -502 70.1 -487 1 0 0.1 0 100 force @s

# Fourth dialog
execute if score @s {ns}.tutorial matches 4 run tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute if score @s {ns}.tutorial matches 4 run function {ns}:shop/initialize_shop_scores
execute if score @s {ns}.tutorial matches 4 run function {ns}:shop/pitchout

# Sixth dialog
execute if score @s {ns}.tutorial matches 6 run scoreboard players set @s {ns}.trigger.help 1
execute if score @s {ns}.tutorial matches 6 run function {ns}:player/trigger/help/main

# Go next dialog
function {ns}:player/translations/tutorial_second
""")

	# /tutorial/start
	write_function(f"{path}/tutorial/start", f"""
# Detach, join tutorial team, and set up tutorial score
tag @s add detached
team join {ns}.tutorial @s
scoreboard players set @s {ns}.tutorial 0
execute unless score @s {ns}.stats.wins matches 1.. run scoreboard players set @s {ns}.stats.wins 0
execute unless score @s {ns}.money matches 100.. run scoreboard players set @s {ns}.money 100
function {ns}:player/trigger/reset

# Teleport & Get username
execute in minecraft:overworld run tp @s -500 69.69 -500 0 0
gamemode adventure @s
clear @s
loot replace entity @s armor.head loot {ns}:get_username
execute at @s run playsound ui.toast.challenge_complete ambient @s

advancement revoke @s only {ns}:tutorial

# Empty title (fix for LunarClient first title not showing up)
title @s title ""
title @s subtitle ""
""")

