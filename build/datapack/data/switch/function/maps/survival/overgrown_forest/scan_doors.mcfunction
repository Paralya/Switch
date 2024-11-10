
#> switch:maps/survival/overgrown_forest/scan_doors
#
# @within	switch:maps/survival/overgrown_forest/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_overgrown_forest switch.data 1

execute if score #scan_overgrown_forest switch.data matches 1 in minecraft:overworld run forceload add 139000 139000 139023 139103
execute if score #scan_overgrown_forest switch.data matches 1 in switch:game run forceload add 139000 139000 139023 139103

execute if score #scan_overgrown_forest switch.data matches 1 in minecraft:overworld run forceload add 139023 139000 139046 139103
execute if score #scan_overgrown_forest switch.data matches 1 in switch:game run forceload add 139023 139000 139046 139103

execute if score #scan_overgrown_forest switch.data matches 1 in minecraft:overworld run forceload add 139046 139000 139068 139103
execute if score #scan_overgrown_forest switch.data matches 1 in switch:game run forceload add 139046 139000 139068 139103

execute if score #scan_overgrown_forest switch.data matches 1 in minecraft:overworld run forceload add 139068 139000 139091 139103
execute if score #scan_overgrown_forest switch.data matches 1 in switch:game run forceload add 139068 139000 139091 139103

execute if score #scan_overgrown_forest switch.data matches 1 run data modify storage switch:maps to_scan.overgrown_forest set value 2b
execute if score #scan_overgrown_forest switch.data matches 1 run scoreboard players set #start_x_overgrown_forest switch.data 139001
execute if score #scan_overgrown_forest switch.data matches 1 run scoreboard players set #start_y_overgrown_forest switch.data 1
execute if score #scan_overgrown_forest switch.data matches 1 run scoreboard players set #start_z_overgrown_forest switch.data 139001
execute if score #scan_overgrown_forest switch.data matches 1 run scoreboard players set #end_x_overgrown_forest switch.data 139090
execute if score #scan_overgrown_forest switch.data matches 1 run scoreboard players set #end_y_overgrown_forest switch.data 49
execute if score #scan_overgrown_forest switch.data matches 1 run scoreboard players set #end_z_overgrown_forest switch.data 139102
execute if score #scan_overgrown_forest switch.data matches 1 run scoreboard players operation #curr_x_overgrown_forest switch.data = #start_x_overgrown_forest switch.data
execute if score #scan_overgrown_forest switch.data matches 1 run scoreboard players operation #curr_y_overgrown_forest switch.data = #start_y_overgrown_forest switch.data
execute if score #scan_overgrown_forest switch.data matches 1 run scoreboard players operation #curr_z_overgrown_forest switch.data = #start_z_overgrown_forest switch.data
execute if score #scan_overgrown_forest switch.data matches 1 run data modify storage switch:doors overgrown_forest set value []


execute if score #scan_overgrown_forest switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_overgrown_forest switch.data matches 30.. summon marker run function switch:maps/survival/overgrown_forest/scan_doors_on_marker

execute if score #scan_overgrown_forest switch.data matches 120 in minecraft:overworld run forceload remove 139000 139000 139023 139103
execute if score #scan_overgrown_forest switch.data matches 120 in switch:game run forceload remove 139000 139000 139023 139103

execute if score #scan_overgrown_forest switch.data matches 120 in minecraft:overworld run forceload remove 139023 139000 139046 139103
execute if score #scan_overgrown_forest switch.data matches 120 in switch:game run forceload remove 139023 139000 139046 139103

execute if score #scan_overgrown_forest switch.data matches 120 in minecraft:overworld run forceload remove 139046 139000 139068 139103
execute if score #scan_overgrown_forest switch.data matches 120 in switch:game run forceload remove 139046 139000 139068 139103

execute if score #scan_overgrown_forest switch.data matches 120 in minecraft:overworld run forceload remove 139068 139000 139091 139103
execute if score #scan_overgrown_forest switch.data matches 120 in switch:game run forceload remove 139068 139000 139091 139103

execute if score #scan_overgrown_forest switch.data matches 120 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"overgrown_forest","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"6","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_overgrown_forest switch.data matches 120 run data remove storage switch:maps to_scan.overgrown_forest
execute if score #scan_overgrown_forest switch.data matches 120 run scoreboard players reset #scan_overgrown_forest switch.data

execute if score #scan_overgrown_forest switch.data matches 1.. run schedule function switch:maps/survival/overgrown_forest/scan_doors 1t

