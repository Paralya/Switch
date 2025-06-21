
#> switch:maps/survival/jn_countries_castle/scan_doors
#
# @within	switch:maps/survival/jn_countries_castle/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_jn_countries_castle switch.data 1

execute if score #scan_jn_countries_castle switch.data matches 1 in minecraft:overworld run forceload add 132000 132000 132020 132120
execute if score #scan_jn_countries_castle switch.data matches 1 in switch:game run forceload add 132000 132000 132020 132120

execute if score #scan_jn_countries_castle switch.data matches 1 in minecraft:overworld run forceload add 132020 132000 132040 132120
execute if score #scan_jn_countries_castle switch.data matches 1 in switch:game run forceload add 132020 132000 132040 132120

execute if score #scan_jn_countries_castle switch.data matches 1 in minecraft:overworld run forceload add 132040 132000 132060 132120
execute if score #scan_jn_countries_castle switch.data matches 1 in switch:game run forceload add 132040 132000 132060 132120

execute if score #scan_jn_countries_castle switch.data matches 1 in minecraft:overworld run forceload add 132060 132000 132080 132120
execute if score #scan_jn_countries_castle switch.data matches 1 in switch:game run forceload add 132060 132000 132080 132120

execute if score #scan_jn_countries_castle switch.data matches 1 in minecraft:overworld run forceload add 132080 132000 132100 132120
execute if score #scan_jn_countries_castle switch.data matches 1 in switch:game run forceload add 132080 132000 132100 132120

execute if score #scan_jn_countries_castle switch.data matches 1 in minecraft:overworld run forceload add 132100 132000 132120 132120
execute if score #scan_jn_countries_castle switch.data matches 1 in switch:game run forceload add 132100 132000 132120 132120

execute if score #scan_jn_countries_castle switch.data matches 1 run data modify storage switch:maps to_scan.jn_countries_castle set value 2b
execute if score #scan_jn_countries_castle switch.data matches 1 run scoreboard players set #start_x_jn_countries_castle switch.data 132001
execute if score #scan_jn_countries_castle switch.data matches 1 run scoreboard players set #start_y_jn_countries_castle switch.data 1
execute if score #scan_jn_countries_castle switch.data matches 1 run scoreboard players set #start_z_jn_countries_castle switch.data 132001
execute if score #scan_jn_countries_castle switch.data matches 1 run scoreboard players set #end_x_jn_countries_castle switch.data 132119
execute if score #scan_jn_countries_castle switch.data matches 1 run scoreboard players set #end_y_jn_countries_castle switch.data 42
execute if score #scan_jn_countries_castle switch.data matches 1 run scoreboard players set #end_z_jn_countries_castle switch.data 132119
execute if score #scan_jn_countries_castle switch.data matches 1 run scoreboard players operation #curr_x_jn_countries_castle switch.data = #start_x_jn_countries_castle switch.data
execute if score #scan_jn_countries_castle switch.data matches 1 run scoreboard players operation #curr_y_jn_countries_castle switch.data = #start_y_jn_countries_castle switch.data
execute if score #scan_jn_countries_castle switch.data matches 1 run scoreboard players operation #curr_z_jn_countries_castle switch.data = #start_z_jn_countries_castle switch.data
execute if score #scan_jn_countries_castle switch.data matches 1 run data modify storage switch:doors jn_countries_castle set value []

execute if score #scan_jn_countries_castle switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_jn_countries_castle switch.data matches 30.. summon marker run function switch:maps/survival/jn_countries_castle/scan_doors_on_marker

execute if score #scan_jn_countries_castle switch.data matches 149 in minecraft:overworld run forceload remove 132000 132000 132020 132120
execute if score #scan_jn_countries_castle switch.data matches 149 in switch:game run forceload remove 132000 132000 132020 132120

execute if score #scan_jn_countries_castle switch.data matches 149 in minecraft:overworld run forceload remove 132020 132000 132040 132120
execute if score #scan_jn_countries_castle switch.data matches 149 in switch:game run forceload remove 132020 132000 132040 132120

execute if score #scan_jn_countries_castle switch.data matches 149 in minecraft:overworld run forceload remove 132040 132000 132060 132120
execute if score #scan_jn_countries_castle switch.data matches 149 in switch:game run forceload remove 132040 132000 132060 132120

execute if score #scan_jn_countries_castle switch.data matches 149 in minecraft:overworld run forceload remove 132060 132000 132080 132120
execute if score #scan_jn_countries_castle switch.data matches 149 in switch:game run forceload remove 132060 132000 132080 132120

execute if score #scan_jn_countries_castle switch.data matches 149 in minecraft:overworld run forceload remove 132080 132000 132100 132120
execute if score #scan_jn_countries_castle switch.data matches 149 in switch:game run forceload remove 132080 132000 132100 132120

execute if score #scan_jn_countries_castle switch.data matches 149 in minecraft:overworld run forceload remove 132100 132000 132120 132120
execute if score #scan_jn_countries_castle switch.data matches 149 in switch:game run forceload remove 132100 132000 132120 132120

execute if score #scan_jn_countries_castle switch.data matches 149 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"jn_countries_castle","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"7","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_jn_countries_castle switch.data matches 149 run data remove storage switch:maps to_scan.jn_countries_castle
execute if score #scan_jn_countries_castle switch.data matches 149 run scoreboard players reset #scan_jn_countries_castle switch.data

execute if score #scan_jn_countries_castle switch.data matches 1.. run schedule function switch:maps/survival/jn_countries_castle/scan_doors 1t

