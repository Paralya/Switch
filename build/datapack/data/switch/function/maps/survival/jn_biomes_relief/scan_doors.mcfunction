
#> switch:maps/survival/jn_biomes_relief/scan_doors
#
# @within	switch:maps/survival/jn_biomes_relief/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_jn_biomes_relief switch.data 1

execute if score #scan_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add -10000 6000 -9980 6139
execute if score #scan_jn_biomes_relief switch.data matches 1 in switch:game run forceload add -10000 6000 -9980 6139

execute if score #scan_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add -9980 6000 -9960 6139
execute if score #scan_jn_biomes_relief switch.data matches 1 in switch:game run forceload add -9980 6000 -9960 6139

execute if score #scan_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add -9960 6000 -9941 6139
execute if score #scan_jn_biomes_relief switch.data matches 1 in switch:game run forceload add -9960 6000 -9941 6139

execute if score #scan_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add -9941 6000 -9921 6139
execute if score #scan_jn_biomes_relief switch.data matches 1 in switch:game run forceload add -9941 6000 -9921 6139

execute if score #scan_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add -9921 6000 -9901 6139
execute if score #scan_jn_biomes_relief switch.data matches 1 in switch:game run forceload add -9921 6000 -9901 6139

execute if score #scan_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add -9901 6000 -9881 6139
execute if score #scan_jn_biomes_relief switch.data matches 1 in switch:game run forceload add -9901 6000 -9881 6139

execute if score #scan_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add -9881 6000 -9861 6139
execute if score #scan_jn_biomes_relief switch.data matches 1 in switch:game run forceload add -9881 6000 -9861 6139

execute if score #scan_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add -9861 6000 -9842 6139
execute if score #scan_jn_biomes_relief switch.data matches 1 in switch:game run forceload add -9861 6000 -9842 6139

execute if score #scan_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add -9842 6000 -9822 6139
execute if score #scan_jn_biomes_relief switch.data matches 1 in switch:game run forceload add -9842 6000 -9822 6139

execute if score #scan_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add -9822 6000 -9802 6139
execute if score #scan_jn_biomes_relief switch.data matches 1 in switch:game run forceload add -9822 6000 -9802 6139

execute if score #scan_jn_biomes_relief switch.data matches 1 run data modify storage switch:maps to_scan.jn_biomes_relief set value 2b
execute if score #scan_jn_biomes_relief switch.data matches 1 run scoreboard players set #start_x_jn_biomes_relief switch.data -9999
execute if score #scan_jn_biomes_relief switch.data matches 1 run scoreboard players set #start_y_jn_biomes_relief switch.data 101
execute if score #scan_jn_biomes_relief switch.data matches 1 run scoreboard players set #start_z_jn_biomes_relief switch.data 6001
execute if score #scan_jn_biomes_relief switch.data matches 1 run scoreboard players set #end_x_jn_biomes_relief switch.data -9803
execute if score #scan_jn_biomes_relief switch.data matches 1 run scoreboard players set #end_y_jn_biomes_relief switch.data 188
execute if score #scan_jn_biomes_relief switch.data matches 1 run scoreboard players set #end_z_jn_biomes_relief switch.data 6138
execute if score #scan_jn_biomes_relief switch.data matches 1 run scoreboard players operation #curr_x_jn_biomes_relief switch.data = #start_x_jn_biomes_relief switch.data
execute if score #scan_jn_biomes_relief switch.data matches 1 run scoreboard players operation #curr_y_jn_biomes_relief switch.data = #start_y_jn_biomes_relief switch.data
execute if score #scan_jn_biomes_relief switch.data matches 1 run scoreboard players operation #curr_z_jn_biomes_relief switch.data = #start_z_jn_biomes_relief switch.data
execute if score #scan_jn_biomes_relief switch.data matches 1 run data modify storage switch:doors jn_biomes_relief set value []

execute if score #scan_jn_biomes_relief switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_jn_biomes_relief switch.data matches 30.. summon marker run function switch:maps/survival/jn_biomes_relief/scan_doors_on_marker

execute if score #scan_jn_biomes_relief switch.data matches 509 in minecraft:overworld run forceload remove -10000 6000 -9980 6139
execute if score #scan_jn_biomes_relief switch.data matches 509 in switch:game run forceload remove -10000 6000 -9980 6139

execute if score #scan_jn_biomes_relief switch.data matches 509 in minecraft:overworld run forceload remove -9980 6000 -9960 6139
execute if score #scan_jn_biomes_relief switch.data matches 509 in switch:game run forceload remove -9980 6000 -9960 6139

execute if score #scan_jn_biomes_relief switch.data matches 509 in minecraft:overworld run forceload remove -9960 6000 -9941 6139
execute if score #scan_jn_biomes_relief switch.data matches 509 in switch:game run forceload remove -9960 6000 -9941 6139

execute if score #scan_jn_biomes_relief switch.data matches 509 in minecraft:overworld run forceload remove -9941 6000 -9921 6139
execute if score #scan_jn_biomes_relief switch.data matches 509 in switch:game run forceload remove -9941 6000 -9921 6139

execute if score #scan_jn_biomes_relief switch.data matches 509 in minecraft:overworld run forceload remove -9921 6000 -9901 6139
execute if score #scan_jn_biomes_relief switch.data matches 509 in switch:game run forceload remove -9921 6000 -9901 6139

execute if score #scan_jn_biomes_relief switch.data matches 509 in minecraft:overworld run forceload remove -9901 6000 -9881 6139
execute if score #scan_jn_biomes_relief switch.data matches 509 in switch:game run forceload remove -9901 6000 -9881 6139

execute if score #scan_jn_biomes_relief switch.data matches 509 in minecraft:overworld run forceload remove -9881 6000 -9861 6139
execute if score #scan_jn_biomes_relief switch.data matches 509 in switch:game run forceload remove -9881 6000 -9861 6139

execute if score #scan_jn_biomes_relief switch.data matches 509 in minecraft:overworld run forceload remove -9861 6000 -9842 6139
execute if score #scan_jn_biomes_relief switch.data matches 509 in switch:game run forceload remove -9861 6000 -9842 6139

execute if score #scan_jn_biomes_relief switch.data matches 509 in minecraft:overworld run forceload remove -9842 6000 -9822 6139
execute if score #scan_jn_biomes_relief switch.data matches 509 in switch:game run forceload remove -9842 6000 -9822 6139

execute if score #scan_jn_biomes_relief switch.data matches 509 in minecraft:overworld run forceload remove -9822 6000 -9802 6139
execute if score #scan_jn_biomes_relief switch.data matches 509 in switch:game run forceload remove -9822 6000 -9802 6139

execute if score #scan_jn_biomes_relief switch.data matches 509 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"jn_biomes_relief","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"25","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_jn_biomes_relief switch.data matches 509 run data remove storage switch:maps to_scan.jn_biomes_relief
execute if score #scan_jn_biomes_relief switch.data matches 509 run scoreboard players reset #scan_jn_biomes_relief switch.data

execute if score #scan_jn_biomes_relief switch.data matches 1.. run schedule function switch:maps/survival/jn_biomes_relief/scan_doors 1t

