
#> switch:maps/survival/even_old_japan/scan_doors
#
# @within	switch:maps/survival/even_old_japan/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_even_old_japan switch.data 1

execute if score #scan_even_old_japan switch.data matches 1 in minecraft:overworld run forceload add 162000 162000 162020 162102
execute if score #scan_even_old_japan switch.data matches 1 in switch:game run forceload add 162000 162000 162020 162102

execute if score #scan_even_old_japan switch.data matches 1 in minecraft:overworld run forceload add 162020 162000 162041 162102
execute if score #scan_even_old_japan switch.data matches 1 in switch:game run forceload add 162020 162000 162041 162102

execute if score #scan_even_old_japan switch.data matches 1 in minecraft:overworld run forceload add 162041 162000 162061 162102
execute if score #scan_even_old_japan switch.data matches 1 in switch:game run forceload add 162041 162000 162061 162102

execute if score #scan_even_old_japan switch.data matches 1 in minecraft:overworld run forceload add 162061 162000 162082 162102
execute if score #scan_even_old_japan switch.data matches 1 in switch:game run forceload add 162061 162000 162082 162102

execute if score #scan_even_old_japan switch.data matches 1 in minecraft:overworld run forceload add 162082 162000 162102 162102
execute if score #scan_even_old_japan switch.data matches 1 in switch:game run forceload add 162082 162000 162102 162102

execute if score #scan_even_old_japan switch.data matches 1 run data modify storage switch:maps to_scan.even_old_japan set value 2b
execute if score #scan_even_old_japan switch.data matches 1 run scoreboard players set #start_x_even_old_japan switch.data 162001
execute if score #scan_even_old_japan switch.data matches 1 run scoreboard players set #start_y_even_old_japan switch.data 1
execute if score #scan_even_old_japan switch.data matches 1 run scoreboard players set #start_z_even_old_japan switch.data 162001
execute if score #scan_even_old_japan switch.data matches 1 run scoreboard players set #end_x_even_old_japan switch.data 162101
execute if score #scan_even_old_japan switch.data matches 1 run scoreboard players set #end_y_even_old_japan switch.data 51
execute if score #scan_even_old_japan switch.data matches 1 run scoreboard players set #end_z_even_old_japan switch.data 162101
execute if score #scan_even_old_japan switch.data matches 1 run scoreboard players operation #curr_x_even_old_japan switch.data = #start_x_even_old_japan switch.data
execute if score #scan_even_old_japan switch.data matches 1 run scoreboard players operation #curr_y_even_old_japan switch.data = #start_y_even_old_japan switch.data
execute if score #scan_even_old_japan switch.data matches 1 run scoreboard players operation #curr_z_even_old_japan switch.data = #start_z_even_old_japan switch.data
execute if score #scan_even_old_japan switch.data matches 1 run data modify storage switch:doors even_old_japan set value []


execute if score #scan_even_old_japan switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_even_old_japan switch.data matches 30.. summon marker run function switch:maps/survival/even_old_japan/scan_doors_on_marker

execute if score #scan_even_old_japan switch.data matches 135 in minecraft:overworld run forceload remove 162000 162000 162020 162102
execute if score #scan_even_old_japan switch.data matches 135 in switch:game run forceload remove 162000 162000 162020 162102

execute if score #scan_even_old_japan switch.data matches 135 in minecraft:overworld run forceload remove 162020 162000 162041 162102
execute if score #scan_even_old_japan switch.data matches 135 in switch:game run forceload remove 162020 162000 162041 162102

execute if score #scan_even_old_japan switch.data matches 135 in minecraft:overworld run forceload remove 162041 162000 162061 162102
execute if score #scan_even_old_japan switch.data matches 135 in switch:game run forceload remove 162041 162000 162061 162102

execute if score #scan_even_old_japan switch.data matches 135 in minecraft:overworld run forceload remove 162061 162000 162082 162102
execute if score #scan_even_old_japan switch.data matches 135 in switch:game run forceload remove 162061 162000 162082 162102

execute if score #scan_even_old_japan switch.data matches 135 in minecraft:overworld run forceload remove 162082 162000 162102 162102
execute if score #scan_even_old_japan switch.data matches 135 in switch:game run forceload remove 162082 162000 162102 162102

execute if score #scan_even_old_japan switch.data matches 135 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"even_old_japan","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"6","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_even_old_japan switch.data matches 135 run data remove storage switch:maps to_scan.even_old_japan
execute if score #scan_even_old_japan switch.data matches 135 run scoreboard players reset #scan_even_old_japan switch.data

execute if score #scan_even_old_japan switch.data matches 1.. run schedule function switch:maps/survival/even_old_japan/scan_doors 1t

