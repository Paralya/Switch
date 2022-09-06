
tag @s add switch.temp

#Role selection
scoreboard players add #next_player_id switch.data 1
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run tag @s add switch.traitors_game.detective
execute if score #next_role switch.data matches 2 run tag @s add switch.traitors_game.traitor
execute if score #next_role switch.data matches 3 run tag @s add switch.traitors_game.ninja
execute if score #next_role switch.data matches 4 run tag @s add switch.traitors_game.traitor
execute if score #next_role switch.data matches 5 run tag @s add switch.traitors_game.innocent
execute if score #next_role switch.data matches 6 run tag @s add switch.traitors_game.innocent
execute if score #next_role switch.data matches 7 run tag @s add switch.traitors_game.big_traitor
execute if score #next_role switch.data matches 8 run tag @s add switch.traitors_game.innocent
execute if score #next_role switch.data matches 9 run tag @s add switch.traitors_game.innocent
execute if score #next_role switch.data matches 10 run tag @s add switch.traitors_game.traitor
execute if score #next_role switch.data matches 10 run scoreboard players set #next_role switch.data 7


#Linked marker for offline players (pseudo stored à tester)
summon marker 0 0 0 {Tags:["switch.temp.player","switch.new"],CustomName:'{"selector":"@s"}'}
execute as @e[tag=switch.new] run function switch:modes/traitors_game/roles/marker
scoreboard players operation @s switch.temp.id = #next_player_id switch.data

tag @s remove switch.temp

