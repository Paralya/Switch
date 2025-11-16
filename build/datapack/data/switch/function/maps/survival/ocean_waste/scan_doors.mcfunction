
#> switch:maps/survival/ocean_waste/scan_doors
#
# @within	switch:maps/survival/ocean_waste/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_ocean_waste switch.data 1

execute if score #scan_ocean_waste switch.data matches 1 in minecraft:overworld run forceload add 64000 64000 64020 64100
execute if score #scan_ocean_waste switch.data matches 1 in switch:game run forceload add 64000 64000 64020 64100

execute if score #scan_ocean_waste switch.data matches 1 in minecraft:overworld run forceload add 64020 64000 64040 64100
execute if score #scan_ocean_waste switch.data matches 1 in switch:game run forceload add 64020 64000 64040 64100

execute if score #scan_ocean_waste switch.data matches 1 in minecraft:overworld run forceload add 64040 64000 64060 64100
execute if score #scan_ocean_waste switch.data matches 1 in switch:game run forceload add 64040 64000 64060 64100

execute if score #scan_ocean_waste switch.data matches 1 in minecraft:overworld run forceload add 64060 64000 64080 64100
execute if score #scan_ocean_waste switch.data matches 1 in switch:game run forceload add 64060 64000 64080 64100

execute if score #scan_ocean_waste switch.data matches 1 in minecraft:overworld run forceload add 64080 64000 64100 64100
execute if score #scan_ocean_waste switch.data matches 1 in switch:game run forceload add 64080 64000 64100 64100

execute if score #scan_ocean_waste switch.data matches 1 run data modify storage switch:maps to_scan.ocean_waste set value 2b
execute if score #scan_ocean_waste switch.data matches 1 run scoreboard players set #start_x_ocean_waste switch.data 64001
execute if score #scan_ocean_waste switch.data matches 1 run scoreboard players set #start_y_ocean_waste switch.data 101
execute if score #scan_ocean_waste switch.data matches 1 run scoreboard players set #start_z_ocean_waste switch.data 64001
execute if score #scan_ocean_waste switch.data matches 1 run scoreboard players set #end_x_ocean_waste switch.data 64099
execute if score #scan_ocean_waste switch.data matches 1 run scoreboard players set #end_y_ocean_waste switch.data 189
execute if score #scan_ocean_waste switch.data matches 1 run scoreboard players set #end_z_ocean_waste switch.data 64099
execute if score #scan_ocean_waste switch.data matches 1 run scoreboard players operation #curr_x_ocean_waste switch.data = #start_x_ocean_waste switch.data
execute if score #scan_ocean_waste switch.data matches 1 run scoreboard players operation #curr_y_ocean_waste switch.data = #start_y_ocean_waste switch.data
execute if score #scan_ocean_waste switch.data matches 1 run scoreboard players operation #curr_z_ocean_waste switch.data = #start_z_ocean_waste switch.data
execute if score #scan_ocean_waste switch.data matches 1 run data modify storage switch:doors ocean_waste set value []

execute if score #scan_ocean_waste switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_ocean_waste switch.data matches 30.. summon marker run function switch:maps/survival/ocean_waste/scan_doors_on_marker

execute if score #scan_ocean_waste switch.data matches 205 in minecraft:overworld run forceload remove 64000 64000 64020 64100
execute if score #scan_ocean_waste switch.data matches 205 in switch:game run forceload remove 64000 64000 64020 64100

execute if score #scan_ocean_waste switch.data matches 205 in minecraft:overworld run forceload remove 64020 64000 64040 64100
execute if score #scan_ocean_waste switch.data matches 205 in switch:game run forceload remove 64020 64000 64040 64100

execute if score #scan_ocean_waste switch.data matches 205 in minecraft:overworld run forceload remove 64040 64000 64060 64100
execute if score #scan_ocean_waste switch.data matches 205 in switch:game run forceload remove 64040 64000 64060 64100

execute if score #scan_ocean_waste switch.data matches 205 in minecraft:overworld run forceload remove 64060 64000 64080 64100
execute if score #scan_ocean_waste switch.data matches 205 in switch:game run forceload remove 64060 64000 64080 64100

execute if score #scan_ocean_waste switch.data matches 205 in minecraft:overworld run forceload remove 64080 64000 64100 64100
execute if score #scan_ocean_waste switch.data matches 205 in switch:game run forceload remove 64080 64000 64100 64100

execute if score #scan_ocean_waste switch.data matches 205 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"ocean_waste","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"10","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_ocean_waste switch.data matches 205 run data remove storage switch:maps to_scan.ocean_waste
execute if score #scan_ocean_waste switch.data matches 205 run scoreboard players reset #scan_ocean_waste switch.data

execute if score #scan_ocean_waste switch.data matches 1.. run schedule function switch:maps/survival/ocean_waste/scan_doors 1t

