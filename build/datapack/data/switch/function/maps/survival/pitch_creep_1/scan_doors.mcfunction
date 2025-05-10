
#> switch:maps/survival/pitch_creep_1/scan_doors
#
# @within	switch:maps/survival/pitch_creep_1/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_pitch_creep_1 switch.data 1

execute if score #scan_pitch_creep_1 switch.data matches 1 in minecraft:overworld run forceload add 3500 3500 3520 3540
execute if score #scan_pitch_creep_1 switch.data matches 1 in switch:game run forceload add 3500 3500 3520 3540

execute if score #scan_pitch_creep_1 switch.data matches 1 in minecraft:overworld run forceload add 3520 3500 3540 3540
execute if score #scan_pitch_creep_1 switch.data matches 1 in switch:game run forceload add 3520 3500 3540 3540

execute if score #scan_pitch_creep_1 switch.data matches 1 run data modify storage switch:maps to_scan.pitch_creep_1 set value 2b
execute if score #scan_pitch_creep_1 switch.data matches 1 run scoreboard players set #start_x_pitch_creep_1 switch.data 3501
execute if score #scan_pitch_creep_1 switch.data matches 1 run scoreboard players set #start_y_pitch_creep_1 switch.data 101
execute if score #scan_pitch_creep_1 switch.data matches 1 run scoreboard players set #start_z_pitch_creep_1 switch.data 3501
execute if score #scan_pitch_creep_1 switch.data matches 1 run scoreboard players set #end_x_pitch_creep_1 switch.data 3539
execute if score #scan_pitch_creep_1 switch.data matches 1 run scoreboard players set #end_y_pitch_creep_1 switch.data 139
execute if score #scan_pitch_creep_1 switch.data matches 1 run scoreboard players set #end_z_pitch_creep_1 switch.data 3539
execute if score #scan_pitch_creep_1 switch.data matches 1 run scoreboard players operation #curr_x_pitch_creep_1 switch.data = #start_x_pitch_creep_1 switch.data
execute if score #scan_pitch_creep_1 switch.data matches 1 run scoreboard players operation #curr_y_pitch_creep_1 switch.data = #start_y_pitch_creep_1 switch.data
execute if score #scan_pitch_creep_1 switch.data matches 1 run scoreboard players operation #curr_z_pitch_creep_1 switch.data = #start_z_pitch_creep_1 switch.data
execute if score #scan_pitch_creep_1 switch.data matches 1 run data modify storage switch:doors pitch_creep_1 set value []


execute if score #scan_pitch_creep_1 switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_pitch_creep_1 switch.data matches 30.. summon marker run function switch:maps/survival/pitch_creep_1/scan_doors_on_marker

execute if score #scan_pitch_creep_1 switch.data matches 42 in minecraft:overworld run forceload remove 3500 3500 3520 3540
execute if score #scan_pitch_creep_1 switch.data matches 42 in switch:game run forceload remove 3500 3500 3520 3540

execute if score #scan_pitch_creep_1 switch.data matches 42 in minecraft:overworld run forceload remove 3520 3500 3540 3540
execute if score #scan_pitch_creep_1 switch.data matches 42 in switch:game run forceload remove 3520 3500 3540 3540

execute if score #scan_pitch_creep_1 switch.data matches 42 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"pitch_creep_1","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"2","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_pitch_creep_1 switch.data matches 42 run data remove storage switch:maps to_scan.pitch_creep_1
execute if score #scan_pitch_creep_1 switch.data matches 42 run scoreboard players reset #scan_pitch_creep_1 switch.data

execute if score #scan_pitch_creep_1 switch.data matches 1.. run schedule function switch:maps/survival/pitch_creep_1/scan_doors 1t

