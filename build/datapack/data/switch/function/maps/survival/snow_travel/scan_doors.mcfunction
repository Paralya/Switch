
#> switch:maps/survival/snow_travel/scan_doors
#
# @within	switch:maps/survival/snow_travel/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_snow_travel switch.data 1

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -6000 -4000 -5986 -3795
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add -6000 -4000 -5986 -3795

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -5986 -4000 -5972 -3795
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add -5986 -4000 -5972 -3795

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -5972 -4000 -5959 -3795
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add -5972 -4000 -5959 -3795

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -5959 -4000 -5945 -3795
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add -5959 -4000 -5945 -3795

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -5945 -4000 -5931 -3795
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add -5945 -4000 -5931 -3795

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -5931 -4000 -5917 -3795
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add -5931 -4000 -5917 -3795

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -5917 -4000 -5903 -3795
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add -5917 -4000 -5903 -3795

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -5903 -4000 -5890 -3795
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add -5903 -4000 -5890 -3795

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -5890 -4000 -5876 -3795
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add -5890 -4000 -5876 -3795

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -5876 -4000 -5862 -3795
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add -5876 -4000 -5862 -3795

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -5862 -4000 -5848 -3795
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add -5862 -4000 -5848 -3795

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -5848 -4000 -5834 -3795
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add -5848 -4000 -5834 -3795

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -5834 -4000 -5821 -3795
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add -5834 -4000 -5821 -3795

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -5821 -4000 -5807 -3795
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add -5821 -4000 -5807 -3795

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -5807 -4000 -5793 -3795
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add -5807 -4000 -5793 -3795

execute if score #scan_snow_travel switch.data matches 1 run data modify storage switch:maps to_scan.snow_travel set value 2b
execute if score #scan_snow_travel switch.data matches 1 run scoreboard players set #start_x_snow_travel switch.data -5999
execute if score #scan_snow_travel switch.data matches 1 run scoreboard players set #start_y_snow_travel switch.data 101
execute if score #scan_snow_travel switch.data matches 1 run scoreboard players set #start_z_snow_travel switch.data -3999
execute if score #scan_snow_travel switch.data matches 1 run scoreboard players set #end_x_snow_travel switch.data -5794
execute if score #scan_snow_travel switch.data matches 1 run scoreboard players set #end_y_snow_travel switch.data 185
execute if score #scan_snow_travel switch.data matches 1 run scoreboard players set #end_z_snow_travel switch.data -3796
execute if score #scan_snow_travel switch.data matches 1 run scoreboard players operation #curr_x_snow_travel switch.data = #start_x_snow_travel switch.data
execute if score #scan_snow_travel switch.data matches 1 run scoreboard players operation #curr_y_snow_travel switch.data = #start_y_snow_travel switch.data
execute if score #scan_snow_travel switch.data matches 1 run scoreboard players operation #curr_z_snow_travel switch.data = #start_z_snow_travel switch.data
execute if score #scan_snow_travel switch.data matches 1 run data modify storage switch:doors snow_travel set value []

execute if score #scan_snow_travel switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_snow_travel switch.data matches 30.. summon marker run function switch:maps/survival/snow_travel/scan_doors_on_marker

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove -6000 -4000 -5986 -3795
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove -6000 -4000 -5986 -3795

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove -5986 -4000 -5972 -3795
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove -5986 -4000 -5972 -3795

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove -5972 -4000 -5959 -3795
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove -5972 -4000 -5959 -3795

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove -5959 -4000 -5945 -3795
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove -5959 -4000 -5945 -3795

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove -5945 -4000 -5931 -3795
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove -5945 -4000 -5931 -3795

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove -5931 -4000 -5917 -3795
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove -5931 -4000 -5917 -3795

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove -5917 -4000 -5903 -3795
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove -5917 -4000 -5903 -3795

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove -5903 -4000 -5890 -3795
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove -5903 -4000 -5890 -3795

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove -5890 -4000 -5876 -3795
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove -5890 -4000 -5876 -3795

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove -5876 -4000 -5862 -3795
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove -5876 -4000 -5862 -3795

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove -5862 -4000 -5848 -3795
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove -5862 -4000 -5848 -3795

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove -5848 -4000 -5834 -3795
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove -5848 -4000 -5834 -3795

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove -5834 -4000 -5821 -3795
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove -5834 -4000 -5821 -3795

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove -5821 -4000 -5807 -3795
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove -5821 -4000 -5807 -3795

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove -5807 -4000 -5793 -3795
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove -5807 -4000 -5793 -3795

execute if score #scan_snow_travel switch.data matches 745 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"snow_travel","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"37","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_snow_travel switch.data matches 745 run data remove storage switch:maps to_scan.snow_travel
execute if score #scan_snow_travel switch.data matches 745 run scoreboard players reset #scan_snow_travel switch.data

execute if score #scan_snow_travel switch.data matches 1.. run schedule function switch:maps/survival/snow_travel/scan_doors 1t

