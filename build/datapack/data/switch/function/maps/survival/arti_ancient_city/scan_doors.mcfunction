
#> switch:maps/survival/arti_ancient_city/scan_doors
#
# @within	switch:maps/survival/arti_ancient_city/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_arti_ancient_city switch.data 1

execute if score #scan_arti_ancient_city switch.data matches 1 in minecraft:overworld run forceload add 2000 -12000 2018 -11883
execute if score #scan_arti_ancient_city switch.data matches 1 in switch:game run forceload add 2000 -12000 2018 -11883

execute if score #scan_arti_ancient_city switch.data matches 1 in minecraft:overworld run forceload add 2018 -12000 2037 -11883
execute if score #scan_arti_ancient_city switch.data matches 1 in switch:game run forceload add 2018 -12000 2037 -11883

execute if score #scan_arti_ancient_city switch.data matches 1 in minecraft:overworld run forceload add 2037 -12000 2056 -11883
execute if score #scan_arti_ancient_city switch.data matches 1 in switch:game run forceload add 2037 -12000 2056 -11883

execute if score #scan_arti_ancient_city switch.data matches 1 in minecraft:overworld run forceload add 2056 -12000 2074 -11883
execute if score #scan_arti_ancient_city switch.data matches 1 in switch:game run forceload add 2056 -12000 2074 -11883

execute if score #scan_arti_ancient_city switch.data matches 1 in minecraft:overworld run forceload add 2074 -12000 2092 -11883
execute if score #scan_arti_ancient_city switch.data matches 1 in switch:game run forceload add 2074 -12000 2092 -11883

execute if score #scan_arti_ancient_city switch.data matches 1 in minecraft:overworld run forceload add 2092 -12000 2111 -11883
execute if score #scan_arti_ancient_city switch.data matches 1 in switch:game run forceload add 2092 -12000 2111 -11883

execute if score #scan_arti_ancient_city switch.data matches 1 run data modify storage switch:maps to_scan.arti_ancient_city set value 2b
execute if score #scan_arti_ancient_city switch.data matches 1 run scoreboard players set #start_x_arti_ancient_city switch.data 2001
execute if score #scan_arti_ancient_city switch.data matches 1 run scoreboard players set #start_y_arti_ancient_city switch.data 101
execute if score #scan_arti_ancient_city switch.data matches 1 run scoreboard players set #start_z_arti_ancient_city switch.data -11999
execute if score #scan_arti_ancient_city switch.data matches 1 run scoreboard players set #end_x_arti_ancient_city switch.data 2110
execute if score #scan_arti_ancient_city switch.data matches 1 run scoreboard players set #end_y_arti_ancient_city switch.data 150
execute if score #scan_arti_ancient_city switch.data matches 1 run scoreboard players set #end_z_arti_ancient_city switch.data -11884
execute if score #scan_arti_ancient_city switch.data matches 1 run scoreboard players operation #curr_x_arti_ancient_city switch.data = #start_x_arti_ancient_city switch.data
execute if score #scan_arti_ancient_city switch.data matches 1 run scoreboard players operation #curr_y_arti_ancient_city switch.data = #start_y_arti_ancient_city switch.data
execute if score #scan_arti_ancient_city switch.data matches 1 run scoreboard players operation #curr_z_arti_ancient_city switch.data = #start_z_arti_ancient_city switch.data
execute if score #scan_arti_ancient_city switch.data matches 1 run data modify storage switch:doors arti_ancient_city set value []

execute if score #scan_arti_ancient_city switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_arti_ancient_city switch.data matches 30.. summon marker run function switch:maps/survival/arti_ancient_city/scan_doors_on_marker

execute if score #scan_arti_ancient_city switch.data matches 158 in minecraft:overworld run forceload remove 2000 -12000 2018 -11883
execute if score #scan_arti_ancient_city switch.data matches 158 in switch:game run forceload remove 2000 -12000 2018 -11883

execute if score #scan_arti_ancient_city switch.data matches 158 in minecraft:overworld run forceload remove 2018 -12000 2037 -11883
execute if score #scan_arti_ancient_city switch.data matches 158 in switch:game run forceload remove 2018 -12000 2037 -11883

execute if score #scan_arti_ancient_city switch.data matches 158 in minecraft:overworld run forceload remove 2037 -12000 2056 -11883
execute if score #scan_arti_ancient_city switch.data matches 158 in switch:game run forceload remove 2037 -12000 2056 -11883

execute if score #scan_arti_ancient_city switch.data matches 158 in minecraft:overworld run forceload remove 2056 -12000 2074 -11883
execute if score #scan_arti_ancient_city switch.data matches 158 in switch:game run forceload remove 2056 -12000 2074 -11883

execute if score #scan_arti_ancient_city switch.data matches 158 in minecraft:overworld run forceload remove 2074 -12000 2092 -11883
execute if score #scan_arti_ancient_city switch.data matches 158 in switch:game run forceload remove 2074 -12000 2092 -11883

execute if score #scan_arti_ancient_city switch.data matches 158 in minecraft:overworld run forceload remove 2092 -12000 2111 -11883
execute if score #scan_arti_ancient_city switch.data matches 158 in switch:game run forceload remove 2092 -12000 2111 -11883

execute if score #scan_arti_ancient_city switch.data matches 158 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"arti_ancient_city","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"7","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_arti_ancient_city switch.data matches 158 run data remove storage switch:maps to_scan.arti_ancient_city
execute if score #scan_arti_ancient_city switch.data matches 158 run scoreboard players reset #scan_arti_ancient_city switch.data

execute if score #scan_arti_ancient_city switch.data matches 1.. run schedule function switch:maps/survival/arti_ancient_city/scan_doors 1t

