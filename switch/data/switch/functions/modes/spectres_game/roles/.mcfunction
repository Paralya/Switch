
tag @s add switch.temp

#Role selection
scoreboard players add #next_player_id switch.data 1
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run team join switch.temp.visible @s
execute if score #next_role switch.data matches 1 run tag @s add switch.spectres_game.visible
execute if score #next_role switch.data matches 2 run team join switch.temp.spectre @s
execute if score #next_role switch.data matches 2 run tag @s add switch.spectres_game.spectre
execute if score #next_role switch.data matches 2 run scoreboard players set #next_role switch.data 0


#Linked marker for offline players
setblock 0 0 0 yellow_shulker_box
loot insert 0 0 0 loot switch:get_username
summon marker 0 0 0 {Tags:["switch.temp.player","switch.new"]}
execute as @e[tag=switch.new] run function switch:modes/spectres_game/roles/marker
scoreboard players operation @s switch.temp.id = #next_player_id switch.data
setblock 0 0 0 air

tag @s remove switch.temp

