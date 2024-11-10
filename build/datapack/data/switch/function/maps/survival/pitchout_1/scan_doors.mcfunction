
#> switch:maps/survival/pitchout_1/scan_doors
#
# @within	switch:maps/survival/pitchout_1/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_pitchout_1 switch.data 1

execute if score #scan_pitchout_1 switch.data matches 1 in minecraft:overworld run forceload add 950 950 970 1050
execute if score #scan_pitchout_1 switch.data matches 1 in switch:game run forceload add 950 950 970 1050

execute if score #scan_pitchout_1 switch.data matches 1 in minecraft:overworld run forceload add 970 950 990 1050
execute if score #scan_pitchout_1 switch.data matches 1 in switch:game run forceload add 970 950 990 1050

execute if score #scan_pitchout_1 switch.data matches 1 in minecraft:overworld run forceload add 990 950 1010 1050
execute if score #scan_pitchout_1 switch.data matches 1 in switch:game run forceload add 990 950 1010 1050

execute if score #scan_pitchout_1 switch.data matches 1 in minecraft:overworld run forceload add 1010 950 1030 1050
execute if score #scan_pitchout_1 switch.data matches 1 in switch:game run forceload add 1010 950 1030 1050

execute if score #scan_pitchout_1 switch.data matches 1 in minecraft:overworld run forceload add 1030 950 1050 1050
execute if score #scan_pitchout_1 switch.data matches 1 in switch:game run forceload add 1030 950 1050 1050

execute if score #scan_pitchout_1 switch.data matches 1 run data modify storage switch:maps to_scan.pitchout_1 set value 2b
execute if score #scan_pitchout_1 switch.data matches 1 run scoreboard players set #start_x_pitchout_1 switch.data 951
execute if score #scan_pitchout_1 switch.data matches 1 run scoreboard players set #start_y_pitchout_1 switch.data 1
execute if score #scan_pitchout_1 switch.data matches 1 run scoreboard players set #start_z_pitchout_1 switch.data 951
execute if score #scan_pitchout_1 switch.data matches 1 run scoreboard players set #end_x_pitchout_1 switch.data 1049
execute if score #scan_pitchout_1 switch.data matches 1 run scoreboard players set #end_y_pitchout_1 switch.data 43
execute if score #scan_pitchout_1 switch.data matches 1 run scoreboard players set #end_z_pitchout_1 switch.data 1049
execute if score #scan_pitchout_1 switch.data matches 1 run scoreboard players operation #curr_x_pitchout_1 switch.data = #start_x_pitchout_1 switch.data
execute if score #scan_pitchout_1 switch.data matches 1 run scoreboard players operation #curr_y_pitchout_1 switch.data = #start_y_pitchout_1 switch.data
execute if score #scan_pitchout_1 switch.data matches 1 run scoreboard players operation #curr_z_pitchout_1 switch.data = #start_z_pitchout_1 switch.data
execute if score #scan_pitchout_1 switch.data matches 1 run data modify storage switch:doors pitchout_1 set value []


execute if score #scan_pitchout_1 switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_pitchout_1 switch.data matches 30.. summon marker run function switch:maps/survival/pitchout_1/scan_doors_on_marker

execute if score #scan_pitchout_1 switch.data matches 115 in minecraft:overworld run forceload remove 950 950 970 1050
execute if score #scan_pitchout_1 switch.data matches 115 in switch:game run forceload remove 950 950 970 1050

execute if score #scan_pitchout_1 switch.data matches 115 in minecraft:overworld run forceload remove 970 950 990 1050
execute if score #scan_pitchout_1 switch.data matches 115 in switch:game run forceload remove 970 950 990 1050

execute if score #scan_pitchout_1 switch.data matches 115 in minecraft:overworld run forceload remove 990 950 1010 1050
execute if score #scan_pitchout_1 switch.data matches 115 in switch:game run forceload remove 990 950 1010 1050

execute if score #scan_pitchout_1 switch.data matches 115 in minecraft:overworld run forceload remove 1010 950 1030 1050
execute if score #scan_pitchout_1 switch.data matches 115 in switch:game run forceload remove 1010 950 1030 1050

execute if score #scan_pitchout_1 switch.data matches 115 in minecraft:overworld run forceload remove 1030 950 1050 1050
execute if score #scan_pitchout_1 switch.data matches 115 in switch:game run forceload remove 1030 950 1050 1050

execute if score #scan_pitchout_1 switch.data matches 115 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"pitchout_1","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"5","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_pitchout_1 switch.data matches 115 run data remove storage switch:maps to_scan.pitchout_1
execute if score #scan_pitchout_1 switch.data matches 115 run scoreboard players reset #scan_pitchout_1 switch.data

execute if score #scan_pitchout_1 switch.data matches 1.. run schedule function switch:maps/survival/pitchout_1/scan_doors 1t

