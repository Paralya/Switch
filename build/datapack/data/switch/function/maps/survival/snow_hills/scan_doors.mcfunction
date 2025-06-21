
#> switch:maps/survival/snow_hills/scan_doors
#
# @within	switch:maps/survival/snow_hills/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_snow_hills switch.data 1

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 49906 49918 49922 50103
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 49906 49918 49922 50103

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 49922 49918 49938 50103
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 49922 49918 49938 50103

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 49938 49918 49954 50103
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 49938 49918 49954 50103

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 49954 49918 49970 50103
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 49954 49918 49970 50103

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 49970 49918 49986 50103
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 49970 49918 49986 50103

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 49986 49918 50002 50103
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 49986 49918 50002 50103

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50002 49918 50018 50103
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 50002 49918 50018 50103

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50018 49918 50033 50103
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 50018 49918 50033 50103

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50033 49918 50049 50103
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 50033 49918 50049 50103

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50049 49918 50065 50103
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 50049 49918 50065 50103

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50065 49918 50081 50103
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 50065 49918 50081 50103

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50081 49918 50097 50103
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 50081 49918 50097 50103

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50097 49918 50113 50103
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 50097 49918 50113 50103

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50113 49918 50129 50103
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 50113 49918 50129 50103

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50129 49918 50145 50103
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 50129 49918 50145 50103

execute if score #scan_snow_hills switch.data matches 1 run data modify storage switch:maps to_scan.snow_hills set value 2b
execute if score #scan_snow_hills switch.data matches 1 run scoreboard players set #start_x_snow_hills switch.data 49907
execute if score #scan_snow_hills switch.data matches 1 run scoreboard players set #start_y_snow_hills switch.data 1
execute if score #scan_snow_hills switch.data matches 1 run scoreboard players set #start_z_snow_hills switch.data 49919
execute if score #scan_snow_hills switch.data matches 1 run scoreboard players set #end_x_snow_hills switch.data 50144
execute if score #scan_snow_hills switch.data matches 1 run scoreboard players set #end_y_snow_hills switch.data 59
execute if score #scan_snow_hills switch.data matches 1 run scoreboard players set #end_z_snow_hills switch.data 50102
execute if score #scan_snow_hills switch.data matches 1 run scoreboard players operation #curr_x_snow_hills switch.data = #start_x_snow_hills switch.data
execute if score #scan_snow_hills switch.data matches 1 run scoreboard players operation #curr_y_snow_hills switch.data = #start_y_snow_hills switch.data
execute if score #scan_snow_hills switch.data matches 1 run scoreboard players operation #curr_z_snow_hills switch.data = #start_z_snow_hills switch.data
execute if score #scan_snow_hills switch.data matches 1 run data modify storage switch:doors snow_hills set value []

execute if score #scan_snow_hills switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_snow_hills switch.data matches 30.. summon marker run function switch:maps/survival/snow_hills/scan_doors_on_marker

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 49906 49918 49922 50103
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 49906 49918 49922 50103

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 49922 49918 49938 50103
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 49922 49918 49938 50103

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 49938 49918 49954 50103
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 49938 49918 49954 50103

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 49954 49918 49970 50103
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 49954 49918 49970 50103

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 49970 49918 49986 50103
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 49970 49918 49986 50103

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 49986 49918 50002 50103
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 49986 49918 50002 50103

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 50002 49918 50018 50103
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 50002 49918 50018 50103

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 50018 49918 50033 50103
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 50018 49918 50033 50103

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 50033 49918 50049 50103
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 50033 49918 50049 50103

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 50049 49918 50065 50103
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 50049 49918 50065 50103

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 50065 49918 50081 50103
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 50065 49918 50081 50103

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 50081 49918 50097 50103
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 50081 49918 50097 50103

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 50097 49918 50113 50103
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 50097 49918 50113 50103

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 50113 49918 50129 50103
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 50113 49918 50129 50103

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 50129 49918 50145 50103
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 50129 49918 50145 50103

execute if score #scan_snow_hills switch.data matches 547 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"snow_hills","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"27","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_snow_hills switch.data matches 547 run data remove storage switch:maps to_scan.snow_hills
execute if score #scan_snow_hills switch.data matches 547 run scoreboard players reset #scan_snow_hills switch.data

execute if score #scan_snow_hills switch.data matches 1.. run schedule function switch:maps/survival/snow_hills/scan_doors 1t

