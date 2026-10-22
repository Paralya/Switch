
#> switch:maps/survival/bombardement/scan_doors
#
# @within	switch:maps/survival/bombardement/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_bombardement switch.data 1

execute if score #scan_bombardement switch.data matches 1 in minecraft:overworld run forceload add 10000 2000 10023 2087
execute if score #scan_bombardement switch.data matches 1 in switch:game run forceload add 10000 2000 10023 2087

execute if score #scan_bombardement switch.data matches 1 in minecraft:overworld run forceload add 10023 2000 10046 2087
execute if score #scan_bombardement switch.data matches 1 in switch:game run forceload add 10023 2000 10046 2087

execute if score #scan_bombardement switch.data matches 1 in minecraft:overworld run forceload add 10046 2000 10069 2087
execute if score #scan_bombardement switch.data matches 1 in switch:game run forceload add 10046 2000 10069 2087

execute if score #scan_bombardement switch.data matches 1 in minecraft:overworld run forceload add 10069 2000 10092 2087
execute if score #scan_bombardement switch.data matches 1 in switch:game run forceload add 10069 2000 10092 2087

execute if score #scan_bombardement switch.data matches 1 in minecraft:overworld run forceload add 10092 2000 10115 2087
execute if score #scan_bombardement switch.data matches 1 in switch:game run forceload add 10092 2000 10115 2087

execute if score #scan_bombardement switch.data matches 1 run data modify storage switch:maps to_scan.bombardement set value 2b
execute if score #scan_bombardement switch.data matches 1 run scoreboard players set #start_x_bombardement switch.data 10001
execute if score #scan_bombardement switch.data matches 1 run scoreboard players set #start_y_bombardement switch.data 101
execute if score #scan_bombardement switch.data matches 1 run scoreboard players set #start_z_bombardement switch.data 2001
execute if score #scan_bombardement switch.data matches 1 run scoreboard players set #end_x_bombardement switch.data 10114
execute if score #scan_bombardement switch.data matches 1 run scoreboard players set #end_y_bombardement switch.data 176
execute if score #scan_bombardement switch.data matches 1 run scoreboard players set #end_z_bombardement switch.data 2086
execute if score #scan_bombardement switch.data matches 1 run scoreboard players operation #curr_x_bombardement switch.data = #start_x_bombardement switch.data
execute if score #scan_bombardement switch.data matches 1 run scoreboard players operation #curr_y_bombardement switch.data = #start_y_bombardement switch.data
execute if score #scan_bombardement switch.data matches 1 run scoreboard players operation #curr_z_bombardement switch.data = #start_z_bombardement switch.data
execute if score #scan_bombardement switch.data matches 1 run data modify storage switch:doors bombardement set value []

execute if score #scan_bombardement switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_bombardement switch.data matches 30.. summon marker run function switch:maps/survival/bombardement/scan_doors_on_marker

execute if score #scan_bombardement switch.data matches 180 in minecraft:overworld run forceload remove 10000 2000 10023 2087
execute if score #scan_bombardement switch.data matches 180 in switch:game run forceload remove 10000 2000 10023 2087

execute if score #scan_bombardement switch.data matches 180 in minecraft:overworld run forceload remove 10023 2000 10046 2087
execute if score #scan_bombardement switch.data matches 180 in switch:game run forceload remove 10023 2000 10046 2087

execute if score #scan_bombardement switch.data matches 180 in minecraft:overworld run forceload remove 10046 2000 10069 2087
execute if score #scan_bombardement switch.data matches 180 in switch:game run forceload remove 10046 2000 10069 2087

execute if score #scan_bombardement switch.data matches 180 in minecraft:overworld run forceload remove 10069 2000 10092 2087
execute if score #scan_bombardement switch.data matches 180 in switch:game run forceload remove 10069 2000 10092 2087

execute if score #scan_bombardement switch.data matches 180 in minecraft:overworld run forceload remove 10092 2000 10115 2087
execute if score #scan_bombardement switch.data matches 180 in switch:game run forceload remove 10092 2000 10115 2087

execute if score #scan_bombardement switch.data matches 180 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"bombardement","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"9","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_bombardement switch.data matches 180 run data remove storage switch:maps to_scan.bombardement
execute if score #scan_bombardement switch.data matches 180 run scoreboard players reset #scan_bombardement switch.data

execute if score #scan_bombardement switch.data matches 1.. run schedule function switch:maps/survival/bombardement/scan_doors 1t

