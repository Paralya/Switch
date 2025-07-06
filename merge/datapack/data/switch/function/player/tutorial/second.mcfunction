
## Objectives:
# How to vote
# Shop
# Help
# Attach/Detach
# End

# Init dialog
execute if score @s switch.tutorial matches 0 run data modify storage switch:temp cutted_username set string entity @s equipment.head.components."minecraft:profile".name 0 4
execute if score @s switch.tutorial matches 0 run data modify storage switch:temp username set from entity @s equipment.head.components."minecraft:profile".name
execute if score @s switch.tutorial matches 0 run scoreboard players operation #dialog_type switch.data = @s switch.id
execute if score @s switch.tutorial matches 0 run scoreboard players operation #dialog_type switch.data %= #6 switch.data

# Second dialog
execute if score @s switch.tutorial matches 2 run scoreboard players set #vote_game_1 switch.data 2
execute if score @s switch.tutorial matches 2 run scoreboard players set #vote_game_2 switch.data 1
execute if score @s switch.tutorial matches 2 run scoreboard players set #vote_game_3 switch.data 0
execute if score @s switch.tutorial matches 2 run scoreboard players set #vote_game_4 switch.data 0
execute if score @s switch.tutorial matches 2 run scoreboard players set #vote_game_5 switch.data 9
execute if score @s switch.tutorial matches 2 run scoreboard players set #vote_game_6 switch.data 1
execute if score @s switch.tutorial matches 2 run scoreboard players set #for_tutorial switch.data 1
execute if score @s switch.tutorial matches 2 run function switch:engine/voting_time/message

# Third dialog
execute if score @s switch.tutorial matches 3 run particle dust{color:[0.0,1.0,0.0],scale:1.0} -500 69.1 -497 0.1 0 1.5 0 150 force @s
execute if score @s switch.tutorial matches 3 run particle dust{color:[0.0,1.0,0.0],scale:1.0} -500 69.6 -496 0.1 0 0.35 0 35 force @s
execute if score @s switch.tutorial matches 3 run particle dust{color:[0.0,1.0,0.0],scale:1.0} -500 70.1 -491 0.1 0 2 0 200 force @s
execute if score @s switch.tutorial matches 3 run particle dust{color:[0.0,1.0,0.0],scale:1.0} -502 70.1 -487 1 0 0.1 0 100 force @s

# Fourth dialog
execute if score @s switch.tutorial matches 4 run function switch:shop/initialize_shop_scores
execute if score @s switch.tutorial matches 4 run function switch:shop/pitchout

# Sixth dialog
execute if score @s switch.tutorial matches 6 run scoreboard players set @s switch.trigger.help 1
execute if score @s switch.tutorial matches 6 run function switch:player/trigger/help/main

# Go next dialog
function switch:translations/player_tutorial_second

