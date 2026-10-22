
#> switch:maps/survival/cluedo_camping/scan_doors
#
# @within	switch:maps/survival/cluedo_camping/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_cluedo_camping switch.data 1

execute if score #scan_cluedo_camping switch.data matches 1 in minecraft:overworld run forceload add -4000 -8000 -3978 -7906
execute if score #scan_cluedo_camping switch.data matches 1 in switch:game run forceload add -4000 -8000 -3978 -7906

execute if score #scan_cluedo_camping switch.data matches 1 in minecraft:overworld run forceload add -3978 -8000 -3955 -7906
execute if score #scan_cluedo_camping switch.data matches 1 in switch:game run forceload add -3978 -8000 -3955 -7906

execute if score #scan_cluedo_camping switch.data matches 1 in minecraft:overworld run forceload add -3955 -8000 -3933 -7906
execute if score #scan_cluedo_camping switch.data matches 1 in switch:game run forceload add -3955 -8000 -3933 -7906

execute if score #scan_cluedo_camping switch.data matches 1 in minecraft:overworld run forceload add -3933 -8000 -3910 -7906
execute if score #scan_cluedo_camping switch.data matches 1 in switch:game run forceload add -3933 -8000 -3910 -7906

execute if score #scan_cluedo_camping switch.data matches 1 in minecraft:overworld run forceload add -3910 -8000 -3888 -7906
execute if score #scan_cluedo_camping switch.data matches 1 in switch:game run forceload add -3910 -8000 -3888 -7906

execute if score #scan_cluedo_camping switch.data matches 1 run data modify storage switch:maps to_scan.cluedo_camping set value 2b
execute if score #scan_cluedo_camping switch.data matches 1 run scoreboard players set #start_x_cluedo_camping switch.data -3999
execute if score #scan_cluedo_camping switch.data matches 1 run scoreboard players set #start_y_cluedo_camping switch.data 101
execute if score #scan_cluedo_camping switch.data matches 1 run scoreboard players set #start_z_cluedo_camping switch.data -7999
execute if score #scan_cluedo_camping switch.data matches 1 run scoreboard players set #end_x_cluedo_camping switch.data -3889
execute if score #scan_cluedo_camping switch.data matches 1 run scoreboard players set #end_y_cluedo_camping switch.data 122
execute if score #scan_cluedo_camping switch.data matches 1 run scoreboard players set #end_z_cluedo_camping switch.data -7907
execute if score #scan_cluedo_camping switch.data matches 1 run scoreboard players operation #curr_x_cluedo_camping switch.data = #start_x_cluedo_camping switch.data
execute if score #scan_cluedo_camping switch.data matches 1 run scoreboard players operation #curr_y_cluedo_camping switch.data = #start_y_cluedo_camping switch.data
execute if score #scan_cluedo_camping switch.data matches 1 run scoreboard players operation #curr_z_cluedo_camping switch.data = #start_z_cluedo_camping switch.data
execute if score #scan_cluedo_camping switch.data matches 1 run data modify storage switch:doors cluedo_camping set value []

execute if score #scan_cluedo_camping switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_cluedo_camping switch.data matches 30.. summon marker run function switch:maps/survival/cluedo_camping/scan_doors_on_marker

execute if score #scan_cluedo_camping switch.data matches 76 in minecraft:overworld run forceload remove -4000 -8000 -3978 -7906
execute if score #scan_cluedo_camping switch.data matches 76 in switch:game run forceload remove -4000 -8000 -3978 -7906

execute if score #scan_cluedo_camping switch.data matches 76 in minecraft:overworld run forceload remove -3978 -8000 -3955 -7906
execute if score #scan_cluedo_camping switch.data matches 76 in switch:game run forceload remove -3978 -8000 -3955 -7906

execute if score #scan_cluedo_camping switch.data matches 76 in minecraft:overworld run forceload remove -3955 -8000 -3933 -7906
execute if score #scan_cluedo_camping switch.data matches 76 in switch:game run forceload remove -3955 -8000 -3933 -7906

execute if score #scan_cluedo_camping switch.data matches 76 in minecraft:overworld run forceload remove -3933 -8000 -3910 -7906
execute if score #scan_cluedo_camping switch.data matches 76 in switch:game run forceload remove -3933 -8000 -3910 -7906

execute if score #scan_cluedo_camping switch.data matches 76 in minecraft:overworld run forceload remove -3910 -8000 -3888 -7906
execute if score #scan_cluedo_camping switch.data matches 76 in switch:game run forceload remove -3910 -8000 -3888 -7906

execute if score #scan_cluedo_camping switch.data matches 76 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"cluedo_camping","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"3","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_cluedo_camping switch.data matches 76 run data remove storage switch:maps to_scan.cluedo_camping
execute if score #scan_cluedo_camping switch.data matches 76 run scoreboard players reset #scan_cluedo_camping switch.data

execute if score #scan_cluedo_camping switch.data matches 1.. run schedule function switch:maps/survival/cluedo_camping/scan_doors 1t

