
#> switch:maps/survival/traitor_original/scan_doors
#
# @within	switch:maps/survival/traitor_original/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_traitor_original switch.data 1

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1408 1423 1426 1578
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 1408 1423 1426 1578

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1426 1423 1445 1578
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 1426 1423 1445 1578

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1445 1423 1463 1578
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 1445 1423 1463 1578

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1463 1423 1482 1578
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 1463 1423 1482 1578

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1482 1423 1500 1578
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 1482 1423 1500 1578

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1500 1423 1518 1578
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 1500 1423 1518 1578

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1518 1423 1537 1578
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 1518 1423 1537 1578

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1537 1423 1555 1578
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 1537 1423 1555 1578

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1555 1423 1574 1578
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 1555 1423 1574 1578

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1574 1423 1592 1578
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 1574 1423 1592 1578

execute if score #scan_traitor_original switch.data matches 1 run data modify storage switch:maps to_scan.traitor_original set value 2b
execute if score #scan_traitor_original switch.data matches 1 run scoreboard players set #start_x_traitor_original switch.data 1409
execute if score #scan_traitor_original switch.data matches 1 run scoreboard players set #start_y_traitor_original switch.data 1
execute if score #scan_traitor_original switch.data matches 1 run scoreboard players set #start_z_traitor_original switch.data 1424
execute if score #scan_traitor_original switch.data matches 1 run scoreboard players set #end_x_traitor_original switch.data 1591
execute if score #scan_traitor_original switch.data matches 1 run scoreboard players set #end_y_traitor_original switch.data 62
execute if score #scan_traitor_original switch.data matches 1 run scoreboard players set #end_z_traitor_original switch.data 1577
execute if score #scan_traitor_original switch.data matches 1 run scoreboard players operation #curr_x_traitor_original switch.data = #start_x_traitor_original switch.data
execute if score #scan_traitor_original switch.data matches 1 run scoreboard players operation #curr_y_traitor_original switch.data = #start_y_traitor_original switch.data
execute if score #scan_traitor_original switch.data matches 1 run scoreboard players operation #curr_z_traitor_original switch.data = #start_z_traitor_original switch.data
execute if score #scan_traitor_original switch.data matches 1 run data modify storage switch:doors traitor_original set value []


execute if score #scan_traitor_original switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_traitor_original switch.data matches 30.. summon marker run function switch:maps/survival/traitor_original/scan_doors_on_marker

execute if score #scan_traitor_original switch.data matches 380 in minecraft:overworld run forceload remove 1408 1423 1426 1578
execute if score #scan_traitor_original switch.data matches 380 in switch:game run forceload remove 1408 1423 1426 1578

execute if score #scan_traitor_original switch.data matches 380 in minecraft:overworld run forceload remove 1426 1423 1445 1578
execute if score #scan_traitor_original switch.data matches 380 in switch:game run forceload remove 1426 1423 1445 1578

execute if score #scan_traitor_original switch.data matches 380 in minecraft:overworld run forceload remove 1445 1423 1463 1578
execute if score #scan_traitor_original switch.data matches 380 in switch:game run forceload remove 1445 1423 1463 1578

execute if score #scan_traitor_original switch.data matches 380 in minecraft:overworld run forceload remove 1463 1423 1482 1578
execute if score #scan_traitor_original switch.data matches 380 in switch:game run forceload remove 1463 1423 1482 1578

execute if score #scan_traitor_original switch.data matches 380 in minecraft:overworld run forceload remove 1482 1423 1500 1578
execute if score #scan_traitor_original switch.data matches 380 in switch:game run forceload remove 1482 1423 1500 1578

execute if score #scan_traitor_original switch.data matches 380 in minecraft:overworld run forceload remove 1500 1423 1518 1578
execute if score #scan_traitor_original switch.data matches 380 in switch:game run forceload remove 1500 1423 1518 1578

execute if score #scan_traitor_original switch.data matches 380 in minecraft:overworld run forceload remove 1518 1423 1537 1578
execute if score #scan_traitor_original switch.data matches 380 in switch:game run forceload remove 1518 1423 1537 1578

execute if score #scan_traitor_original switch.data matches 380 in minecraft:overworld run forceload remove 1537 1423 1555 1578
execute if score #scan_traitor_original switch.data matches 380 in switch:game run forceload remove 1537 1423 1555 1578

execute if score #scan_traitor_original switch.data matches 380 in minecraft:overworld run forceload remove 1555 1423 1574 1578
execute if score #scan_traitor_original switch.data matches 380 in switch:game run forceload remove 1555 1423 1574 1578

execute if score #scan_traitor_original switch.data matches 380 in minecraft:overworld run forceload remove 1574 1423 1592 1578
execute if score #scan_traitor_original switch.data matches 380 in switch:game run forceload remove 1574 1423 1592 1578

execute if score #scan_traitor_original switch.data matches 380 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"traitor_original","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"19","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_traitor_original switch.data matches 380 run data remove storage switch:maps to_scan.traitor_original
execute if score #scan_traitor_original switch.data matches 380 run scoreboard players reset #scan_traitor_original switch.data

execute if score #scan_traitor_original switch.data matches 1.. run schedule function switch:maps/survival/traitor_original/scan_doors 1t

