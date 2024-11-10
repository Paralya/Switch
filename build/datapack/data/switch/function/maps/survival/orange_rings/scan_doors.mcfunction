
#> switch:maps/survival/orange_rings/scan_doors
#
# @within	switch:maps/survival/orange_rings/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_orange_rings switch.data 1

execute if score #scan_orange_rings switch.data matches 1 in minecraft:overworld run forceload add 65000 65000 65020 65103
execute if score #scan_orange_rings switch.data matches 1 in switch:game run forceload add 65000 65000 65020 65103

execute if score #scan_orange_rings switch.data matches 1 in minecraft:overworld run forceload add 65020 65000 65040 65103
execute if score #scan_orange_rings switch.data matches 1 in switch:game run forceload add 65020 65000 65040 65103

execute if score #scan_orange_rings switch.data matches 1 in minecraft:overworld run forceload add 65040 65000 65059 65103
execute if score #scan_orange_rings switch.data matches 1 in switch:game run forceload add 65040 65000 65059 65103

execute if score #scan_orange_rings switch.data matches 1 in minecraft:overworld run forceload add 65059 65000 65079 65103
execute if score #scan_orange_rings switch.data matches 1 in switch:game run forceload add 65059 65000 65079 65103

execute if score #scan_orange_rings switch.data matches 1 in minecraft:overworld run forceload add 65079 65000 65099 65103
execute if score #scan_orange_rings switch.data matches 1 in switch:game run forceload add 65079 65000 65099 65103

execute if score #scan_orange_rings switch.data matches 1 run data modify storage switch:maps to_scan.orange_rings set value 2b
execute if score #scan_orange_rings switch.data matches 1 run scoreboard players set #start_x_orange_rings switch.data 65001
execute if score #scan_orange_rings switch.data matches 1 run scoreboard players set #start_y_orange_rings switch.data 1
execute if score #scan_orange_rings switch.data matches 1 run scoreboard players set #start_z_orange_rings switch.data 65001
execute if score #scan_orange_rings switch.data matches 1 run scoreboard players set #end_x_orange_rings switch.data 65098
execute if score #scan_orange_rings switch.data matches 1 run scoreboard players set #end_y_orange_rings switch.data 93
execute if score #scan_orange_rings switch.data matches 1 run scoreboard players set #end_z_orange_rings switch.data 65102
execute if score #scan_orange_rings switch.data matches 1 run scoreboard players operation #curr_x_orange_rings switch.data = #start_x_orange_rings switch.data
execute if score #scan_orange_rings switch.data matches 1 run scoreboard players operation #curr_y_orange_rings switch.data = #start_y_orange_rings switch.data
execute if score #scan_orange_rings switch.data matches 1 run scoreboard players operation #curr_z_orange_rings switch.data = #start_z_orange_rings switch.data
execute if score #scan_orange_rings switch.data matches 1 run data modify storage switch:doors orange_rings set value []


execute if score #scan_orange_rings switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_orange_rings switch.data matches 30.. summon marker run function switch:maps/survival/orange_rings/scan_doors_on_marker

execute if score #scan_orange_rings switch.data matches 216 in minecraft:overworld run forceload remove 65000 65000 65020 65103
execute if score #scan_orange_rings switch.data matches 216 in switch:game run forceload remove 65000 65000 65020 65103

execute if score #scan_orange_rings switch.data matches 216 in minecraft:overworld run forceload remove 65020 65000 65040 65103
execute if score #scan_orange_rings switch.data matches 216 in switch:game run forceload remove 65020 65000 65040 65103

execute if score #scan_orange_rings switch.data matches 216 in minecraft:overworld run forceload remove 65040 65000 65059 65103
execute if score #scan_orange_rings switch.data matches 216 in switch:game run forceload remove 65040 65000 65059 65103

execute if score #scan_orange_rings switch.data matches 216 in minecraft:overworld run forceload remove 65059 65000 65079 65103
execute if score #scan_orange_rings switch.data matches 216 in switch:game run forceload remove 65059 65000 65079 65103

execute if score #scan_orange_rings switch.data matches 216 in minecraft:overworld run forceload remove 65079 65000 65099 65103
execute if score #scan_orange_rings switch.data matches 216 in switch:game run forceload remove 65079 65000 65099 65103

execute if score #scan_orange_rings switch.data matches 216 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"orange_rings","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"10","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_orange_rings switch.data matches 216 run data remove storage switch:maps to_scan.orange_rings
execute if score #scan_orange_rings switch.data matches 216 run scoreboard players reset #scan_orange_rings switch.data

execute if score #scan_orange_rings switch.data matches 1.. run schedule function switch:maps/survival/orange_rings/scan_doors 1t

