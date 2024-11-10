
#> switch:maps/survival/red_temple/scan_doors
#
# @within	switch:maps/survival/red_temple/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_red_temple switch.data 1

execute if score #scan_red_temple switch.data matches 1 in minecraft:overworld run forceload add 87000 87000 87015 87094
execute if score #scan_red_temple switch.data matches 1 in switch:game run forceload add 87000 87000 87015 87094

execute if score #scan_red_temple switch.data matches 1 in minecraft:overworld run forceload add 87015 87000 87030 87094
execute if score #scan_red_temple switch.data matches 1 in switch:game run forceload add 87015 87000 87030 87094

execute if score #scan_red_temple switch.data matches 1 in minecraft:overworld run forceload add 87030 87000 87045 87094
execute if score #scan_red_temple switch.data matches 1 in switch:game run forceload add 87030 87000 87045 87094

execute if score #scan_red_temple switch.data matches 1 run data modify storage switch:maps to_scan.red_temple set value 2b
execute if score #scan_red_temple switch.data matches 1 run scoreboard players set #start_x_red_temple switch.data 87001
execute if score #scan_red_temple switch.data matches 1 run scoreboard players set #start_y_red_temple switch.data 1
execute if score #scan_red_temple switch.data matches 1 run scoreboard players set #start_z_red_temple switch.data 87001
execute if score #scan_red_temple switch.data matches 1 run scoreboard players set #end_x_red_temple switch.data 87044
execute if score #scan_red_temple switch.data matches 1 run scoreboard players set #end_y_red_temple switch.data 39
execute if score #scan_red_temple switch.data matches 1 run scoreboard players set #end_z_red_temple switch.data 87093
execute if score #scan_red_temple switch.data matches 1 run scoreboard players operation #curr_x_red_temple switch.data = #start_x_red_temple switch.data
execute if score #scan_red_temple switch.data matches 1 run scoreboard players operation #curr_y_red_temple switch.data = #start_y_red_temple switch.data
execute if score #scan_red_temple switch.data matches 1 run scoreboard players operation #curr_z_red_temple switch.data = #start_z_red_temple switch.data
execute if score #scan_red_temple switch.data matches 1 run data modify storage switch:doors red_temple set value []


execute if score #scan_red_temple switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_red_temple switch.data matches 30.. summon marker run function switch:maps/survival/red_temple/scan_doors_on_marker

execute if score #scan_red_temple switch.data matches 62 in minecraft:overworld run forceload remove 87000 87000 87015 87094
execute if score #scan_red_temple switch.data matches 62 in switch:game run forceload remove 87000 87000 87015 87094

execute if score #scan_red_temple switch.data matches 62 in minecraft:overworld run forceload remove 87015 87000 87030 87094
execute if score #scan_red_temple switch.data matches 62 in switch:game run forceload remove 87015 87000 87030 87094

execute if score #scan_red_temple switch.data matches 62 in minecraft:overworld run forceload remove 87030 87000 87045 87094
execute if score #scan_red_temple switch.data matches 62 in switch:game run forceload remove 87030 87000 87045 87094

execute if score #scan_red_temple switch.data matches 62 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"red_temple","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"3","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_red_temple switch.data matches 62 run data remove storage switch:maps to_scan.red_temple
execute if score #scan_red_temple switch.data matches 62 run scoreboard players reset #scan_red_temple switch.data

execute if score #scan_red_temple switch.data matches 1.. run schedule function switch:maps/survival/red_temple/scan_doors 1t

