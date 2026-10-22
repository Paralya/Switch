
#> switch:maps/survival/jn_countries_castle/scan_doors
#
# @within	switch:maps/survival/jn_countries_castle/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_jn_countries_castle switch.data 1

execute if score #scan_jn_countries_castle switch.data matches 1 in minecraft:overworld run forceload add -2000 10000 -1980 10120
execute if score #scan_jn_countries_castle switch.data matches 1 in switch:game run forceload add -2000 10000 -1980 10120

execute if score #scan_jn_countries_castle switch.data matches 1 in minecraft:overworld run forceload add -1980 10000 -1960 10120
execute if score #scan_jn_countries_castle switch.data matches 1 in switch:game run forceload add -1980 10000 -1960 10120

execute if score #scan_jn_countries_castle switch.data matches 1 in minecraft:overworld run forceload add -1960 10000 -1940 10120
execute if score #scan_jn_countries_castle switch.data matches 1 in switch:game run forceload add -1960 10000 -1940 10120

execute if score #scan_jn_countries_castle switch.data matches 1 in minecraft:overworld run forceload add -1940 10000 -1920 10120
execute if score #scan_jn_countries_castle switch.data matches 1 in switch:game run forceload add -1940 10000 -1920 10120

execute if score #scan_jn_countries_castle switch.data matches 1 in minecraft:overworld run forceload add -1920 10000 -1900 10120
execute if score #scan_jn_countries_castle switch.data matches 1 in switch:game run forceload add -1920 10000 -1900 10120

execute if score #scan_jn_countries_castle switch.data matches 1 in minecraft:overworld run forceload add -1900 10000 -1880 10120
execute if score #scan_jn_countries_castle switch.data matches 1 in switch:game run forceload add -1900 10000 -1880 10120

execute if score #scan_jn_countries_castle switch.data matches 1 run data modify storage switch:maps to_scan.jn_countries_castle set value 2b
execute if score #scan_jn_countries_castle switch.data matches 1 run scoreboard players set #start_x_jn_countries_castle switch.data -1999
execute if score #scan_jn_countries_castle switch.data matches 1 run scoreboard players set #start_y_jn_countries_castle switch.data 101
execute if score #scan_jn_countries_castle switch.data matches 1 run scoreboard players set #start_z_jn_countries_castle switch.data 10001
execute if score #scan_jn_countries_castle switch.data matches 1 run scoreboard players set #end_x_jn_countries_castle switch.data -1881
execute if score #scan_jn_countries_castle switch.data matches 1 run scoreboard players set #end_y_jn_countries_castle switch.data 142
execute if score #scan_jn_countries_castle switch.data matches 1 run scoreboard players set #end_z_jn_countries_castle switch.data 10119
execute if score #scan_jn_countries_castle switch.data matches 1 run scoreboard players operation #curr_x_jn_countries_castle switch.data = #start_x_jn_countries_castle switch.data
execute if score #scan_jn_countries_castle switch.data matches 1 run scoreboard players operation #curr_y_jn_countries_castle switch.data = #start_y_jn_countries_castle switch.data
execute if score #scan_jn_countries_castle switch.data matches 1 run scoreboard players operation #curr_z_jn_countries_castle switch.data = #start_z_jn_countries_castle switch.data
execute if score #scan_jn_countries_castle switch.data matches 1 run data modify storage switch:doors jn_countries_castle set value []

execute if score #scan_jn_countries_castle switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_jn_countries_castle switch.data matches 30.. summon marker run function switch:maps/survival/jn_countries_castle/scan_doors_on_marker

execute if score #scan_jn_countries_castle switch.data matches 149 in minecraft:overworld run forceload remove -2000 10000 -1980 10120
execute if score #scan_jn_countries_castle switch.data matches 149 in switch:game run forceload remove -2000 10000 -1980 10120

execute if score #scan_jn_countries_castle switch.data matches 149 in minecraft:overworld run forceload remove -1980 10000 -1960 10120
execute if score #scan_jn_countries_castle switch.data matches 149 in switch:game run forceload remove -1980 10000 -1960 10120

execute if score #scan_jn_countries_castle switch.data matches 149 in minecraft:overworld run forceload remove -1960 10000 -1940 10120
execute if score #scan_jn_countries_castle switch.data matches 149 in switch:game run forceload remove -1960 10000 -1940 10120

execute if score #scan_jn_countries_castle switch.data matches 149 in minecraft:overworld run forceload remove -1940 10000 -1920 10120
execute if score #scan_jn_countries_castle switch.data matches 149 in switch:game run forceload remove -1940 10000 -1920 10120

execute if score #scan_jn_countries_castle switch.data matches 149 in minecraft:overworld run forceload remove -1920 10000 -1900 10120
execute if score #scan_jn_countries_castle switch.data matches 149 in switch:game run forceload remove -1920 10000 -1900 10120

execute if score #scan_jn_countries_castle switch.data matches 149 in minecraft:overworld run forceload remove -1900 10000 -1880 10120
execute if score #scan_jn_countries_castle switch.data matches 149 in switch:game run forceload remove -1900 10000 -1880 10120

execute if score #scan_jn_countries_castle switch.data matches 149 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"jn_countries_castle","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"7","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_jn_countries_castle switch.data matches 149 run data remove storage switch:maps to_scan.jn_countries_castle
execute if score #scan_jn_countries_castle switch.data matches 149 run scoreboard players reset #scan_jn_countries_castle switch.data

execute if score #scan_jn_countries_castle switch.data matches 1.. run schedule function switch:maps/survival/jn_countries_castle/scan_doors 1t

