
#> switch:maps/survival/cathedrale_liege/scan_doors
#
# @within	switch:maps/survival/cathedrale_liege/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_cathedrale_liege switch.data 1

execute if score #scan_cathedrale_liege switch.data matches 1 in minecraft:overworld run forceload add 25961 25944 25989 26028
execute if score #scan_cathedrale_liege switch.data matches 1 in switch:game run forceload add 25961 25944 25989 26028

execute if score #scan_cathedrale_liege switch.data matches 1 in minecraft:overworld run forceload add 25989 25944 26016 26028
execute if score #scan_cathedrale_liege switch.data matches 1 in switch:game run forceload add 25989 25944 26016 26028

execute if score #scan_cathedrale_liege switch.data matches 1 in minecraft:overworld run forceload add 26016 25944 26044 26028
execute if score #scan_cathedrale_liege switch.data matches 1 in switch:game run forceload add 26016 25944 26044 26028

execute if score #scan_cathedrale_liege switch.data matches 1 in minecraft:overworld run forceload add 26044 25944 26071 26028
execute if score #scan_cathedrale_liege switch.data matches 1 in switch:game run forceload add 26044 25944 26071 26028

execute if score #scan_cathedrale_liege switch.data matches 1 in minecraft:overworld run forceload add 26071 25944 26099 26028
execute if score #scan_cathedrale_liege switch.data matches 1 in switch:game run forceload add 26071 25944 26099 26028

execute if score #scan_cathedrale_liege switch.data matches 1 run data modify storage switch:maps to_scan.cathedrale_liege set value 2b
execute if score #scan_cathedrale_liege switch.data matches 1 run scoreboard players set #start_x_cathedrale_liege switch.data 25962
execute if score #scan_cathedrale_liege switch.data matches 1 run scoreboard players set #start_y_cathedrale_liege switch.data -63
execute if score #scan_cathedrale_liege switch.data matches 1 run scoreboard players set #start_z_cathedrale_liege switch.data 25945
execute if score #scan_cathedrale_liege switch.data matches 1 run scoreboard players set #end_x_cathedrale_liege switch.data 26098
execute if score #scan_cathedrale_liege switch.data matches 1 run scoreboard players set #end_y_cathedrale_liege switch.data 98
execute if score #scan_cathedrale_liege switch.data matches 1 run scoreboard players set #end_z_cathedrale_liege switch.data 26027
execute if score #scan_cathedrale_liege switch.data matches 1 run scoreboard players operation #curr_x_cathedrale_liege switch.data = #start_x_cathedrale_liege switch.data
execute if score #scan_cathedrale_liege switch.data matches 1 run scoreboard players operation #curr_y_cathedrale_liege switch.data = #start_y_cathedrale_liege switch.data
execute if score #scan_cathedrale_liege switch.data matches 1 run scoreboard players operation #curr_z_cathedrale_liege switch.data = #start_z_cathedrale_liege switch.data
execute if score #scan_cathedrale_liege switch.data matches 1 run data modify storage switch:doors cathedrale_liege set value []


execute if score #scan_cathedrale_liege switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_cathedrale_liege switch.data matches 30.. summon marker run function switch:maps/survival/cathedrale_liege/scan_doors_on_marker

execute if score #scan_cathedrale_liege switch.data matches 399 in minecraft:overworld run forceload remove 25961 25944 25989 26028
execute if score #scan_cathedrale_liege switch.data matches 399 in switch:game run forceload remove 25961 25944 25989 26028

execute if score #scan_cathedrale_liege switch.data matches 399 in minecraft:overworld run forceload remove 25989 25944 26016 26028
execute if score #scan_cathedrale_liege switch.data matches 399 in switch:game run forceload remove 25989 25944 26016 26028

execute if score #scan_cathedrale_liege switch.data matches 399 in minecraft:overworld run forceload remove 26016 25944 26044 26028
execute if score #scan_cathedrale_liege switch.data matches 399 in switch:game run forceload remove 26016 25944 26044 26028

execute if score #scan_cathedrale_liege switch.data matches 399 in minecraft:overworld run forceload remove 26044 25944 26071 26028
execute if score #scan_cathedrale_liege switch.data matches 399 in switch:game run forceload remove 26044 25944 26071 26028

execute if score #scan_cathedrale_liege switch.data matches 399 in minecraft:overworld run forceload remove 26071 25944 26099 26028
execute if score #scan_cathedrale_liege switch.data matches 399 in switch:game run forceload remove 26071 25944 26099 26028

execute if score #scan_cathedrale_liege switch.data matches 399 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"cathedrale_liege","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"19","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_cathedrale_liege switch.data matches 399 run data remove storage switch:maps to_scan.cathedrale_liege
execute if score #scan_cathedrale_liege switch.data matches 399 run scoreboard players reset #scan_cathedrale_liege switch.data

execute if score #scan_cathedrale_liege switch.data matches 1.. run schedule function switch:maps/survival/cathedrale_liege/scan_doors 1t

