
#> switch:maps/survival/ancienne_egypte_2013/scan_doors
#
# @within	switch:maps/survival/ancienne_egypte_2013/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_ancienne_egypte_2013 switch.data 1

execute if score #scan_ancienne_egypte_2013 switch.data matches 1 in minecraft:overworld run forceload add 128000 128000 128019 128113
execute if score #scan_ancienne_egypte_2013 switch.data matches 1 in switch:game run forceload add 128000 128000 128019 128113

execute if score #scan_ancienne_egypte_2013 switch.data matches 1 in minecraft:overworld run forceload add 128019 128000 128038 128113
execute if score #scan_ancienne_egypte_2013 switch.data matches 1 in switch:game run forceload add 128019 128000 128038 128113

execute if score #scan_ancienne_egypte_2013 switch.data matches 1 in minecraft:overworld run forceload add 128038 128000 128057 128113
execute if score #scan_ancienne_egypte_2013 switch.data matches 1 in switch:game run forceload add 128038 128000 128057 128113

execute if score #scan_ancienne_egypte_2013 switch.data matches 1 in minecraft:overworld run forceload add 128057 128000 128076 128113
execute if score #scan_ancienne_egypte_2013 switch.data matches 1 in switch:game run forceload add 128057 128000 128076 128113

execute if score #scan_ancienne_egypte_2013 switch.data matches 1 in minecraft:overworld run forceload add 128076 128000 128095 128113
execute if score #scan_ancienne_egypte_2013 switch.data matches 1 in switch:game run forceload add 128076 128000 128095 128113

execute if score #scan_ancienne_egypte_2013 switch.data matches 1 run data modify storage switch:maps to_scan.ancienne_egypte_2013 set value 2b
execute if score #scan_ancienne_egypte_2013 switch.data matches 1 run scoreboard players set #start_x_ancienne_egypte_2013 switch.data 128001
execute if score #scan_ancienne_egypte_2013 switch.data matches 1 run scoreboard players set #start_y_ancienne_egypte_2013 switch.data 1
execute if score #scan_ancienne_egypte_2013 switch.data matches 1 run scoreboard players set #start_z_ancienne_egypte_2013 switch.data 128001
execute if score #scan_ancienne_egypte_2013 switch.data matches 1 run scoreboard players set #end_x_ancienne_egypte_2013 switch.data 128094
execute if score #scan_ancienne_egypte_2013 switch.data matches 1 run scoreboard players set #end_y_ancienne_egypte_2013 switch.data 75
execute if score #scan_ancienne_egypte_2013 switch.data matches 1 run scoreboard players set #end_z_ancienne_egypte_2013 switch.data 128112
execute if score #scan_ancienne_egypte_2013 switch.data matches 1 run scoreboard players operation #curr_x_ancienne_egypte_2013 switch.data = #start_x_ancienne_egypte_2013 switch.data
execute if score #scan_ancienne_egypte_2013 switch.data matches 1 run scoreboard players operation #curr_y_ancienne_egypte_2013 switch.data = #start_y_ancienne_egypte_2013 switch.data
execute if score #scan_ancienne_egypte_2013 switch.data matches 1 run scoreboard players operation #curr_z_ancienne_egypte_2013 switch.data = #start_z_ancienne_egypte_2013 switch.data
execute if score #scan_ancienne_egypte_2013 switch.data matches 1 run data modify storage switch:doors ancienne_egypte_2013 set value []


execute if score #scan_ancienne_egypte_2013 switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_ancienne_egypte_2013 switch.data matches 30.. summon marker run function switch:maps/survival/ancienne_egypte_2013/scan_doors_on_marker

execute if score #scan_ancienne_egypte_2013 switch.data matches 188 in minecraft:overworld run forceload remove 128000 128000 128019 128113
execute if score #scan_ancienne_egypte_2013 switch.data matches 188 in switch:game run forceload remove 128000 128000 128019 128113

execute if score #scan_ancienne_egypte_2013 switch.data matches 188 in minecraft:overworld run forceload remove 128019 128000 128038 128113
execute if score #scan_ancienne_egypte_2013 switch.data matches 188 in switch:game run forceload remove 128019 128000 128038 128113

execute if score #scan_ancienne_egypte_2013 switch.data matches 188 in minecraft:overworld run forceload remove 128038 128000 128057 128113
execute if score #scan_ancienne_egypte_2013 switch.data matches 188 in switch:game run forceload remove 128038 128000 128057 128113

execute if score #scan_ancienne_egypte_2013 switch.data matches 188 in minecraft:overworld run forceload remove 128057 128000 128076 128113
execute if score #scan_ancienne_egypte_2013 switch.data matches 188 in switch:game run forceload remove 128057 128000 128076 128113

execute if score #scan_ancienne_egypte_2013 switch.data matches 188 in minecraft:overworld run forceload remove 128076 128000 128095 128113
execute if score #scan_ancienne_egypte_2013 switch.data matches 188 in switch:game run forceload remove 128076 128000 128095 128113

execute if score #scan_ancienne_egypte_2013 switch.data matches 188 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"ancienne_egypte_2013","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"9","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_ancienne_egypte_2013 switch.data matches 188 run data remove storage switch:maps to_scan.ancienne_egypte_2013
execute if score #scan_ancienne_egypte_2013 switch.data matches 188 run scoreboard players reset #scan_ancienne_egypte_2013 switch.data

execute if score #scan_ancienne_egypte_2013 switch.data matches 1.. run schedule function switch:maps/survival/ancienne_egypte_2013/scan_doors 1t

