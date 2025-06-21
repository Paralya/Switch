
#> switch:maps/survival/highland_mansion/scan_doors
#
# @within	switch:maps/survival/highland_mansion/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_highland_mansion switch.data 1

execute if score #scan_highland_mansion switch.data matches 1 in minecraft:overworld run forceload add 85000 85000 85019 85142
execute if score #scan_highland_mansion switch.data matches 1 in switch:game run forceload add 85000 85000 85019 85142

execute if score #scan_highland_mansion switch.data matches 1 in minecraft:overworld run forceload add 85019 85000 85038 85142
execute if score #scan_highland_mansion switch.data matches 1 in switch:game run forceload add 85019 85000 85038 85142

execute if score #scan_highland_mansion switch.data matches 1 in minecraft:overworld run forceload add 85038 85000 85056 85142
execute if score #scan_highland_mansion switch.data matches 1 in switch:game run forceload add 85038 85000 85056 85142

execute if score #scan_highland_mansion switch.data matches 1 in minecraft:overworld run forceload add 85056 85000 85075 85142
execute if score #scan_highland_mansion switch.data matches 1 in switch:game run forceload add 85056 85000 85075 85142

execute if score #scan_highland_mansion switch.data matches 1 in minecraft:overworld run forceload add 85075 85000 85094 85142
execute if score #scan_highland_mansion switch.data matches 1 in switch:game run forceload add 85075 85000 85094 85142

execute if score #scan_highland_mansion switch.data matches 1 in minecraft:overworld run forceload add 85094 85000 85112 85142
execute if score #scan_highland_mansion switch.data matches 1 in switch:game run forceload add 85094 85000 85112 85142

execute if score #scan_highland_mansion switch.data matches 1 in minecraft:overworld run forceload add 85112 85000 85131 85142
execute if score #scan_highland_mansion switch.data matches 1 in switch:game run forceload add 85112 85000 85131 85142

execute if score #scan_highland_mansion switch.data matches 1 in minecraft:overworld run forceload add 85131 85000 85150 85142
execute if score #scan_highland_mansion switch.data matches 1 in switch:game run forceload add 85131 85000 85150 85142

execute if score #scan_highland_mansion switch.data matches 1 run data modify storage switch:maps to_scan.highland_mansion set value 2b
execute if score #scan_highland_mansion switch.data matches 1 run scoreboard players set #start_x_highland_mansion switch.data 85001
execute if score #scan_highland_mansion switch.data matches 1 run scoreboard players set #start_y_highland_mansion switch.data 1
execute if score #scan_highland_mansion switch.data matches 1 run scoreboard players set #start_z_highland_mansion switch.data 85001
execute if score #scan_highland_mansion switch.data matches 1 run scoreboard players set #end_x_highland_mansion switch.data 85149
execute if score #scan_highland_mansion switch.data matches 1 run scoreboard players set #end_y_highland_mansion switch.data 71
execute if score #scan_highland_mansion switch.data matches 1 run scoreboard players set #end_z_highland_mansion switch.data 85141
execute if score #scan_highland_mansion switch.data matches 1 run scoreboard players operation #curr_x_highland_mansion switch.data = #start_x_highland_mansion switch.data
execute if score #scan_highland_mansion switch.data matches 1 run scoreboard players operation #curr_y_highland_mansion switch.data = #start_y_highland_mansion switch.data
execute if score #scan_highland_mansion switch.data matches 1 run scoreboard players operation #curr_z_highland_mansion switch.data = #start_z_highland_mansion switch.data
execute if score #scan_highland_mansion switch.data matches 1 run data modify storage switch:doors highland_mansion set value []

execute if score #scan_highland_mansion switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_highland_mansion switch.data matches 30.. summon marker run function switch:maps/survival/highland_mansion/scan_doors_on_marker

execute if score #scan_highland_mansion switch.data matches 329 in minecraft:overworld run forceload remove 85000 85000 85019 85142
execute if score #scan_highland_mansion switch.data matches 329 in switch:game run forceload remove 85000 85000 85019 85142

execute if score #scan_highland_mansion switch.data matches 329 in minecraft:overworld run forceload remove 85019 85000 85038 85142
execute if score #scan_highland_mansion switch.data matches 329 in switch:game run forceload remove 85019 85000 85038 85142

execute if score #scan_highland_mansion switch.data matches 329 in minecraft:overworld run forceload remove 85038 85000 85056 85142
execute if score #scan_highland_mansion switch.data matches 329 in switch:game run forceload remove 85038 85000 85056 85142

execute if score #scan_highland_mansion switch.data matches 329 in minecraft:overworld run forceload remove 85056 85000 85075 85142
execute if score #scan_highland_mansion switch.data matches 329 in switch:game run forceload remove 85056 85000 85075 85142

execute if score #scan_highland_mansion switch.data matches 329 in minecraft:overworld run forceload remove 85075 85000 85094 85142
execute if score #scan_highland_mansion switch.data matches 329 in switch:game run forceload remove 85075 85000 85094 85142

execute if score #scan_highland_mansion switch.data matches 329 in minecraft:overworld run forceload remove 85094 85000 85112 85142
execute if score #scan_highland_mansion switch.data matches 329 in switch:game run forceload remove 85094 85000 85112 85142

execute if score #scan_highland_mansion switch.data matches 329 in minecraft:overworld run forceload remove 85112 85000 85131 85142
execute if score #scan_highland_mansion switch.data matches 329 in switch:game run forceload remove 85112 85000 85131 85142

execute if score #scan_highland_mansion switch.data matches 329 in minecraft:overworld run forceload remove 85131 85000 85150 85142
execute if score #scan_highland_mansion switch.data matches 329 in switch:game run forceload remove 85131 85000 85150 85142

execute if score #scan_highland_mansion switch.data matches 329 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"highland_mansion","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"16","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_highland_mansion switch.data matches 329 run data remove storage switch:maps to_scan.highland_mansion
execute if score #scan_highland_mansion switch.data matches 329 run scoreboard players reset #scan_highland_mansion switch.data

execute if score #scan_highland_mansion switch.data matches 1.. run schedule function switch:maps/survival/highland_mansion/scan_doors 1t

