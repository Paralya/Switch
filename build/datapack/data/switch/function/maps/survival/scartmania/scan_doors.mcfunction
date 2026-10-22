
#> switch:maps/survival/scartmania/scan_doors
#
# @within	switch:maps/survival/scartmania/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_scartmania switch.data 1

execute if score #scan_scartmania switch.data matches 1 in minecraft:overworld run forceload add 2000 -8000 2015 -7812
execute if score #scan_scartmania switch.data matches 1 in switch:game run forceload add 2000 -8000 2015 -7812

execute if score #scan_scartmania switch.data matches 1 in minecraft:overworld run forceload add 2015 -8000 2029 -7812
execute if score #scan_scartmania switch.data matches 1 in switch:game run forceload add 2015 -8000 2029 -7812

execute if score #scan_scartmania switch.data matches 1 in minecraft:overworld run forceload add 2029 -8000 2044 -7812
execute if score #scan_scartmania switch.data matches 1 in switch:game run forceload add 2029 -8000 2044 -7812

execute if score #scan_scartmania switch.data matches 1 in minecraft:overworld run forceload add 2044 -8000 2058 -7812
execute if score #scan_scartmania switch.data matches 1 in switch:game run forceload add 2044 -8000 2058 -7812

execute if score #scan_scartmania switch.data matches 1 in minecraft:overworld run forceload add 2058 -8000 2073 -7812
execute if score #scan_scartmania switch.data matches 1 in switch:game run forceload add 2058 -8000 2073 -7812

execute if score #scan_scartmania switch.data matches 1 in minecraft:overworld run forceload add 2073 -8000 2087 -7812
execute if score #scan_scartmania switch.data matches 1 in switch:game run forceload add 2073 -8000 2087 -7812

execute if score #scan_scartmania switch.data matches 1 in minecraft:overworld run forceload add 2087 -8000 2102 -7812
execute if score #scan_scartmania switch.data matches 1 in switch:game run forceload add 2087 -8000 2102 -7812

execute if score #scan_scartmania switch.data matches 1 in minecraft:overworld run forceload add 2102 -8000 2116 -7812
execute if score #scan_scartmania switch.data matches 1 in switch:game run forceload add 2102 -8000 2116 -7812

execute if score #scan_scartmania switch.data matches 1 in minecraft:overworld run forceload add 2116 -8000 2131 -7812
execute if score #scan_scartmania switch.data matches 1 in switch:game run forceload add 2116 -8000 2131 -7812

execute if score #scan_scartmania switch.data matches 1 in minecraft:overworld run forceload add 2131 -8000 2145 -7812
execute if score #scan_scartmania switch.data matches 1 in switch:game run forceload add 2131 -8000 2145 -7812

execute if score #scan_scartmania switch.data matches 1 in minecraft:overworld run forceload add 2145 -8000 2160 -7812
execute if score #scan_scartmania switch.data matches 1 in switch:game run forceload add 2145 -8000 2160 -7812

execute if score #scan_scartmania switch.data matches 1 run data modify storage switch:maps to_scan.scartmania set value 2b
execute if score #scan_scartmania switch.data matches 1 run scoreboard players set #start_x_scartmania switch.data 2001
execute if score #scan_scartmania switch.data matches 1 run scoreboard players set #start_y_scartmania switch.data 101
execute if score #scan_scartmania switch.data matches 1 run scoreboard players set #start_z_scartmania switch.data -7999
execute if score #scan_scartmania switch.data matches 1 run scoreboard players set #end_x_scartmania switch.data 2159
execute if score #scan_scartmania switch.data matches 1 run scoreboard players set #end_y_scartmania switch.data 190
execute if score #scan_scartmania switch.data matches 1 run scoreboard players set #end_z_scartmania switch.data -7813
execute if score #scan_scartmania switch.data matches 1 run scoreboard players operation #curr_x_scartmania switch.data = #start_x_scartmania switch.data
execute if score #scan_scartmania switch.data matches 1 run scoreboard players operation #curr_y_scartmania switch.data = #start_y_scartmania switch.data
execute if score #scan_scartmania switch.data matches 1 run scoreboard players operation #curr_z_scartmania switch.data = #start_z_scartmania switch.data
execute if score #scan_scartmania switch.data matches 1 run data modify storage switch:doors scartmania set value []

execute if score #scan_scartmania switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_scartmania switch.data matches 30.. summon marker run function switch:maps/survival/scartmania/scan_doors_on_marker

execute if score #scan_scartmania switch.data matches 566 in minecraft:overworld run forceload remove 2000 -8000 2015 -7812
execute if score #scan_scartmania switch.data matches 566 in switch:game run forceload remove 2000 -8000 2015 -7812

execute if score #scan_scartmania switch.data matches 566 in minecraft:overworld run forceload remove 2015 -8000 2029 -7812
execute if score #scan_scartmania switch.data matches 566 in switch:game run forceload remove 2015 -8000 2029 -7812

execute if score #scan_scartmania switch.data matches 566 in minecraft:overworld run forceload remove 2029 -8000 2044 -7812
execute if score #scan_scartmania switch.data matches 566 in switch:game run forceload remove 2029 -8000 2044 -7812

execute if score #scan_scartmania switch.data matches 566 in minecraft:overworld run forceload remove 2044 -8000 2058 -7812
execute if score #scan_scartmania switch.data matches 566 in switch:game run forceload remove 2044 -8000 2058 -7812

execute if score #scan_scartmania switch.data matches 566 in minecraft:overworld run forceload remove 2058 -8000 2073 -7812
execute if score #scan_scartmania switch.data matches 566 in switch:game run forceload remove 2058 -8000 2073 -7812

execute if score #scan_scartmania switch.data matches 566 in minecraft:overworld run forceload remove 2073 -8000 2087 -7812
execute if score #scan_scartmania switch.data matches 566 in switch:game run forceload remove 2073 -8000 2087 -7812

execute if score #scan_scartmania switch.data matches 566 in minecraft:overworld run forceload remove 2087 -8000 2102 -7812
execute if score #scan_scartmania switch.data matches 566 in switch:game run forceload remove 2087 -8000 2102 -7812

execute if score #scan_scartmania switch.data matches 566 in minecraft:overworld run forceload remove 2102 -8000 2116 -7812
execute if score #scan_scartmania switch.data matches 566 in switch:game run forceload remove 2102 -8000 2116 -7812

execute if score #scan_scartmania switch.data matches 566 in minecraft:overworld run forceload remove 2116 -8000 2131 -7812
execute if score #scan_scartmania switch.data matches 566 in switch:game run forceload remove 2116 -8000 2131 -7812

execute if score #scan_scartmania switch.data matches 566 in minecraft:overworld run forceload remove 2131 -8000 2145 -7812
execute if score #scan_scartmania switch.data matches 566 in switch:game run forceload remove 2131 -8000 2145 -7812

execute if score #scan_scartmania switch.data matches 566 in minecraft:overworld run forceload remove 2145 -8000 2160 -7812
execute if score #scan_scartmania switch.data matches 566 in switch:game run forceload remove 2145 -8000 2160 -7812

execute if score #scan_scartmania switch.data matches 566 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"scartmania","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"28","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_scartmania switch.data matches 566 run data remove storage switch:maps to_scan.scartmania
execute if score #scan_scartmania switch.data matches 566 run scoreboard players reset #scan_scartmania switch.data

execute if score #scan_scartmania switch.data matches 1.. run schedule function switch:maps/survival/scartmania/scan_doors 1t

