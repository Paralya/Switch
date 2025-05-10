
#> switch:maps/survival/hills_land/scan_doors
#
# @within	switch:maps/survival/hills_land/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_hills_land switch.data 1

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20332 19983 20345 20210
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 20332 19983 20345 20210

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20345 19983 20358 20210
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 20345 19983 20358 20210

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20358 19983 20371 20210
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 20358 19983 20371 20210

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20371 19983 20384 20210
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 20371 19983 20384 20210

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20384 19983 20396 20210
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 20384 19983 20396 20210

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20396 19983 20409 20210
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 20396 19983 20409 20210

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20409 19983 20422 20210
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 20409 19983 20422 20210

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20422 19983 20435 20210
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 20422 19983 20435 20210

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20435 19983 20448 20210
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 20435 19983 20448 20210

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20448 19983 20461 20210
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 20448 19983 20461 20210

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20461 19983 20474 20210
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 20461 19983 20474 20210

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20474 19983 20487 20210
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 20474 19983 20487 20210

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20487 19983 20500 20210
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 20487 19983 20500 20210

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20500 19983 20512 20210
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 20500 19983 20512 20210

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20512 19983 20525 20210
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 20512 19983 20525 20210

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20525 19983 20538 20210
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 20525 19983 20538 20210

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20538 19983 20551 20210
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 20538 19983 20551 20210

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20551 19983 20564 20210
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 20551 19983 20564 20210

execute if score #scan_hills_land switch.data matches 1 run data modify storage switch:maps to_scan.hills_land set value 2b
execute if score #scan_hills_land switch.data matches 1 run scoreboard players set #start_x_hills_land switch.data 20333
execute if score #scan_hills_land switch.data matches 1 run scoreboard players set #start_y_hills_land switch.data 86
execute if score #scan_hills_land switch.data matches 1 run scoreboard players set #start_z_hills_land switch.data 19984
execute if score #scan_hills_land switch.data matches 1 run scoreboard players set #end_x_hills_land switch.data 20563
execute if score #scan_hills_land switch.data matches 1 run scoreboard players set #end_y_hills_land switch.data 149
execute if score #scan_hills_land switch.data matches 1 run scoreboard players set #end_z_hills_land switch.data 20209
execute if score #scan_hills_land switch.data matches 1 run scoreboard players operation #curr_x_hills_land switch.data = #start_x_hills_land switch.data
execute if score #scan_hills_land switch.data matches 1 run scoreboard players operation #curr_y_hills_land switch.data = #start_y_hills_land switch.data
execute if score #scan_hills_land switch.data matches 1 run scoreboard players operation #curr_z_hills_land switch.data = #start_z_hills_land switch.data
execute if score #scan_hills_land switch.data matches 1 run data modify storage switch:doors hills_land set value []


execute if score #scan_hills_land switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_hills_land switch.data matches 30.. summon marker run function switch:maps/survival/hills_land/scan_doors_on_marker

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 20332 19983 20345 20210
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 20332 19983 20345 20210

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 20345 19983 20358 20210
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 20345 19983 20358 20210

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 20358 19983 20371 20210
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 20358 19983 20371 20210

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 20371 19983 20384 20210
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 20371 19983 20384 20210

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 20384 19983 20396 20210
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 20384 19983 20396 20210

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 20396 19983 20409 20210
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 20396 19983 20409 20210

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 20409 19983 20422 20210
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 20409 19983 20422 20210

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 20422 19983 20435 20210
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 20422 19983 20435 20210

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 20435 19983 20448 20210
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 20435 19983 20448 20210

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 20448 19983 20461 20210
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 20448 19983 20461 20210

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 20461 19983 20474 20210
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 20461 19983 20474 20210

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 20474 19983 20487 20210
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 20474 19983 20487 20210

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 20487 19983 20500 20210
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 20487 19983 20500 20210

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 20500 19983 20512 20210
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 20500 19983 20512 20210

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 20512 19983 20525 20210
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 20512 19983 20525 20210

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 20525 19983 20538 20210
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 20525 19983 20538 20210

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 20538 19983 20551 20210
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 20538 19983 20551 20210

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 20551 19983 20564 20210
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 20551 19983 20564 20210

execute if score #scan_hills_land switch.data matches 699 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"hills_land","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"34","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_hills_land switch.data matches 699 run data remove storage switch:maps to_scan.hills_land
execute if score #scan_hills_land switch.data matches 699 run scoreboard players reset #scan_hills_land switch.data

execute if score #scan_hills_land switch.data matches 1.. run schedule function switch:maps/survival/hills_land/scan_doors 1t

