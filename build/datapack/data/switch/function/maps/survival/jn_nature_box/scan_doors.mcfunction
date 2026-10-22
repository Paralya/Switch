
#> switch:maps/survival/jn_nature_box/scan_doors
#
# @within	switch:maps/survival/jn_nature_box/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_jn_nature_box switch.data 1

execute if score #scan_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 0 10000 19 10134
execute if score #scan_jn_nature_box switch.data matches 1 in switch:game run forceload add 0 10000 19 10134

execute if score #scan_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 19 10000 38 10134
execute if score #scan_jn_nature_box switch.data matches 1 in switch:game run forceload add 19 10000 38 10134

execute if score #scan_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 38 10000 58 10134
execute if score #scan_jn_nature_box switch.data matches 1 in switch:game run forceload add 38 10000 58 10134

execute if score #scan_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 58 10000 77 10134
execute if score #scan_jn_nature_box switch.data matches 1 in switch:game run forceload add 58 10000 77 10134

execute if score #scan_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 77 10000 96 10134
execute if score #scan_jn_nature_box switch.data matches 1 in switch:game run forceload add 77 10000 96 10134

execute if score #scan_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 96 10000 115 10134
execute if score #scan_jn_nature_box switch.data matches 1 in switch:game run forceload add 96 10000 115 10134

execute if score #scan_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 115 10000 134 10134
execute if score #scan_jn_nature_box switch.data matches 1 in switch:game run forceload add 115 10000 134 10134

execute if score #scan_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 134 10000 154 10134
execute if score #scan_jn_nature_box switch.data matches 1 in switch:game run forceload add 134 10000 154 10134

execute if score #scan_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 154 10000 173 10134
execute if score #scan_jn_nature_box switch.data matches 1 in switch:game run forceload add 154 10000 173 10134

execute if score #scan_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 173 10000 192 10134
execute if score #scan_jn_nature_box switch.data matches 1 in switch:game run forceload add 173 10000 192 10134

execute if score #scan_jn_nature_box switch.data matches 1 run data modify storage switch:maps to_scan.jn_nature_box set value 2b
execute if score #scan_jn_nature_box switch.data matches 1 run scoreboard players set #start_x_jn_nature_box switch.data 1
execute if score #scan_jn_nature_box switch.data matches 1 run scoreboard players set #start_y_jn_nature_box switch.data 101
execute if score #scan_jn_nature_box switch.data matches 1 run scoreboard players set #start_z_jn_nature_box switch.data 10001
execute if score #scan_jn_nature_box switch.data matches 1 run scoreboard players set #end_x_jn_nature_box switch.data 191
execute if score #scan_jn_nature_box switch.data matches 1 run scoreboard players set #end_y_jn_nature_box switch.data 179
execute if score #scan_jn_nature_box switch.data matches 1 run scoreboard players set #end_z_jn_nature_box switch.data 10133
execute if score #scan_jn_nature_box switch.data matches 1 run scoreboard players operation #curr_x_jn_nature_box switch.data = #start_x_jn_nature_box switch.data
execute if score #scan_jn_nature_box switch.data matches 1 run scoreboard players operation #curr_y_jn_nature_box switch.data = #start_y_jn_nature_box switch.data
execute if score #scan_jn_nature_box switch.data matches 1 run scoreboard players operation #curr_z_jn_nature_box switch.data = #start_z_jn_nature_box switch.data
execute if score #scan_jn_nature_box switch.data matches 1 run data modify storage switch:doors jn_nature_box set value []

execute if score #scan_jn_nature_box switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_jn_nature_box switch.data matches 30.. summon marker run function switch:maps/survival/jn_nature_box/scan_doors_on_marker

execute if score #scan_jn_nature_box switch.data matches 432 in minecraft:overworld run forceload remove 0 10000 19 10134
execute if score #scan_jn_nature_box switch.data matches 432 in switch:game run forceload remove 0 10000 19 10134

execute if score #scan_jn_nature_box switch.data matches 432 in minecraft:overworld run forceload remove 19 10000 38 10134
execute if score #scan_jn_nature_box switch.data matches 432 in switch:game run forceload remove 19 10000 38 10134

execute if score #scan_jn_nature_box switch.data matches 432 in minecraft:overworld run forceload remove 38 10000 58 10134
execute if score #scan_jn_nature_box switch.data matches 432 in switch:game run forceload remove 38 10000 58 10134

execute if score #scan_jn_nature_box switch.data matches 432 in minecraft:overworld run forceload remove 58 10000 77 10134
execute if score #scan_jn_nature_box switch.data matches 432 in switch:game run forceload remove 58 10000 77 10134

execute if score #scan_jn_nature_box switch.data matches 432 in minecraft:overworld run forceload remove 77 10000 96 10134
execute if score #scan_jn_nature_box switch.data matches 432 in switch:game run forceload remove 77 10000 96 10134

execute if score #scan_jn_nature_box switch.data matches 432 in minecraft:overworld run forceload remove 96 10000 115 10134
execute if score #scan_jn_nature_box switch.data matches 432 in switch:game run forceload remove 96 10000 115 10134

execute if score #scan_jn_nature_box switch.data matches 432 in minecraft:overworld run forceload remove 115 10000 134 10134
execute if score #scan_jn_nature_box switch.data matches 432 in switch:game run forceload remove 115 10000 134 10134

execute if score #scan_jn_nature_box switch.data matches 432 in minecraft:overworld run forceload remove 134 10000 154 10134
execute if score #scan_jn_nature_box switch.data matches 432 in switch:game run forceload remove 134 10000 154 10134

execute if score #scan_jn_nature_box switch.data matches 432 in minecraft:overworld run forceload remove 154 10000 173 10134
execute if score #scan_jn_nature_box switch.data matches 432 in switch:game run forceload remove 154 10000 173 10134

execute if score #scan_jn_nature_box switch.data matches 432 in minecraft:overworld run forceload remove 173 10000 192 10134
execute if score #scan_jn_nature_box switch.data matches 432 in switch:game run forceload remove 173 10000 192 10134

execute if score #scan_jn_nature_box switch.data matches 432 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"jn_nature_box","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"21","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_jn_nature_box switch.data matches 432 run data remove storage switch:maps to_scan.jn_nature_box
execute if score #scan_jn_nature_box switch.data matches 432 run scoreboard players reset #scan_jn_nature_box switch.data

execute if score #scan_jn_nature_box switch.data matches 1.. run schedule function switch:maps/survival/jn_nature_box/scan_doors 1t

