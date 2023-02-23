
tag @s add switch.temp

# Role selection
scoreboard players add #next_player_id switch.data 1
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run team join switch.temp.visible @s
execute if score #next_role switch.data matches 1 run tag @s add switch.traitors_game.detective
execute if score #next_role switch.data matches 1 run attribute @s generic.max_health modifier add 1-1-1-1-2 "Inspecteur" -0.2 multiply_base
execute if score #next_role switch.data matches 2 run tag @s add switch.traitors_game.traitor
execute if score #next_role switch.data matches 3 run tag @s add switch.traitors_game.ninja
execute if score #next_role switch.data matches 3 run tag @s add switch.traitors_game.second_life
execute if score #next_role switch.data matches 3 run attribute @s generic.movement_speed modifier add 1-1-1-1-1 "Ninja" 0.15 multiply_base
execute if score #next_role switch.data matches 4 run tag @s add switch.traitors_game.traitor
execute if score #next_role switch.data matches 5 run tag @s add switch.traitors_game.innocent
execute if score #next_role switch.data matches 6 run tag @s add switch.traitors_game.innocent
execute if score #next_role switch.data matches 7 run tag @s add switch.traitors_game.traitor
execute if score #next_role switch.data matches 7 run tag @s add switch.traitors_game.big_traitor
execute if score #next_role switch.data matches 7 run attribute @s generic.max_health modifier add 1-1-1-1-2 "Gros Traitre" 0.5 multiply_base
execute if score #next_role switch.data matches 8 run tag @s add switch.traitors_game.innocent
execute if score #next_role switch.data matches 9 run tag @s add switch.traitors_game.innocent
execute if score #next_role switch.data matches 10 run tag @s add switch.traitors_game.traitor
execute if score #next_role switch.data matches 10 run scoreboard players set #next_role switch.data 7


# Linked marker for offline players
setblock 0 0 0 yellow_shulker_box
loot insert 0 0 0 loot switch:get_username
summon marker 0 0 0 {Tags:["switch.temp.player","switch.new"]}
execute as @e[tag=switch.new] run function switch:modes/traitors_game/roles/marker
scoreboard players operation @s switch.temp.id = #next_player_id switch.data
setblock 0 0 0 air

tag @s remove switch.temp

