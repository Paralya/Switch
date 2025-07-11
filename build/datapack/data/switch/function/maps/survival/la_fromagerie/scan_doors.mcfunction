
#> switch:maps/survival/la_fromagerie/scan_doors
#
# @within	switch:maps/survival/la_fromagerie/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_la_fromagerie switch.data 1

execute if score #scan_la_fromagerie switch.data matches 1 in minecraft:overworld run forceload add 59000 59000 59020 59099
execute if score #scan_la_fromagerie switch.data matches 1 in switch:game run forceload add 59000 59000 59020 59099

execute if score #scan_la_fromagerie switch.data matches 1 in minecraft:overworld run forceload add 59020 59000 59040 59099
execute if score #scan_la_fromagerie switch.data matches 1 in switch:game run forceload add 59020 59000 59040 59099

execute if score #scan_la_fromagerie switch.data matches 1 in minecraft:overworld run forceload add 59040 59000 59059 59099
execute if score #scan_la_fromagerie switch.data matches 1 in switch:game run forceload add 59040 59000 59059 59099

execute if score #scan_la_fromagerie switch.data matches 1 in minecraft:overworld run forceload add 59059 59000 59079 59099
execute if score #scan_la_fromagerie switch.data matches 1 in switch:game run forceload add 59059 59000 59079 59099

execute if score #scan_la_fromagerie switch.data matches 1 in minecraft:overworld run forceload add 59079 59000 59099 59099
execute if score #scan_la_fromagerie switch.data matches 1 in switch:game run forceload add 59079 59000 59099 59099

execute if score #scan_la_fromagerie switch.data matches 1 run data modify storage switch:maps to_scan.la_fromagerie set value 2b
execute if score #scan_la_fromagerie switch.data matches 1 run scoreboard players set #start_x_la_fromagerie switch.data 59001
execute if score #scan_la_fromagerie switch.data matches 1 run scoreboard players set #start_y_la_fromagerie switch.data 101
execute if score #scan_la_fromagerie switch.data matches 1 run scoreboard players set #start_z_la_fromagerie switch.data 59001
execute if score #scan_la_fromagerie switch.data matches 1 run scoreboard players set #end_x_la_fromagerie switch.data 59098
execute if score #scan_la_fromagerie switch.data matches 1 run scoreboard players set #end_y_la_fromagerie switch.data 165
execute if score #scan_la_fromagerie switch.data matches 1 run scoreboard players set #end_z_la_fromagerie switch.data 59098
execute if score #scan_la_fromagerie switch.data matches 1 run scoreboard players operation #curr_x_la_fromagerie switch.data = #start_x_la_fromagerie switch.data
execute if score #scan_la_fromagerie switch.data matches 1 run scoreboard players operation #curr_y_la_fromagerie switch.data = #start_y_la_fromagerie switch.data
execute if score #scan_la_fromagerie switch.data matches 1 run scoreboard players operation #curr_z_la_fromagerie switch.data = #start_z_la_fromagerie switch.data
execute if score #scan_la_fromagerie switch.data matches 1 run data modify storage switch:doors la_fromagerie set value []

execute if score #scan_la_fromagerie switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_la_fromagerie switch.data matches 30.. summon marker run function switch:maps/survival/la_fromagerie/scan_doors_on_marker

execute if score #scan_la_fromagerie switch.data matches 155 in minecraft:overworld run forceload remove 59000 59000 59020 59099
execute if score #scan_la_fromagerie switch.data matches 155 in switch:game run forceload remove 59000 59000 59020 59099

execute if score #scan_la_fromagerie switch.data matches 155 in minecraft:overworld run forceload remove 59020 59000 59040 59099
execute if score #scan_la_fromagerie switch.data matches 155 in switch:game run forceload remove 59020 59000 59040 59099

execute if score #scan_la_fromagerie switch.data matches 155 in minecraft:overworld run forceload remove 59040 59000 59059 59099
execute if score #scan_la_fromagerie switch.data matches 155 in switch:game run forceload remove 59040 59000 59059 59099

execute if score #scan_la_fromagerie switch.data matches 155 in minecraft:overworld run forceload remove 59059 59000 59079 59099
execute if score #scan_la_fromagerie switch.data matches 155 in switch:game run forceload remove 59059 59000 59079 59099

execute if score #scan_la_fromagerie switch.data matches 155 in minecraft:overworld run forceload remove 59079 59000 59099 59099
execute if score #scan_la_fromagerie switch.data matches 155 in switch:game run forceload remove 59079 59000 59099 59099

execute if score #scan_la_fromagerie switch.data matches 155 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"la_fromagerie","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"7","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_la_fromagerie switch.data matches 155 run data remove storage switch:maps to_scan.la_fromagerie
execute if score #scan_la_fromagerie switch.data matches 155 run scoreboard players reset #scan_la_fromagerie switch.data

execute if score #scan_la_fromagerie switch.data matches 1.. run schedule function switch:maps/survival/la_fromagerie/scan_doors 1t

