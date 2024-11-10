
#> switch:maps/survival/nether_storm/scan_doors
#
# @within	switch:maps/survival/nether_storm/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_nether_storm switch.data 1

execute if score #scan_nether_storm switch.data matches 1 in minecraft:overworld run forceload add 122000 122000 122028 122074
execute if score #scan_nether_storm switch.data matches 1 in switch:game run forceload add 122000 122000 122028 122074

execute if score #scan_nether_storm switch.data matches 1 in minecraft:overworld run forceload add 122028 122000 122056 122074
execute if score #scan_nether_storm switch.data matches 1 in switch:game run forceload add 122028 122000 122056 122074

execute if score #scan_nether_storm switch.data matches 1 in minecraft:overworld run forceload add 122056 122000 122083 122074
execute if score #scan_nether_storm switch.data matches 1 in switch:game run forceload add 122056 122000 122083 122074

execute if score #scan_nether_storm switch.data matches 1 in minecraft:overworld run forceload add 122083 122000 122111 122074
execute if score #scan_nether_storm switch.data matches 1 in switch:game run forceload add 122083 122000 122111 122074

execute if score #scan_nether_storm switch.data matches 1 run data modify storage switch:maps to_scan.nether_storm set value 2b
execute if score #scan_nether_storm switch.data matches 1 run scoreboard players set #start_x_nether_storm switch.data 122001
execute if score #scan_nether_storm switch.data matches 1 run scoreboard players set #start_y_nether_storm switch.data 1
execute if score #scan_nether_storm switch.data matches 1 run scoreboard players set #start_z_nether_storm switch.data 122001
execute if score #scan_nether_storm switch.data matches 1 run scoreboard players set #end_x_nether_storm switch.data 122110
execute if score #scan_nether_storm switch.data matches 1 run scoreboard players set #end_y_nether_storm switch.data 48
execute if score #scan_nether_storm switch.data matches 1 run scoreboard players set #end_z_nether_storm switch.data 122073
execute if score #scan_nether_storm switch.data matches 1 run scoreboard players operation #curr_x_nether_storm switch.data = #start_x_nether_storm switch.data
execute if score #scan_nether_storm switch.data matches 1 run scoreboard players operation #curr_y_nether_storm switch.data = #start_y_nether_storm switch.data
execute if score #scan_nether_storm switch.data matches 1 run scoreboard players operation #curr_z_nether_storm switch.data = #start_z_nether_storm switch.data
execute if score #scan_nether_storm switch.data matches 1 run data modify storage switch:doors nether_storm set value []


execute if score #scan_nether_storm switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_nether_storm switch.data matches 30.. summon marker run function switch:maps/survival/nether_storm/scan_doors_on_marker

execute if score #scan_nether_storm switch.data matches 108 in minecraft:overworld run forceload remove 122000 122000 122028 122074
execute if score #scan_nether_storm switch.data matches 108 in switch:game run forceload remove 122000 122000 122028 122074

execute if score #scan_nether_storm switch.data matches 108 in minecraft:overworld run forceload remove 122028 122000 122056 122074
execute if score #scan_nether_storm switch.data matches 108 in switch:game run forceload remove 122028 122000 122056 122074

execute if score #scan_nether_storm switch.data matches 108 in minecraft:overworld run forceload remove 122056 122000 122083 122074
execute if score #scan_nether_storm switch.data matches 108 in switch:game run forceload remove 122056 122000 122083 122074

execute if score #scan_nether_storm switch.data matches 108 in minecraft:overworld run forceload remove 122083 122000 122111 122074
execute if score #scan_nether_storm switch.data matches 108 in switch:game run forceload remove 122083 122000 122111 122074

execute if score #scan_nether_storm switch.data matches 108 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"nether_storm","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"5","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_nether_storm switch.data matches 108 run data remove storage switch:maps to_scan.nether_storm
execute if score #scan_nether_storm switch.data matches 108 run scoreboard players reset #scan_nether_storm switch.data

execute if score #scan_nether_storm switch.data matches 1.. run schedule function switch:maps/survival/nether_storm/scan_doors 1t

