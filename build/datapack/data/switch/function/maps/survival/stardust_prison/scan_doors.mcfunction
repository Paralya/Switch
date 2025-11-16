
#> switch:maps/survival/stardust_prison/scan_doors
#
# @within	switch:maps/survival/stardust_prison/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_stardust_prison switch.data 1

execute if score #scan_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add 106000 106000 106015 106178
execute if score #scan_stardust_prison switch.data matches 1 in switch:game run forceload add 106000 106000 106015 106178

execute if score #scan_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add 106015 106000 106029 106178
execute if score #scan_stardust_prison switch.data matches 1 in switch:game run forceload add 106015 106000 106029 106178

execute if score #scan_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add 106029 106000 106044 106178
execute if score #scan_stardust_prison switch.data matches 1 in switch:game run forceload add 106029 106000 106044 106178

execute if score #scan_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add 106044 106000 106059 106178
execute if score #scan_stardust_prison switch.data matches 1 in switch:game run forceload add 106044 106000 106059 106178

execute if score #scan_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add 106059 106000 106073 106178
execute if score #scan_stardust_prison switch.data matches 1 in switch:game run forceload add 106059 106000 106073 106178

execute if score #scan_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add 106073 106000 106088 106178
execute if score #scan_stardust_prison switch.data matches 1 in switch:game run forceload add 106073 106000 106088 106178

execute if score #scan_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add 106088 106000 106103 106178
execute if score #scan_stardust_prison switch.data matches 1 in switch:game run forceload add 106088 106000 106103 106178

execute if score #scan_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add 106103 106000 106117 106178
execute if score #scan_stardust_prison switch.data matches 1 in switch:game run forceload add 106103 106000 106117 106178

execute if score #scan_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add 106117 106000 106132 106178
execute if score #scan_stardust_prison switch.data matches 1 in switch:game run forceload add 106117 106000 106132 106178

execute if score #scan_stardust_prison switch.data matches 1 run data modify storage switch:maps to_scan.stardust_prison set value 2b
execute if score #scan_stardust_prison switch.data matches 1 run scoreboard players set #start_x_stardust_prison switch.data 106001
execute if score #scan_stardust_prison switch.data matches 1 run scoreboard players set #start_y_stardust_prison switch.data 101
execute if score #scan_stardust_prison switch.data matches 1 run scoreboard players set #start_z_stardust_prison switch.data 106001
execute if score #scan_stardust_prison switch.data matches 1 run scoreboard players set #end_x_stardust_prison switch.data 106131
execute if score #scan_stardust_prison switch.data matches 1 run scoreboard players set #end_y_stardust_prison switch.data 156
execute if score #scan_stardust_prison switch.data matches 1 run scoreboard players set #end_z_stardust_prison switch.data 106177
execute if score #scan_stardust_prison switch.data matches 1 run scoreboard players operation #curr_x_stardust_prison switch.data = #start_x_stardust_prison switch.data
execute if score #scan_stardust_prison switch.data matches 1 run scoreboard players operation #curr_y_stardust_prison switch.data = #start_y_stardust_prison switch.data
execute if score #scan_stardust_prison switch.data matches 1 run scoreboard players operation #curr_z_stardust_prison switch.data = #start_z_stardust_prison switch.data
execute if score #scan_stardust_prison switch.data matches 1 run data modify storage switch:doors stardust_prison set value []

execute if score #scan_stardust_prison switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_stardust_prison switch.data matches 30.. summon marker run function switch:maps/survival/stardust_prison/scan_doors_on_marker

execute if score #scan_stardust_prison switch.data matches 290 in minecraft:overworld run forceload remove 106000 106000 106015 106178
execute if score #scan_stardust_prison switch.data matches 290 in switch:game run forceload remove 106000 106000 106015 106178

execute if score #scan_stardust_prison switch.data matches 290 in minecraft:overworld run forceload remove 106015 106000 106029 106178
execute if score #scan_stardust_prison switch.data matches 290 in switch:game run forceload remove 106015 106000 106029 106178

execute if score #scan_stardust_prison switch.data matches 290 in minecraft:overworld run forceload remove 106029 106000 106044 106178
execute if score #scan_stardust_prison switch.data matches 290 in switch:game run forceload remove 106029 106000 106044 106178

execute if score #scan_stardust_prison switch.data matches 290 in minecraft:overworld run forceload remove 106044 106000 106059 106178
execute if score #scan_stardust_prison switch.data matches 290 in switch:game run forceload remove 106044 106000 106059 106178

execute if score #scan_stardust_prison switch.data matches 290 in minecraft:overworld run forceload remove 106059 106000 106073 106178
execute if score #scan_stardust_prison switch.data matches 290 in switch:game run forceload remove 106059 106000 106073 106178

execute if score #scan_stardust_prison switch.data matches 290 in minecraft:overworld run forceload remove 106073 106000 106088 106178
execute if score #scan_stardust_prison switch.data matches 290 in switch:game run forceload remove 106073 106000 106088 106178

execute if score #scan_stardust_prison switch.data matches 290 in minecraft:overworld run forceload remove 106088 106000 106103 106178
execute if score #scan_stardust_prison switch.data matches 290 in switch:game run forceload remove 106088 106000 106103 106178

execute if score #scan_stardust_prison switch.data matches 290 in minecraft:overworld run forceload remove 106103 106000 106117 106178
execute if score #scan_stardust_prison switch.data matches 290 in switch:game run forceload remove 106103 106000 106117 106178

execute if score #scan_stardust_prison switch.data matches 290 in minecraft:overworld run forceload remove 106117 106000 106132 106178
execute if score #scan_stardust_prison switch.data matches 290 in switch:game run forceload remove 106117 106000 106132 106178

execute if score #scan_stardust_prison switch.data matches 290 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"stardust_prison","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"14","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_stardust_prison switch.data matches 290 run data remove storage switch:maps to_scan.stardust_prison
execute if score #scan_stardust_prison switch.data matches 290 run scoreboard players reset #scan_stardust_prison switch.data

execute if score #scan_stardust_prison switch.data matches 1.. run schedule function switch:maps/survival/stardust_prison/scan_doors 1t

