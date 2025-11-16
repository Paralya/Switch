
#> switch:maps/survival/snow_travel/scan_doors
#
# @within	switch:maps/survival/snow_travel/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_snow_travel switch.data 1

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23000 23000 23014 23205
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 23000 23000 23014 23205

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23014 23000 23028 23205
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 23014 23000 23028 23205

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23028 23000 23041 23205
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 23028 23000 23041 23205

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23041 23000 23055 23205
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 23041 23000 23055 23205

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23055 23000 23069 23205
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 23055 23000 23069 23205

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23069 23000 23083 23205
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 23069 23000 23083 23205

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23083 23000 23097 23205
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 23083 23000 23097 23205

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23097 23000 23110 23205
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 23097 23000 23110 23205

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23110 23000 23124 23205
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 23110 23000 23124 23205

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23124 23000 23138 23205
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 23124 23000 23138 23205

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23138 23000 23152 23205
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 23138 23000 23152 23205

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23152 23000 23166 23205
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 23152 23000 23166 23205

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23166 23000 23179 23205
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 23166 23000 23179 23205

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23179 23000 23193 23205
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 23179 23000 23193 23205

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23193 23000 23207 23205
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 23193 23000 23207 23205

execute if score #scan_snow_travel switch.data matches 1 run data modify storage switch:maps to_scan.snow_travel set value 2b
execute if score #scan_snow_travel switch.data matches 1 run scoreboard players set #start_x_snow_travel switch.data 23001
execute if score #scan_snow_travel switch.data matches 1 run scoreboard players set #start_y_snow_travel switch.data 101
execute if score #scan_snow_travel switch.data matches 1 run scoreboard players set #start_z_snow_travel switch.data 23001
execute if score #scan_snow_travel switch.data matches 1 run scoreboard players set #end_x_snow_travel switch.data 23206
execute if score #scan_snow_travel switch.data matches 1 run scoreboard players set #end_y_snow_travel switch.data 185
execute if score #scan_snow_travel switch.data matches 1 run scoreboard players set #end_z_snow_travel switch.data 23204
execute if score #scan_snow_travel switch.data matches 1 run scoreboard players operation #curr_x_snow_travel switch.data = #start_x_snow_travel switch.data
execute if score #scan_snow_travel switch.data matches 1 run scoreboard players operation #curr_y_snow_travel switch.data = #start_y_snow_travel switch.data
execute if score #scan_snow_travel switch.data matches 1 run scoreboard players operation #curr_z_snow_travel switch.data = #start_z_snow_travel switch.data
execute if score #scan_snow_travel switch.data matches 1 run data modify storage switch:doors snow_travel set value []

execute if score #scan_snow_travel switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_snow_travel switch.data matches 30.. summon marker run function switch:maps/survival/snow_travel/scan_doors_on_marker

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 23000 23000 23014 23205
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 23000 23000 23014 23205

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 23014 23000 23028 23205
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 23014 23000 23028 23205

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 23028 23000 23041 23205
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 23028 23000 23041 23205

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 23041 23000 23055 23205
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 23041 23000 23055 23205

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 23055 23000 23069 23205
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 23055 23000 23069 23205

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 23069 23000 23083 23205
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 23069 23000 23083 23205

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 23083 23000 23097 23205
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 23083 23000 23097 23205

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 23097 23000 23110 23205
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 23097 23000 23110 23205

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 23110 23000 23124 23205
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 23110 23000 23124 23205

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 23124 23000 23138 23205
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 23124 23000 23138 23205

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 23138 23000 23152 23205
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 23138 23000 23152 23205

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 23152 23000 23166 23205
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 23152 23000 23166 23205

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 23166 23000 23179 23205
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 23166 23000 23179 23205

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 23179 23000 23193 23205
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 23179 23000 23193 23205

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 23193 23000 23207 23205
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 23193 23000 23207 23205

execute if score #scan_snow_travel switch.data matches 745 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"snow_travel","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"37","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_snow_travel switch.data matches 745 run data remove storage switch:maps to_scan.snow_travel
execute if score #scan_snow_travel switch.data matches 745 run scoreboard players reset #scan_snow_travel switch.data

execute if score #scan_snow_travel switch.data matches 1.. run schedule function switch:maps/survival/snow_travel/scan_doors 1t

