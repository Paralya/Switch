
#> switch:maps/survival/lava_castle/scan_doors
#
# @within	switch:maps/survival/lava_castle/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_lava_castle switch.data 1

execute if score #scan_lava_castle switch.data matches 1 in minecraft:overworld run forceload add 83000 83000 83021 83063
execute if score #scan_lava_castle switch.data matches 1 in switch:game run forceload add 83000 83000 83021 83063

execute if score #scan_lava_castle switch.data matches 1 in minecraft:overworld run forceload add 83021 83000 83042 83063
execute if score #scan_lava_castle switch.data matches 1 in switch:game run forceload add 83021 83000 83042 83063

execute if score #scan_lava_castle switch.data matches 1 in minecraft:overworld run forceload add 83042 83000 83063 83063
execute if score #scan_lava_castle switch.data matches 1 in switch:game run forceload add 83042 83000 83063 83063

execute if score #scan_lava_castle switch.data matches 1 run data modify storage switch:maps to_scan.lava_castle set value 2b
execute if score #scan_lava_castle switch.data matches 1 run scoreboard players set #start_x_lava_castle switch.data 83001
execute if score #scan_lava_castle switch.data matches 1 run scoreboard players set #start_y_lava_castle switch.data 1
execute if score #scan_lava_castle switch.data matches 1 run scoreboard players set #start_z_lava_castle switch.data 83001
execute if score #scan_lava_castle switch.data matches 1 run scoreboard players set #end_x_lava_castle switch.data 83062
execute if score #scan_lava_castle switch.data matches 1 run scoreboard players set #end_y_lava_castle switch.data 84
execute if score #scan_lava_castle switch.data matches 1 run scoreboard players set #end_z_lava_castle switch.data 83062
execute if score #scan_lava_castle switch.data matches 1 run scoreboard players operation #curr_x_lava_castle switch.data = #start_x_lava_castle switch.data
execute if score #scan_lava_castle switch.data matches 1 run scoreboard players operation #curr_y_lava_castle switch.data = #start_y_lava_castle switch.data
execute if score #scan_lava_castle switch.data matches 1 run scoreboard players operation #curr_z_lava_castle switch.data = #start_z_lava_castle switch.data
execute if score #scan_lava_castle switch.data matches 1 run data modify storage switch:doors lava_castle set value []

execute if score #scan_lava_castle switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_lava_castle switch.data matches 30.. summon marker run function switch:maps/survival/lava_castle/scan_doors_on_marker

execute if score #scan_lava_castle switch.data matches 95 in minecraft:overworld run forceload remove 83000 83000 83021 83063
execute if score #scan_lava_castle switch.data matches 95 in switch:game run forceload remove 83000 83000 83021 83063

execute if score #scan_lava_castle switch.data matches 95 in minecraft:overworld run forceload remove 83021 83000 83042 83063
execute if score #scan_lava_castle switch.data matches 95 in switch:game run forceload remove 83021 83000 83042 83063

execute if score #scan_lava_castle switch.data matches 95 in minecraft:overworld run forceload remove 83042 83000 83063 83063
execute if score #scan_lava_castle switch.data matches 95 in switch:game run forceload remove 83042 83000 83063 83063

execute if score #scan_lava_castle switch.data matches 95 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"lava_castle","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"4","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_lava_castle switch.data matches 95 run data remove storage switch:maps to_scan.lava_castle
execute if score #scan_lava_castle switch.data matches 95 run scoreboard players reset #scan_lava_castle switch.data

execute if score #scan_lava_castle switch.data matches 1.. run schedule function switch:maps/survival/lava_castle/scan_doors 1t

