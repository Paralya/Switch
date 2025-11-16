
#> switch:maps/survival/whity_lab/scan_doors
#
# @within	switch:maps/survival/whity_lab/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_whity_lab switch.data 1

execute if score #scan_whity_lab switch.data matches 1 in minecraft:overworld run forceload add 91000 91000 91020 91102
execute if score #scan_whity_lab switch.data matches 1 in switch:game run forceload add 91000 91000 91020 91102

execute if score #scan_whity_lab switch.data matches 1 in minecraft:overworld run forceload add 91020 91000 91041 91102
execute if score #scan_whity_lab switch.data matches 1 in switch:game run forceload add 91020 91000 91041 91102

execute if score #scan_whity_lab switch.data matches 1 in minecraft:overworld run forceload add 91041 91000 91061 91102
execute if score #scan_whity_lab switch.data matches 1 in switch:game run forceload add 91041 91000 91061 91102

execute if score #scan_whity_lab switch.data matches 1 in minecraft:overworld run forceload add 91061 91000 91082 91102
execute if score #scan_whity_lab switch.data matches 1 in switch:game run forceload add 91061 91000 91082 91102

execute if score #scan_whity_lab switch.data matches 1 in minecraft:overworld run forceload add 91082 91000 91102 91102
execute if score #scan_whity_lab switch.data matches 1 in switch:game run forceload add 91082 91000 91102 91102

execute if score #scan_whity_lab switch.data matches 1 run data modify storage switch:maps to_scan.whity_lab set value 2b
execute if score #scan_whity_lab switch.data matches 1 run scoreboard players set #start_x_whity_lab switch.data 91001
execute if score #scan_whity_lab switch.data matches 1 run scoreboard players set #start_y_whity_lab switch.data 101
execute if score #scan_whity_lab switch.data matches 1 run scoreboard players set #start_z_whity_lab switch.data 91001
execute if score #scan_whity_lab switch.data matches 1 run scoreboard players set #end_x_whity_lab switch.data 91101
execute if score #scan_whity_lab switch.data matches 1 run scoreboard players set #end_y_whity_lab switch.data 186
execute if score #scan_whity_lab switch.data matches 1 run scoreboard players set #end_z_whity_lab switch.data 91101
execute if score #scan_whity_lab switch.data matches 1 run scoreboard players operation #curr_x_whity_lab switch.data = #start_x_whity_lab switch.data
execute if score #scan_whity_lab switch.data matches 1 run scoreboard players operation #curr_y_whity_lab switch.data = #start_y_whity_lab switch.data
execute if score #scan_whity_lab switch.data matches 1 run scoreboard players operation #curr_z_whity_lab switch.data = #start_z_whity_lab switch.data
execute if score #scan_whity_lab switch.data matches 1 run data modify storage switch:doors whity_lab set value []

execute if score #scan_whity_lab switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_whity_lab switch.data matches 30.. summon marker run function switch:maps/survival/whity_lab/scan_doors_on_marker

execute if score #scan_whity_lab switch.data matches 206 in minecraft:overworld run forceload remove 91000 91000 91020 91102
execute if score #scan_whity_lab switch.data matches 206 in switch:game run forceload remove 91000 91000 91020 91102

execute if score #scan_whity_lab switch.data matches 206 in minecraft:overworld run forceload remove 91020 91000 91041 91102
execute if score #scan_whity_lab switch.data matches 206 in switch:game run forceload remove 91020 91000 91041 91102

execute if score #scan_whity_lab switch.data matches 206 in minecraft:overworld run forceload remove 91041 91000 91061 91102
execute if score #scan_whity_lab switch.data matches 206 in switch:game run forceload remove 91041 91000 91061 91102

execute if score #scan_whity_lab switch.data matches 206 in minecraft:overworld run forceload remove 91061 91000 91082 91102
execute if score #scan_whity_lab switch.data matches 206 in switch:game run forceload remove 91061 91000 91082 91102

execute if score #scan_whity_lab switch.data matches 206 in minecraft:overworld run forceload remove 91082 91000 91102 91102
execute if score #scan_whity_lab switch.data matches 206 in switch:game run forceload remove 91082 91000 91102 91102

execute if score #scan_whity_lab switch.data matches 206 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"whity_lab","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"10","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_whity_lab switch.data matches 206 run data remove storage switch:maps to_scan.whity_lab
execute if score #scan_whity_lab switch.data matches 206 run scoreboard players reset #scan_whity_lab switch.data

execute if score #scan_whity_lab switch.data matches 1.. run schedule function switch:maps/survival/whity_lab/scan_doors 1t

