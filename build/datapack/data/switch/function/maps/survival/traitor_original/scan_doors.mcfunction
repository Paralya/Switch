
#> switch:maps/survival/traitor_original/scan_doors
#
# @within	switch:maps/survival/traitor_original/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_traitor_original switch.data 1

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1500 1500 1518 1655
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 1500 1500 1518 1655

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1518 1500 1537 1655
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 1518 1500 1537 1655

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1537 1500 1555 1655
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 1537 1500 1555 1655

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1555 1500 1574 1655
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 1555 1500 1574 1655

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1574 1500 1592 1655
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 1574 1500 1592 1655

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1592 1500 1610 1655
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 1592 1500 1610 1655

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1610 1500 1629 1655
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 1610 1500 1629 1655

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1629 1500 1647 1655
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 1629 1500 1647 1655

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1647 1500 1666 1655
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 1647 1500 1666 1655

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1666 1500 1684 1655
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 1666 1500 1684 1655

execute if score #scan_traitor_original switch.data matches 1 run data modify storage switch:maps to_scan.traitor_original set value 2b
execute if score #scan_traitor_original switch.data matches 1 run scoreboard players set #start_x_traitor_original switch.data 1501
execute if score #scan_traitor_original switch.data matches 1 run scoreboard players set #start_y_traitor_original switch.data 101
execute if score #scan_traitor_original switch.data matches 1 run scoreboard players set #start_z_traitor_original switch.data 1501
execute if score #scan_traitor_original switch.data matches 1 run scoreboard players set #end_x_traitor_original switch.data 1683
execute if score #scan_traitor_original switch.data matches 1 run scoreboard players set #end_y_traitor_original switch.data 188
execute if score #scan_traitor_original switch.data matches 1 run scoreboard players set #end_z_traitor_original switch.data 1654
execute if score #scan_traitor_original switch.data matches 1 run scoreboard players operation #curr_x_traitor_original switch.data = #start_x_traitor_original switch.data
execute if score #scan_traitor_original switch.data matches 1 run scoreboard players operation #curr_y_traitor_original switch.data = #start_y_traitor_original switch.data
execute if score #scan_traitor_original switch.data matches 1 run scoreboard players operation #curr_z_traitor_original switch.data = #start_z_traitor_original switch.data
execute if score #scan_traitor_original switch.data matches 1 run data modify storage switch:doors traitor_original set value []

execute if score #scan_traitor_original switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_traitor_original switch.data matches 30.. summon marker run function switch:maps/survival/traitor_original/scan_doors_on_marker

execute if score #scan_traitor_original switch.data matches 527 in minecraft:overworld run forceload remove 1500 1500 1518 1655
execute if score #scan_traitor_original switch.data matches 527 in switch:game run forceload remove 1500 1500 1518 1655

execute if score #scan_traitor_original switch.data matches 527 in minecraft:overworld run forceload remove 1518 1500 1537 1655
execute if score #scan_traitor_original switch.data matches 527 in switch:game run forceload remove 1518 1500 1537 1655

execute if score #scan_traitor_original switch.data matches 527 in minecraft:overworld run forceload remove 1537 1500 1555 1655
execute if score #scan_traitor_original switch.data matches 527 in switch:game run forceload remove 1537 1500 1555 1655

execute if score #scan_traitor_original switch.data matches 527 in minecraft:overworld run forceload remove 1555 1500 1574 1655
execute if score #scan_traitor_original switch.data matches 527 in switch:game run forceload remove 1555 1500 1574 1655

execute if score #scan_traitor_original switch.data matches 527 in minecraft:overworld run forceload remove 1574 1500 1592 1655
execute if score #scan_traitor_original switch.data matches 527 in switch:game run forceload remove 1574 1500 1592 1655

execute if score #scan_traitor_original switch.data matches 527 in minecraft:overworld run forceload remove 1592 1500 1610 1655
execute if score #scan_traitor_original switch.data matches 527 in switch:game run forceload remove 1592 1500 1610 1655

execute if score #scan_traitor_original switch.data matches 527 in minecraft:overworld run forceload remove 1610 1500 1629 1655
execute if score #scan_traitor_original switch.data matches 527 in switch:game run forceload remove 1610 1500 1629 1655

execute if score #scan_traitor_original switch.data matches 527 in minecraft:overworld run forceload remove 1629 1500 1647 1655
execute if score #scan_traitor_original switch.data matches 527 in switch:game run forceload remove 1629 1500 1647 1655

execute if score #scan_traitor_original switch.data matches 527 in minecraft:overworld run forceload remove 1647 1500 1666 1655
execute if score #scan_traitor_original switch.data matches 527 in switch:game run forceload remove 1647 1500 1666 1655

execute if score #scan_traitor_original switch.data matches 527 in minecraft:overworld run forceload remove 1666 1500 1684 1655
execute if score #scan_traitor_original switch.data matches 527 in switch:game run forceload remove 1666 1500 1684 1655

execute if score #scan_traitor_original switch.data matches 527 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"traitor_original","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"26","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_traitor_original switch.data matches 527 run data remove storage switch:maps to_scan.traitor_original
execute if score #scan_traitor_original switch.data matches 527 run scoreboard players reset #scan_traitor_original switch.data

execute if score #scan_traitor_original switch.data matches 1.. run schedule function switch:maps/survival/traitor_original/scan_doors 1t

