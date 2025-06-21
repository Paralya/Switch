
#> switch:maps/survival/nature_house/scan_doors
#
# @within	switch:maps/survival/nature_house/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_nature_house switch.data 1

execute if score #scan_nature_house switch.data matches 1 in minecraft:overworld run forceload add 88000 88000 88023 88068
execute if score #scan_nature_house switch.data matches 1 in switch:game run forceload add 88000 88000 88023 88068

execute if score #scan_nature_house switch.data matches 1 in minecraft:overworld run forceload add 88023 88000 88045 88068
execute if score #scan_nature_house switch.data matches 1 in switch:game run forceload add 88023 88000 88045 88068

execute if score #scan_nature_house switch.data matches 1 in minecraft:overworld run forceload add 88045 88000 88068 88068
execute if score #scan_nature_house switch.data matches 1 in switch:game run forceload add 88045 88000 88068 88068

execute if score #scan_nature_house switch.data matches 1 run data modify storage switch:maps to_scan.nature_house set value 2b
execute if score #scan_nature_house switch.data matches 1 run scoreboard players set #start_x_nature_house switch.data 88001
execute if score #scan_nature_house switch.data matches 1 run scoreboard players set #start_y_nature_house switch.data 1
execute if score #scan_nature_house switch.data matches 1 run scoreboard players set #start_z_nature_house switch.data 88001
execute if score #scan_nature_house switch.data matches 1 run scoreboard players set #end_x_nature_house switch.data 88067
execute if score #scan_nature_house switch.data matches 1 run scoreboard players set #end_y_nature_house switch.data 97
execute if score #scan_nature_house switch.data matches 1 run scoreboard players set #end_z_nature_house switch.data 88067
execute if score #scan_nature_house switch.data matches 1 run scoreboard players operation #curr_x_nature_house switch.data = #start_x_nature_house switch.data
execute if score #scan_nature_house switch.data matches 1 run scoreboard players operation #curr_y_nature_house switch.data = #start_y_nature_house switch.data
execute if score #scan_nature_house switch.data matches 1 run scoreboard players operation #curr_z_nature_house switch.data = #start_z_nature_house switch.data
execute if score #scan_nature_house switch.data matches 1 run data modify storage switch:doors nature_house set value []

execute if score #scan_nature_house switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_nature_house switch.data matches 30.. summon marker run function switch:maps/survival/nature_house/scan_doors_on_marker

execute if score #scan_nature_house switch.data matches 118 in minecraft:overworld run forceload remove 88000 88000 88023 88068
execute if score #scan_nature_house switch.data matches 118 in switch:game run forceload remove 88000 88000 88023 88068

execute if score #scan_nature_house switch.data matches 118 in minecraft:overworld run forceload remove 88023 88000 88045 88068
execute if score #scan_nature_house switch.data matches 118 in switch:game run forceload remove 88023 88000 88045 88068

execute if score #scan_nature_house switch.data matches 118 in minecraft:overworld run forceload remove 88045 88000 88068 88068
execute if score #scan_nature_house switch.data matches 118 in switch:game run forceload remove 88045 88000 88068 88068

execute if score #scan_nature_house switch.data matches 118 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"nature_house","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"5","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_nature_house switch.data matches 118 run data remove storage switch:maps to_scan.nature_house
execute if score #scan_nature_house switch.data matches 118 run scoreboard players reset #scan_nature_house switch.data

execute if score #scan_nature_house switch.data matches 1.. run schedule function switch:maps/survival/nature_house/scan_doors 1t

