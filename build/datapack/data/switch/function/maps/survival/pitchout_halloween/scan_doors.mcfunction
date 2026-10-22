
#> switch:maps/survival/pitchout_halloween/scan_doors
#
# @within	switch:maps/survival/pitchout_halloween/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_pitchout_halloween switch.data 1

execute if score #scan_pitchout_halloween switch.data matches 1 in minecraft:overworld run forceload add 10000 10000 10020 10122
execute if score #scan_pitchout_halloween switch.data matches 1 in switch:game run forceload add 10000 10000 10020 10122

execute if score #scan_pitchout_halloween switch.data matches 1 in minecraft:overworld run forceload add 10020 10000 10041 10122
execute if score #scan_pitchout_halloween switch.data matches 1 in switch:game run forceload add 10020 10000 10041 10122

execute if score #scan_pitchout_halloween switch.data matches 1 in minecraft:overworld run forceload add 10041 10000 10061 10122
execute if score #scan_pitchout_halloween switch.data matches 1 in switch:game run forceload add 10041 10000 10061 10122

execute if score #scan_pitchout_halloween switch.data matches 1 in minecraft:overworld run forceload add 10061 10000 10081 10122
execute if score #scan_pitchout_halloween switch.data matches 1 in switch:game run forceload add 10061 10000 10081 10122

execute if score #scan_pitchout_halloween switch.data matches 1 in minecraft:overworld run forceload add 10081 10000 10102 10122
execute if score #scan_pitchout_halloween switch.data matches 1 in switch:game run forceload add 10081 10000 10102 10122

execute if score #scan_pitchout_halloween switch.data matches 1 in minecraft:overworld run forceload add 10102 10000 10122 10122
execute if score #scan_pitchout_halloween switch.data matches 1 in switch:game run forceload add 10102 10000 10122 10122

execute if score #scan_pitchout_halloween switch.data matches 1 run data modify storage switch:maps to_scan.pitchout_halloween set value 2b
execute if score #scan_pitchout_halloween switch.data matches 1 run scoreboard players set #start_x_pitchout_halloween switch.data 10001
execute if score #scan_pitchout_halloween switch.data matches 1 run scoreboard players set #start_y_pitchout_halloween switch.data 101
execute if score #scan_pitchout_halloween switch.data matches 1 run scoreboard players set #start_z_pitchout_halloween switch.data 10001
execute if score #scan_pitchout_halloween switch.data matches 1 run scoreboard players set #end_x_pitchout_halloween switch.data 10121
execute if score #scan_pitchout_halloween switch.data matches 1 run scoreboard players set #end_y_pitchout_halloween switch.data 127
execute if score #scan_pitchout_halloween switch.data matches 1 run scoreboard players set #end_z_pitchout_halloween switch.data 10121
execute if score #scan_pitchout_halloween switch.data matches 1 run scoreboard players operation #curr_x_pitchout_halloween switch.data = #start_x_pitchout_halloween switch.data
execute if score #scan_pitchout_halloween switch.data matches 1 run scoreboard players operation #curr_y_pitchout_halloween switch.data = #start_y_pitchout_halloween switch.data
execute if score #scan_pitchout_halloween switch.data matches 1 run scoreboard players operation #curr_z_pitchout_halloween switch.data = #start_z_pitchout_halloween switch.data
execute if score #scan_pitchout_halloween switch.data matches 1 run data modify storage switch:doors pitchout_halloween set value []

execute if score #scan_pitchout_halloween switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_pitchout_halloween switch.data matches 30.. summon marker run function switch:maps/survival/pitchout_halloween/scan_doors_on_marker

execute if score #scan_pitchout_halloween switch.data matches 110 in minecraft:overworld run forceload remove 10000 10000 10020 10122
execute if score #scan_pitchout_halloween switch.data matches 110 in switch:game run forceload remove 10000 10000 10020 10122

execute if score #scan_pitchout_halloween switch.data matches 110 in minecraft:overworld run forceload remove 10020 10000 10041 10122
execute if score #scan_pitchout_halloween switch.data matches 110 in switch:game run forceload remove 10020 10000 10041 10122

execute if score #scan_pitchout_halloween switch.data matches 110 in minecraft:overworld run forceload remove 10041 10000 10061 10122
execute if score #scan_pitchout_halloween switch.data matches 110 in switch:game run forceload remove 10041 10000 10061 10122

execute if score #scan_pitchout_halloween switch.data matches 110 in minecraft:overworld run forceload remove 10061 10000 10081 10122
execute if score #scan_pitchout_halloween switch.data matches 110 in switch:game run forceload remove 10061 10000 10081 10122

execute if score #scan_pitchout_halloween switch.data matches 110 in minecraft:overworld run forceload remove 10081 10000 10102 10122
execute if score #scan_pitchout_halloween switch.data matches 110 in switch:game run forceload remove 10081 10000 10102 10122

execute if score #scan_pitchout_halloween switch.data matches 110 in minecraft:overworld run forceload remove 10102 10000 10122 10122
execute if score #scan_pitchout_halloween switch.data matches 110 in switch:game run forceload remove 10102 10000 10122 10122

execute if score #scan_pitchout_halloween switch.data matches 110 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"pitchout_halloween","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"5","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_pitchout_halloween switch.data matches 110 run data remove storage switch:maps to_scan.pitchout_halloween
execute if score #scan_pitchout_halloween switch.data matches 110 run scoreboard players reset #scan_pitchout_halloween switch.data

execute if score #scan_pitchout_halloween switch.data matches 1.. run schedule function switch:maps/survival/pitchout_halloween/scan_doors 1t

