
#> switch:maps/survival/jn_nature_box/scan_doors
#
# @within	switch:maps/survival/jn_nature_box/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_jn_nature_box switch.data 1

execute if score #scan_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 130000 130000 130019 130134
execute if score #scan_jn_nature_box switch.data matches 1 in switch:game run forceload add 130000 130000 130019 130134

execute if score #scan_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 130019 130000 130038 130134
execute if score #scan_jn_nature_box switch.data matches 1 in switch:game run forceload add 130019 130000 130038 130134

execute if score #scan_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 130038 130000 130058 130134
execute if score #scan_jn_nature_box switch.data matches 1 in switch:game run forceload add 130038 130000 130058 130134

execute if score #scan_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 130058 130000 130077 130134
execute if score #scan_jn_nature_box switch.data matches 1 in switch:game run forceload add 130058 130000 130077 130134

execute if score #scan_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 130077 130000 130096 130134
execute if score #scan_jn_nature_box switch.data matches 1 in switch:game run forceload add 130077 130000 130096 130134

execute if score #scan_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 130096 130000 130115 130134
execute if score #scan_jn_nature_box switch.data matches 1 in switch:game run forceload add 130096 130000 130115 130134

execute if score #scan_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 130115 130000 130134 130134
execute if score #scan_jn_nature_box switch.data matches 1 in switch:game run forceload add 130115 130000 130134 130134

execute if score #scan_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 130134 130000 130154 130134
execute if score #scan_jn_nature_box switch.data matches 1 in switch:game run forceload add 130134 130000 130154 130134

execute if score #scan_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 130154 130000 130173 130134
execute if score #scan_jn_nature_box switch.data matches 1 in switch:game run forceload add 130154 130000 130173 130134

execute if score #scan_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 130173 130000 130192 130134
execute if score #scan_jn_nature_box switch.data matches 1 in switch:game run forceload add 130173 130000 130192 130134

execute if score #scan_jn_nature_box switch.data matches 1 run data modify storage switch:maps to_scan.jn_nature_box set value 2b
execute if score #scan_jn_nature_box switch.data matches 1 run scoreboard players set #start_x_jn_nature_box switch.data 130001
execute if score #scan_jn_nature_box switch.data matches 1 run scoreboard players set #start_y_jn_nature_box switch.data 101
execute if score #scan_jn_nature_box switch.data matches 1 run scoreboard players set #start_z_jn_nature_box switch.data 130001
execute if score #scan_jn_nature_box switch.data matches 1 run scoreboard players set #end_x_jn_nature_box switch.data 130191
execute if score #scan_jn_nature_box switch.data matches 1 run scoreboard players set #end_y_jn_nature_box switch.data 179
execute if score #scan_jn_nature_box switch.data matches 1 run scoreboard players set #end_z_jn_nature_box switch.data 130133
execute if score #scan_jn_nature_box switch.data matches 1 run scoreboard players operation #curr_x_jn_nature_box switch.data = #start_x_jn_nature_box switch.data
execute if score #scan_jn_nature_box switch.data matches 1 run scoreboard players operation #curr_y_jn_nature_box switch.data = #start_y_jn_nature_box switch.data
execute if score #scan_jn_nature_box switch.data matches 1 run scoreboard players operation #curr_z_jn_nature_box switch.data = #start_z_jn_nature_box switch.data
execute if score #scan_jn_nature_box switch.data matches 1 run data modify storage switch:doors jn_nature_box set value []

execute if score #scan_jn_nature_box switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_jn_nature_box switch.data matches 30.. summon marker run function switch:maps/survival/jn_nature_box/scan_doors_on_marker

execute if score #scan_jn_nature_box switch.data matches 432 in minecraft:overworld run forceload remove 130000 130000 130019 130134
execute if score #scan_jn_nature_box switch.data matches 432 in switch:game run forceload remove 130000 130000 130019 130134

execute if score #scan_jn_nature_box switch.data matches 432 in minecraft:overworld run forceload remove 130019 130000 130038 130134
execute if score #scan_jn_nature_box switch.data matches 432 in switch:game run forceload remove 130019 130000 130038 130134

execute if score #scan_jn_nature_box switch.data matches 432 in minecraft:overworld run forceload remove 130038 130000 130058 130134
execute if score #scan_jn_nature_box switch.data matches 432 in switch:game run forceload remove 130038 130000 130058 130134

execute if score #scan_jn_nature_box switch.data matches 432 in minecraft:overworld run forceload remove 130058 130000 130077 130134
execute if score #scan_jn_nature_box switch.data matches 432 in switch:game run forceload remove 130058 130000 130077 130134

execute if score #scan_jn_nature_box switch.data matches 432 in minecraft:overworld run forceload remove 130077 130000 130096 130134
execute if score #scan_jn_nature_box switch.data matches 432 in switch:game run forceload remove 130077 130000 130096 130134

execute if score #scan_jn_nature_box switch.data matches 432 in minecraft:overworld run forceload remove 130096 130000 130115 130134
execute if score #scan_jn_nature_box switch.data matches 432 in switch:game run forceload remove 130096 130000 130115 130134

execute if score #scan_jn_nature_box switch.data matches 432 in minecraft:overworld run forceload remove 130115 130000 130134 130134
execute if score #scan_jn_nature_box switch.data matches 432 in switch:game run forceload remove 130115 130000 130134 130134

execute if score #scan_jn_nature_box switch.data matches 432 in minecraft:overworld run forceload remove 130134 130000 130154 130134
execute if score #scan_jn_nature_box switch.data matches 432 in switch:game run forceload remove 130134 130000 130154 130134

execute if score #scan_jn_nature_box switch.data matches 432 in minecraft:overworld run forceload remove 130154 130000 130173 130134
execute if score #scan_jn_nature_box switch.data matches 432 in switch:game run forceload remove 130154 130000 130173 130134

execute if score #scan_jn_nature_box switch.data matches 432 in minecraft:overworld run forceload remove 130173 130000 130192 130134
execute if score #scan_jn_nature_box switch.data matches 432 in switch:game run forceload remove 130173 130000 130192 130134

execute if score #scan_jn_nature_box switch.data matches 432 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"jn_nature_box","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"21","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_jn_nature_box switch.data matches 432 run data remove storage switch:maps to_scan.jn_nature_box
execute if score #scan_jn_nature_box switch.data matches 432 run scoreboard players reset #scan_jn_nature_box switch.data

execute if score #scan_jn_nature_box switch.data matches 1.. run schedule function switch:maps/survival/jn_nature_box/scan_doors 1t

