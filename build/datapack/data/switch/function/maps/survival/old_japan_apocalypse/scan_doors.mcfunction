
#> switch:maps/survival/old_japan_apocalypse/scan_doors
#
# @within	switch:maps/survival/old_japan_apocalypse/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_old_japan_apocalypse switch.data 1

execute if score #scan_old_japan_apocalypse switch.data matches 1 in minecraft:overworld run forceload add 129000 129000 129020 129102
execute if score #scan_old_japan_apocalypse switch.data matches 1 in switch:game run forceload add 129000 129000 129020 129102

execute if score #scan_old_japan_apocalypse switch.data matches 1 in minecraft:overworld run forceload add 129020 129000 129041 129102
execute if score #scan_old_japan_apocalypse switch.data matches 1 in switch:game run forceload add 129020 129000 129041 129102

execute if score #scan_old_japan_apocalypse switch.data matches 1 in minecraft:overworld run forceload add 129041 129000 129061 129102
execute if score #scan_old_japan_apocalypse switch.data matches 1 in switch:game run forceload add 129041 129000 129061 129102

execute if score #scan_old_japan_apocalypse switch.data matches 1 in minecraft:overworld run forceload add 129061 129000 129082 129102
execute if score #scan_old_japan_apocalypse switch.data matches 1 in switch:game run forceload add 129061 129000 129082 129102

execute if score #scan_old_japan_apocalypse switch.data matches 1 in minecraft:overworld run forceload add 129082 129000 129102 129102
execute if score #scan_old_japan_apocalypse switch.data matches 1 in switch:game run forceload add 129082 129000 129102 129102

execute if score #scan_old_japan_apocalypse switch.data matches 1 run data modify storage switch:maps to_scan.old_japan_apocalypse set value 2b
execute if score #scan_old_japan_apocalypse switch.data matches 1 run scoreboard players set #start_x_old_japan_apocalypse switch.data 129001
execute if score #scan_old_japan_apocalypse switch.data matches 1 run scoreboard players set #start_y_old_japan_apocalypse switch.data 101
execute if score #scan_old_japan_apocalypse switch.data matches 1 run scoreboard players set #start_z_old_japan_apocalypse switch.data 129001
execute if score #scan_old_japan_apocalypse switch.data matches 1 run scoreboard players set #end_x_old_japan_apocalypse switch.data 129101
execute if score #scan_old_japan_apocalypse switch.data matches 1 run scoreboard players set #end_y_old_japan_apocalypse switch.data 151
execute if score #scan_old_japan_apocalypse switch.data matches 1 run scoreboard players set #end_z_old_japan_apocalypse switch.data 129101
execute if score #scan_old_japan_apocalypse switch.data matches 1 run scoreboard players operation #curr_x_old_japan_apocalypse switch.data = #start_x_old_japan_apocalypse switch.data
execute if score #scan_old_japan_apocalypse switch.data matches 1 run scoreboard players operation #curr_y_old_japan_apocalypse switch.data = #start_y_old_japan_apocalypse switch.data
execute if score #scan_old_japan_apocalypse switch.data matches 1 run scoreboard players operation #curr_z_old_japan_apocalypse switch.data = #start_z_old_japan_apocalypse switch.data
execute if score #scan_old_japan_apocalypse switch.data matches 1 run data modify storage switch:doors old_japan_apocalypse set value []

execute if score #scan_old_japan_apocalypse switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_old_japan_apocalypse switch.data matches 30.. summon marker run function switch:maps/survival/old_japan_apocalypse/scan_doors_on_marker

execute if score #scan_old_japan_apocalypse switch.data matches 135 in minecraft:overworld run forceload remove 129000 129000 129020 129102
execute if score #scan_old_japan_apocalypse switch.data matches 135 in switch:game run forceload remove 129000 129000 129020 129102

execute if score #scan_old_japan_apocalypse switch.data matches 135 in minecraft:overworld run forceload remove 129020 129000 129041 129102
execute if score #scan_old_japan_apocalypse switch.data matches 135 in switch:game run forceload remove 129020 129000 129041 129102

execute if score #scan_old_japan_apocalypse switch.data matches 135 in minecraft:overworld run forceload remove 129041 129000 129061 129102
execute if score #scan_old_japan_apocalypse switch.data matches 135 in switch:game run forceload remove 129041 129000 129061 129102

execute if score #scan_old_japan_apocalypse switch.data matches 135 in minecraft:overworld run forceload remove 129061 129000 129082 129102
execute if score #scan_old_japan_apocalypse switch.data matches 135 in switch:game run forceload remove 129061 129000 129082 129102

execute if score #scan_old_japan_apocalypse switch.data matches 135 in minecraft:overworld run forceload remove 129082 129000 129102 129102
execute if score #scan_old_japan_apocalypse switch.data matches 135 in switch:game run forceload remove 129082 129000 129102 129102

execute if score #scan_old_japan_apocalypse switch.data matches 135 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"old_japan_apocalypse","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"6","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_old_japan_apocalypse switch.data matches 135 run data remove storage switch:maps to_scan.old_japan_apocalypse
execute if score #scan_old_japan_apocalypse switch.data matches 135 run scoreboard players reset #scan_old_japan_apocalypse switch.data

execute if score #scan_old_japan_apocalypse switch.data matches 1.. run schedule function switch:maps/survival/old_japan_apocalypse/scan_doors 1t

