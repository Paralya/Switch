
#> switch:maps/survival/werewolf_village/scan_doors
#
# @within	switch:maps/survival/werewolf_village/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_werewolf_village switch.data 1

execute if score #scan_werewolf_village switch.data matches 1 in minecraft:overworld run forceload add 93000 93000 93020 93122
execute if score #scan_werewolf_village switch.data matches 1 in switch:game run forceload add 93000 93000 93020 93122

execute if score #scan_werewolf_village switch.data matches 1 in minecraft:overworld run forceload add 93020 93000 93041 93122
execute if score #scan_werewolf_village switch.data matches 1 in switch:game run forceload add 93020 93000 93041 93122

execute if score #scan_werewolf_village switch.data matches 1 in minecraft:overworld run forceload add 93041 93000 93061 93122
execute if score #scan_werewolf_village switch.data matches 1 in switch:game run forceload add 93041 93000 93061 93122

execute if score #scan_werewolf_village switch.data matches 1 in minecraft:overworld run forceload add 93061 93000 93081 93122
execute if score #scan_werewolf_village switch.data matches 1 in switch:game run forceload add 93061 93000 93081 93122

execute if score #scan_werewolf_village switch.data matches 1 in minecraft:overworld run forceload add 93081 93000 93102 93122
execute if score #scan_werewolf_village switch.data matches 1 in switch:game run forceload add 93081 93000 93102 93122

execute if score #scan_werewolf_village switch.data matches 1 in minecraft:overworld run forceload add 93102 93000 93122 93122
execute if score #scan_werewolf_village switch.data matches 1 in switch:game run forceload add 93102 93000 93122 93122

execute if score #scan_werewolf_village switch.data matches 1 run data modify storage switch:maps to_scan.werewolf_village set value 2b
execute if score #scan_werewolf_village switch.data matches 1 run scoreboard players set #start_x_werewolf_village switch.data 93001
execute if score #scan_werewolf_village switch.data matches 1 run scoreboard players set #start_y_werewolf_village switch.data 1
execute if score #scan_werewolf_village switch.data matches 1 run scoreboard players set #start_z_werewolf_village switch.data 93001
execute if score #scan_werewolf_village switch.data matches 1 run scoreboard players set #end_x_werewolf_village switch.data 93121
execute if score #scan_werewolf_village switch.data matches 1 run scoreboard players set #end_y_werewolf_village switch.data 63
execute if score #scan_werewolf_village switch.data matches 1 run scoreboard players set #end_z_werewolf_village switch.data 93121
execute if score #scan_werewolf_village switch.data matches 1 run scoreboard players operation #curr_x_werewolf_village switch.data = #start_x_werewolf_village switch.data
execute if score #scan_werewolf_village switch.data matches 1 run scoreboard players operation #curr_y_werewolf_village switch.data = #start_y_werewolf_village switch.data
execute if score #scan_werewolf_village switch.data matches 1 run scoreboard players operation #curr_z_werewolf_village switch.data = #start_z_werewolf_village switch.data
execute if score #scan_werewolf_village switch.data matches 1 run data modify storage switch:doors werewolf_village set value []


execute if score #scan_werewolf_village switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_werewolf_village switch.data matches 30.. summon marker run function switch:maps/survival/werewolf_village/scan_doors_on_marker

execute if score #scan_werewolf_village switch.data matches 215 in minecraft:overworld run forceload remove 93000 93000 93020 93122
execute if score #scan_werewolf_village switch.data matches 215 in switch:game run forceload remove 93000 93000 93020 93122

execute if score #scan_werewolf_village switch.data matches 215 in minecraft:overworld run forceload remove 93020 93000 93041 93122
execute if score #scan_werewolf_village switch.data matches 215 in switch:game run forceload remove 93020 93000 93041 93122

execute if score #scan_werewolf_village switch.data matches 215 in minecraft:overworld run forceload remove 93041 93000 93061 93122
execute if score #scan_werewolf_village switch.data matches 215 in switch:game run forceload remove 93041 93000 93061 93122

execute if score #scan_werewolf_village switch.data matches 215 in minecraft:overworld run forceload remove 93061 93000 93081 93122
execute if score #scan_werewolf_village switch.data matches 215 in switch:game run forceload remove 93061 93000 93081 93122

execute if score #scan_werewolf_village switch.data matches 215 in minecraft:overworld run forceload remove 93081 93000 93102 93122
execute if score #scan_werewolf_village switch.data matches 215 in switch:game run forceload remove 93081 93000 93102 93122

execute if score #scan_werewolf_village switch.data matches 215 in minecraft:overworld run forceload remove 93102 93000 93122 93122
execute if score #scan_werewolf_village switch.data matches 215 in switch:game run forceload remove 93102 93000 93122 93122

execute if score #scan_werewolf_village switch.data matches 215 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"werewolf_village","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"10","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_werewolf_village switch.data matches 215 run data remove storage switch:maps to_scan.werewolf_village
execute if score #scan_werewolf_village switch.data matches 215 run scoreboard players reset #scan_werewolf_village switch.data

execute if score #scan_werewolf_village switch.data matches 1.. run schedule function switch:maps/survival/werewolf_village/scan_doors 1t

