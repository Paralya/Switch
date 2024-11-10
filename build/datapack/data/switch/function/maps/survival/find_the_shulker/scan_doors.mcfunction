
#> switch:maps/survival/find_the_shulker/scan_doors
#
# @within	switch:maps/survival/find_the_shulker/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_find_the_shulker switch.data 1

execute if score #scan_find_the_shulker switch.data matches 1 in minecraft:overworld run forceload add 57000 57000 57018 57113
execute if score #scan_find_the_shulker switch.data matches 1 in switch:game run forceload add 57000 57000 57018 57113

execute if score #scan_find_the_shulker switch.data matches 1 in minecraft:overworld run forceload add 57018 57000 57037 57113
execute if score #scan_find_the_shulker switch.data matches 1 in switch:game run forceload add 57018 57000 57037 57113

execute if score #scan_find_the_shulker switch.data matches 1 in minecraft:overworld run forceload add 57037 57000 57056 57113
execute if score #scan_find_the_shulker switch.data matches 1 in switch:game run forceload add 57037 57000 57056 57113

execute if score #scan_find_the_shulker switch.data matches 1 in minecraft:overworld run forceload add 57056 57000 57074 57113
execute if score #scan_find_the_shulker switch.data matches 1 in switch:game run forceload add 57056 57000 57074 57113

execute if score #scan_find_the_shulker switch.data matches 1 run data modify storage switch:maps to_scan.find_the_shulker set value 2b
execute if score #scan_find_the_shulker switch.data matches 1 run scoreboard players set #start_x_find_the_shulker switch.data 57001
execute if score #scan_find_the_shulker switch.data matches 1 run scoreboard players set #start_y_find_the_shulker switch.data 1
execute if score #scan_find_the_shulker switch.data matches 1 run scoreboard players set #start_z_find_the_shulker switch.data 57001
execute if score #scan_find_the_shulker switch.data matches 1 run scoreboard players set #end_x_find_the_shulker switch.data 57073
execute if score #scan_find_the_shulker switch.data matches 1 run scoreboard players set #end_y_find_the_shulker switch.data 54
execute if score #scan_find_the_shulker switch.data matches 1 run scoreboard players set #end_z_find_the_shulker switch.data 57112
execute if score #scan_find_the_shulker switch.data matches 1 run scoreboard players operation #curr_x_find_the_shulker switch.data = #start_x_find_the_shulker switch.data
execute if score #scan_find_the_shulker switch.data matches 1 run scoreboard players operation #curr_y_find_the_shulker switch.data = #start_y_find_the_shulker switch.data
execute if score #scan_find_the_shulker switch.data matches 1 run scoreboard players operation #curr_z_find_the_shulker switch.data = #start_z_find_the_shulker switch.data
execute if score #scan_find_the_shulker switch.data matches 1 run data modify storage switch:doors find_the_shulker set value []


execute if score #scan_find_the_shulker switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_find_the_shulker switch.data matches 30.. summon marker run function switch:maps/survival/find_the_shulker/scan_doors_on_marker

execute if score #scan_find_the_shulker switch.data matches 119 in minecraft:overworld run forceload remove 57000 57000 57018 57113
execute if score #scan_find_the_shulker switch.data matches 119 in switch:game run forceload remove 57000 57000 57018 57113

execute if score #scan_find_the_shulker switch.data matches 119 in minecraft:overworld run forceload remove 57018 57000 57037 57113
execute if score #scan_find_the_shulker switch.data matches 119 in switch:game run forceload remove 57018 57000 57037 57113

execute if score #scan_find_the_shulker switch.data matches 119 in minecraft:overworld run forceload remove 57037 57000 57056 57113
execute if score #scan_find_the_shulker switch.data matches 119 in switch:game run forceload remove 57037 57000 57056 57113

execute if score #scan_find_the_shulker switch.data matches 119 in minecraft:overworld run forceload remove 57056 57000 57074 57113
execute if score #scan_find_the_shulker switch.data matches 119 in switch:game run forceload remove 57056 57000 57074 57113

execute if score #scan_find_the_shulker switch.data matches 119 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"find_the_shulker","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"5","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_find_the_shulker switch.data matches 119 run data remove storage switch:maps to_scan.find_the_shulker
execute if score #scan_find_the_shulker switch.data matches 119 run scoreboard players reset #scan_find_the_shulker switch.data

execute if score #scan_find_the_shulker switch.data matches 1.. run schedule function switch:maps/survival/find_the_shulker/scan_doors 1t

