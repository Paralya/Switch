
#> switch:maps/survival/city_race/scan_doors
#
# @within	switch:maps/survival/city_race/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_city_race switch.data 1

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 6380 -5906 6392 -5645
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 6380 -5906 6392 -5645

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 6392 -5906 6403 -5645
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 6392 -5906 6403 -5645

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 6403 -5906 6415 -5645
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 6403 -5906 6415 -5645

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 6415 -5906 6427 -5645
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 6415 -5906 6427 -5645

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 6427 -5906 6438 -5645
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 6427 -5906 6438 -5645

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 6438 -5906 6450 -5645
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 6438 -5906 6450 -5645

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 6450 -5906 6462 -5645
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 6450 -5906 6462 -5645

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 6462 -5906 6473 -5645
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 6462 -5906 6473 -5645

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 6473 -5906 6485 -5645
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 6473 -5906 6485 -5645

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 6485 -5906 6497 -5645
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 6485 -5906 6497 -5645

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 6497 -5906 6508 -5645
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 6497 -5906 6508 -5645

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 6508 -5906 6520 -5645
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 6508 -5906 6520 -5645

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 6520 -5906 6532 -5645
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 6520 -5906 6532 -5645

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 6532 -5906 6543 -5645
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 6532 -5906 6543 -5645

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 6543 -5906 6555 -5645
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 6543 -5906 6555 -5645

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 6555 -5906 6567 -5645
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 6555 -5906 6567 -5645

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 6567 -5906 6578 -5645
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 6567 -5906 6578 -5645

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 6578 -5906 6590 -5645
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 6578 -5906 6590 -5645

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 6590 -5906 6602 -5645
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 6590 -5906 6602 -5645

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 6602 -5906 6613 -5645
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 6602 -5906 6613 -5645

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 6613 -5906 6625 -5645
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 6613 -5906 6625 -5645

execute if score #scan_city_race switch.data matches 1 run data modify storage switch:maps to_scan.city_race set value 2b
execute if score #scan_city_race switch.data matches 1 run scoreboard players set #start_x_city_race switch.data 6381
execute if score #scan_city_race switch.data matches 1 run scoreboard players set #start_y_city_race switch.data 86
execute if score #scan_city_race switch.data matches 1 run scoreboard players set #start_z_city_race switch.data -5905
execute if score #scan_city_race switch.data matches 1 run scoreboard players set #end_x_city_race switch.data 6624
execute if score #scan_city_race switch.data matches 1 run scoreboard players set #end_y_city_race switch.data 203
execute if score #scan_city_race switch.data matches 1 run scoreboard players set #end_z_city_race switch.data -5646
execute if score #scan_city_race switch.data matches 1 run scoreboard players operation #curr_x_city_race switch.data = #start_x_city_race switch.data
execute if score #scan_city_race switch.data matches 1 run scoreboard players operation #curr_y_city_race switch.data = #start_y_city_race switch.data
execute if score #scan_city_race switch.data matches 1 run scoreboard players operation #curr_z_city_race switch.data = #start_z_city_race switch.data
execute if score #scan_city_race switch.data matches 1 run data modify storage switch:doors city_race set value []

execute if score #scan_city_race switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_city_race switch.data matches 30.. summon marker run function switch:maps/survival/city_race/scan_doors_on_marker

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 6380 -5906 6392 -5645
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 6380 -5906 6392 -5645

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 6392 -5906 6403 -5645
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 6392 -5906 6403 -5645

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 6403 -5906 6415 -5645
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 6403 -5906 6415 -5645

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 6415 -5906 6427 -5645
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 6415 -5906 6427 -5645

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 6427 -5906 6438 -5645
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 6427 -5906 6438 -5645

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 6438 -5906 6450 -5645
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 6438 -5906 6450 -5645

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 6450 -5906 6462 -5645
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 6450 -5906 6462 -5645

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 6462 -5906 6473 -5645
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 6462 -5906 6473 -5645

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 6473 -5906 6485 -5645
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 6473 -5906 6485 -5645

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 6485 -5906 6497 -5645
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 6485 -5906 6497 -5645

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 6497 -5906 6508 -5645
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 6497 -5906 6508 -5645

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 6508 -5906 6520 -5645
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 6508 -5906 6520 -5645

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 6520 -5906 6532 -5645
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 6520 -5906 6532 -5645

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 6532 -5906 6543 -5645
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 6532 -5906 6543 -5645

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 6543 -5906 6555 -5645
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 6543 -5906 6555 -5645

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 6555 -5906 6567 -5645
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 6555 -5906 6567 -5645

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 6567 -5906 6578 -5645
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 6567 -5906 6578 -5645

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 6578 -5906 6590 -5645
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 6578 -5906 6590 -5645

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 6590 -5906 6602 -5645
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 6590 -5906 6602 -5645

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 6602 -5906 6613 -5645
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 6602 -5906 6613 -5645

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 6613 -5906 6625 -5645
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 6613 -5906 6625 -5645

execute if score #scan_city_race switch.data matches 1528 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"city_race","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"76","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_city_race switch.data matches 1528 run data remove storage switch:maps to_scan.city_race
execute if score #scan_city_race switch.data matches 1528 run scoreboard players reset #scan_city_race switch.data

execute if score #scan_city_race switch.data matches 1.. run schedule function switch:maps/survival/city_race/scan_doors 1t

