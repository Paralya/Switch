
#> switch:maps/survival/pitch_creep_2/scan_doors
#
# @within	switch:maps/survival/pitch_creep_2/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_pitch_creep_2 switch.data 1

execute if score #scan_pitch_creep_2 switch.data matches 1 in minecraft:overworld run forceload add 37986 37974 38000 38026
execute if score #scan_pitch_creep_2 switch.data matches 1 in switch:game run forceload add 37986 37974 38000 38026

execute if score #scan_pitch_creep_2 switch.data matches 1 in minecraft:overworld run forceload add 38000 37974 38014 38026
execute if score #scan_pitch_creep_2 switch.data matches 1 in switch:game run forceload add 38000 37974 38014 38026

execute if score #scan_pitch_creep_2 switch.data matches 1 run data modify storage switch:maps to_scan.pitch_creep_2 set value 2b
execute if score #scan_pitch_creep_2 switch.data matches 1 run scoreboard players set #start_x_pitch_creep_2 switch.data 37987
execute if score #scan_pitch_creep_2 switch.data matches 1 run scoreboard players set #start_y_pitch_creep_2 switch.data 1
execute if score #scan_pitch_creep_2 switch.data matches 1 run scoreboard players set #start_z_pitch_creep_2 switch.data 37975
execute if score #scan_pitch_creep_2 switch.data matches 1 run scoreboard players set #end_x_pitch_creep_2 switch.data 38013
execute if score #scan_pitch_creep_2 switch.data matches 1 run scoreboard players set #end_y_pitch_creep_2 switch.data 15
execute if score #scan_pitch_creep_2 switch.data matches 1 run scoreboard players set #end_z_pitch_creep_2 switch.data 38025
execute if score #scan_pitch_creep_2 switch.data matches 1 run scoreboard players operation #curr_x_pitch_creep_2 switch.data = #start_x_pitch_creep_2 switch.data
execute if score #scan_pitch_creep_2 switch.data matches 1 run scoreboard players operation #curr_y_pitch_creep_2 switch.data = #start_y_pitch_creep_2 switch.data
execute if score #scan_pitch_creep_2 switch.data matches 1 run scoreboard players operation #curr_z_pitch_creep_2 switch.data = #start_z_pitch_creep_2 switch.data
execute if score #scan_pitch_creep_2 switch.data matches 1 run data modify storage switch:doors pitch_creep_2 set value []


execute if score #scan_pitch_creep_2 switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_pitch_creep_2 switch.data matches 30.. summon marker run function switch:maps/survival/pitch_creep_2/scan_doors_on_marker

execute if score #scan_pitch_creep_2 switch.data matches 35 in minecraft:overworld run forceload remove 37986 37974 38000 38026
execute if score #scan_pitch_creep_2 switch.data matches 35 in switch:game run forceload remove 37986 37974 38000 38026

execute if score #scan_pitch_creep_2 switch.data matches 35 in minecraft:overworld run forceload remove 38000 37974 38014 38026
execute if score #scan_pitch_creep_2 switch.data matches 35 in switch:game run forceload remove 38000 37974 38014 38026

execute if score #scan_pitch_creep_2 switch.data matches 35 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"pitch_creep_2","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_pitch_creep_2 switch.data matches 35 run data remove storage switch:maps to_scan.pitch_creep_2
execute if score #scan_pitch_creep_2 switch.data matches 35 run scoreboard players reset #scan_pitch_creep_2 switch.data

execute if score #scan_pitch_creep_2 switch.data matches 1.. run schedule function switch:maps/survival/pitch_creep_2/scan_doors 1t

