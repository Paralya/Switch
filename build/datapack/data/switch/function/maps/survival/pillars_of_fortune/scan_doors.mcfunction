
#> switch:maps/survival/pillars_of_fortune/scan_doors
#
# @within	switch:maps/survival/pillars_of_fortune/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_pillars_of_fortune switch.data 1

execute if score #scan_pillars_of_fortune switch.data matches 1 in minecraft:overworld run forceload add 161000 161000 161020 161100
execute if score #scan_pillars_of_fortune switch.data matches 1 in switch:game run forceload add 161000 161000 161020 161100

execute if score #scan_pillars_of_fortune switch.data matches 1 in minecraft:overworld run forceload add 161020 161000 161040 161100
execute if score #scan_pillars_of_fortune switch.data matches 1 in switch:game run forceload add 161020 161000 161040 161100

execute if score #scan_pillars_of_fortune switch.data matches 1 in minecraft:overworld run forceload add 161040 161000 161060 161100
execute if score #scan_pillars_of_fortune switch.data matches 1 in switch:game run forceload add 161040 161000 161060 161100

execute if score #scan_pillars_of_fortune switch.data matches 1 in minecraft:overworld run forceload add 161060 161000 161080 161100
execute if score #scan_pillars_of_fortune switch.data matches 1 in switch:game run forceload add 161060 161000 161080 161100

execute if score #scan_pillars_of_fortune switch.data matches 1 in minecraft:overworld run forceload add 161080 161000 161100 161100
execute if score #scan_pillars_of_fortune switch.data matches 1 in switch:game run forceload add 161080 161000 161100 161100

execute if score #scan_pillars_of_fortune switch.data matches 1 run data modify storage switch:maps to_scan.pillars_of_fortune set value 2b
execute if score #scan_pillars_of_fortune switch.data matches 1 run scoreboard players set #start_x_pillars_of_fortune switch.data 161001
execute if score #scan_pillars_of_fortune switch.data matches 1 run scoreboard players set #start_y_pillars_of_fortune switch.data 101
execute if score #scan_pillars_of_fortune switch.data matches 1 run scoreboard players set #start_z_pillars_of_fortune switch.data 161001
execute if score #scan_pillars_of_fortune switch.data matches 1 run scoreboard players set #end_x_pillars_of_fortune switch.data 161099
execute if score #scan_pillars_of_fortune switch.data matches 1 run scoreboard players set #end_y_pillars_of_fortune switch.data 189
execute if score #scan_pillars_of_fortune switch.data matches 1 run scoreboard players set #end_z_pillars_of_fortune switch.data 161099
execute if score #scan_pillars_of_fortune switch.data matches 1 run scoreboard players operation #curr_x_pillars_of_fortune switch.data = #start_x_pillars_of_fortune switch.data
execute if score #scan_pillars_of_fortune switch.data matches 1 run scoreboard players operation #curr_y_pillars_of_fortune switch.data = #start_y_pillars_of_fortune switch.data
execute if score #scan_pillars_of_fortune switch.data matches 1 run scoreboard players operation #curr_z_pillars_of_fortune switch.data = #start_z_pillars_of_fortune switch.data
execute if score #scan_pillars_of_fortune switch.data matches 1 run data modify storage switch:doors pillars_of_fortune set value []

execute if score #scan_pillars_of_fortune switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_pillars_of_fortune switch.data matches 30.. summon marker run function switch:maps/survival/pillars_of_fortune/scan_doors_on_marker

execute if score #scan_pillars_of_fortune switch.data matches 205 in minecraft:overworld run forceload remove 161000 161000 161020 161100
execute if score #scan_pillars_of_fortune switch.data matches 205 in switch:game run forceload remove 161000 161000 161020 161100

execute if score #scan_pillars_of_fortune switch.data matches 205 in minecraft:overworld run forceload remove 161020 161000 161040 161100
execute if score #scan_pillars_of_fortune switch.data matches 205 in switch:game run forceload remove 161020 161000 161040 161100

execute if score #scan_pillars_of_fortune switch.data matches 205 in minecraft:overworld run forceload remove 161040 161000 161060 161100
execute if score #scan_pillars_of_fortune switch.data matches 205 in switch:game run forceload remove 161040 161000 161060 161100

execute if score #scan_pillars_of_fortune switch.data matches 205 in minecraft:overworld run forceload remove 161060 161000 161080 161100
execute if score #scan_pillars_of_fortune switch.data matches 205 in switch:game run forceload remove 161060 161000 161080 161100

execute if score #scan_pillars_of_fortune switch.data matches 205 in minecraft:overworld run forceload remove 161080 161000 161100 161100
execute if score #scan_pillars_of_fortune switch.data matches 205 in switch:game run forceload remove 161080 161000 161100 161100

execute if score #scan_pillars_of_fortune switch.data matches 205 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"pillars_of_fortune","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"10","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_pillars_of_fortune switch.data matches 205 run data remove storage switch:maps to_scan.pillars_of_fortune
execute if score #scan_pillars_of_fortune switch.data matches 205 run scoreboard players reset #scan_pillars_of_fortune switch.data

execute if score #scan_pillars_of_fortune switch.data matches 1.. run schedule function switch:maps/survival/pillars_of_fortune/scan_doors 1t

