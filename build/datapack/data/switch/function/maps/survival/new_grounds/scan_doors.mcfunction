
#> switch:maps/survival/new_grounds/scan_doors
#
# @within	switch:maps/survival/new_grounds/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_new_grounds switch.data 1

execute if score #scan_new_grounds switch.data matches 1 in minecraft:overworld run forceload add 47930 47930 47948 48070
execute if score #scan_new_grounds switch.data matches 1 in switch:game run forceload add 47930 47930 47948 48070

execute if score #scan_new_grounds switch.data matches 1 in minecraft:overworld run forceload add 47948 47930 47965 48070
execute if score #scan_new_grounds switch.data matches 1 in switch:game run forceload add 47948 47930 47965 48070

execute if score #scan_new_grounds switch.data matches 1 in minecraft:overworld run forceload add 47965 47930 47982 48070
execute if score #scan_new_grounds switch.data matches 1 in switch:game run forceload add 47965 47930 47982 48070

execute if score #scan_new_grounds switch.data matches 1 in minecraft:overworld run forceload add 47982 47930 48000 48070
execute if score #scan_new_grounds switch.data matches 1 in switch:game run forceload add 47982 47930 48000 48070

execute if score #scan_new_grounds switch.data matches 1 in minecraft:overworld run forceload add 48000 47930 48018 48070
execute if score #scan_new_grounds switch.data matches 1 in switch:game run forceload add 48000 47930 48018 48070

execute if score #scan_new_grounds switch.data matches 1 in minecraft:overworld run forceload add 48018 47930 48035 48070
execute if score #scan_new_grounds switch.data matches 1 in switch:game run forceload add 48018 47930 48035 48070

execute if score #scan_new_grounds switch.data matches 1 in minecraft:overworld run forceload add 48035 47930 48052 48070
execute if score #scan_new_grounds switch.data matches 1 in switch:game run forceload add 48035 47930 48052 48070

execute if score #scan_new_grounds switch.data matches 1 in minecraft:overworld run forceload add 48052 47930 48070 48070
execute if score #scan_new_grounds switch.data matches 1 in switch:game run forceload add 48052 47930 48070 48070

execute if score #scan_new_grounds switch.data matches 1 run data modify storage switch:maps to_scan.new_grounds set value 2b
execute if score #scan_new_grounds switch.data matches 1 run scoreboard players set #start_x_new_grounds switch.data 47931
execute if score #scan_new_grounds switch.data matches 1 run scoreboard players set #start_y_new_grounds switch.data 1
execute if score #scan_new_grounds switch.data matches 1 run scoreboard players set #start_z_new_grounds switch.data 47931
execute if score #scan_new_grounds switch.data matches 1 run scoreboard players set #end_x_new_grounds switch.data 48069
execute if score #scan_new_grounds switch.data matches 1 run scoreboard players set #end_y_new_grounds switch.data 83
execute if score #scan_new_grounds switch.data matches 1 run scoreboard players set #end_z_new_grounds switch.data 48069
execute if score #scan_new_grounds switch.data matches 1 run scoreboard players operation #curr_x_new_grounds switch.data = #start_x_new_grounds switch.data
execute if score #scan_new_grounds switch.data matches 1 run scoreboard players operation #curr_y_new_grounds switch.data = #start_y_new_grounds switch.data
execute if score #scan_new_grounds switch.data matches 1 run scoreboard players operation #curr_z_new_grounds switch.data = #start_z_new_grounds switch.data
execute if score #scan_new_grounds switch.data matches 1 run data modify storage switch:doors new_grounds set value []

execute if score #scan_new_grounds switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_new_grounds switch.data matches 30.. summon marker run function switch:maps/survival/new_grounds/scan_doors_on_marker

execute if score #scan_new_grounds switch.data matches 351 in minecraft:overworld run forceload remove 47930 47930 47948 48070
execute if score #scan_new_grounds switch.data matches 351 in switch:game run forceload remove 47930 47930 47948 48070

execute if score #scan_new_grounds switch.data matches 351 in minecraft:overworld run forceload remove 47948 47930 47965 48070
execute if score #scan_new_grounds switch.data matches 351 in switch:game run forceload remove 47948 47930 47965 48070

execute if score #scan_new_grounds switch.data matches 351 in minecraft:overworld run forceload remove 47965 47930 47982 48070
execute if score #scan_new_grounds switch.data matches 351 in switch:game run forceload remove 47965 47930 47982 48070

execute if score #scan_new_grounds switch.data matches 351 in minecraft:overworld run forceload remove 47982 47930 48000 48070
execute if score #scan_new_grounds switch.data matches 351 in switch:game run forceload remove 47982 47930 48000 48070

execute if score #scan_new_grounds switch.data matches 351 in minecraft:overworld run forceload remove 48000 47930 48018 48070
execute if score #scan_new_grounds switch.data matches 351 in switch:game run forceload remove 48000 47930 48018 48070

execute if score #scan_new_grounds switch.data matches 351 in minecraft:overworld run forceload remove 48018 47930 48035 48070
execute if score #scan_new_grounds switch.data matches 351 in switch:game run forceload remove 48018 47930 48035 48070

execute if score #scan_new_grounds switch.data matches 351 in minecraft:overworld run forceload remove 48035 47930 48052 48070
execute if score #scan_new_grounds switch.data matches 351 in switch:game run forceload remove 48035 47930 48052 48070

execute if score #scan_new_grounds switch.data matches 351 in minecraft:overworld run forceload remove 48052 47930 48070 48070
execute if score #scan_new_grounds switch.data matches 351 in switch:game run forceload remove 48052 47930 48070 48070

execute if score #scan_new_grounds switch.data matches 351 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"new_grounds","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"17","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_new_grounds switch.data matches 351 run data remove storage switch:maps to_scan.new_grounds
execute if score #scan_new_grounds switch.data matches 351 run scoreboard players reset #scan_new_grounds switch.data

execute if score #scan_new_grounds switch.data matches 1.. run schedule function switch:maps/survival/new_grounds/scan_doors 1t

