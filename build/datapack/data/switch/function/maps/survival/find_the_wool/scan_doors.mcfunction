
#> switch:maps/survival/find_the_wool/scan_doors
#
# @within	switch:maps/survival/find_the_wool/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_find_the_wool switch.data 1

execute if score #scan_find_the_wool switch.data matches 1 in minecraft:overworld run forceload add 66000 66000 66021 66080
execute if score #scan_find_the_wool switch.data matches 1 in switch:game run forceload add 66000 66000 66021 66080

execute if score #scan_find_the_wool switch.data matches 1 in minecraft:overworld run forceload add 66021 66000 66042 66080
execute if score #scan_find_the_wool switch.data matches 1 in switch:game run forceload add 66021 66000 66042 66080

execute if score #scan_find_the_wool switch.data matches 1 in minecraft:overworld run forceload add 66042 66000 66064 66080
execute if score #scan_find_the_wool switch.data matches 1 in switch:game run forceload add 66042 66000 66064 66080

execute if score #scan_find_the_wool switch.data matches 1 in minecraft:overworld run forceload add 66064 66000 66085 66080
execute if score #scan_find_the_wool switch.data matches 1 in switch:game run forceload add 66064 66000 66085 66080

execute if score #scan_find_the_wool switch.data matches 1 run data modify storage switch:maps to_scan.find_the_wool set value 2b
execute if score #scan_find_the_wool switch.data matches 1 run scoreboard players set #start_x_find_the_wool switch.data 66001
execute if score #scan_find_the_wool switch.data matches 1 run scoreboard players set #start_y_find_the_wool switch.data 1
execute if score #scan_find_the_wool switch.data matches 1 run scoreboard players set #start_z_find_the_wool switch.data 66001
execute if score #scan_find_the_wool switch.data matches 1 run scoreboard players set #end_x_find_the_wool switch.data 66084
execute if score #scan_find_the_wool switch.data matches 1 run scoreboard players set #end_y_find_the_wool switch.data 55
execute if score #scan_find_the_wool switch.data matches 1 run scoreboard players set #end_z_find_the_wool switch.data 66079
execute if score #scan_find_the_wool switch.data matches 1 run scoreboard players operation #curr_x_find_the_wool switch.data = #start_x_find_the_wool switch.data
execute if score #scan_find_the_wool switch.data matches 1 run scoreboard players operation #curr_y_find_the_wool switch.data = #start_y_find_the_wool switch.data
execute if score #scan_find_the_wool switch.data matches 1 run scoreboard players operation #curr_z_find_the_wool switch.data = #start_z_find_the_wool switch.data
execute if score #scan_find_the_wool switch.data matches 1 run data modify storage switch:doors find_the_wool set value []


execute if score #scan_find_the_wool switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_find_the_wool switch.data matches 30.. summon marker run function switch:maps/survival/find_the_wool/scan_doors_on_marker

execute if score #scan_find_the_wool switch.data matches 103 in minecraft:overworld run forceload remove 66000 66000 66021 66080
execute if score #scan_find_the_wool switch.data matches 103 in switch:game run forceload remove 66000 66000 66021 66080

execute if score #scan_find_the_wool switch.data matches 103 in minecraft:overworld run forceload remove 66021 66000 66042 66080
execute if score #scan_find_the_wool switch.data matches 103 in switch:game run forceload remove 66021 66000 66042 66080

execute if score #scan_find_the_wool switch.data matches 103 in minecraft:overworld run forceload remove 66042 66000 66064 66080
execute if score #scan_find_the_wool switch.data matches 103 in switch:game run forceload remove 66042 66000 66064 66080

execute if score #scan_find_the_wool switch.data matches 103 in minecraft:overworld run forceload remove 66064 66000 66085 66080
execute if score #scan_find_the_wool switch.data matches 103 in switch:game run forceload remove 66064 66000 66085 66080

execute if score #scan_find_the_wool switch.data matches 103 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"find_the_wool","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"5","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_find_the_wool switch.data matches 103 run data remove storage switch:maps to_scan.find_the_wool
execute if score #scan_find_the_wool switch.data matches 103 run scoreboard players reset #scan_find_the_wool switch.data

execute if score #scan_find_the_wool switch.data matches 1.. run schedule function switch:maps/survival/find_the_wool/scan_doors 1t

