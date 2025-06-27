
#> switch:maps/survival/sheepwars_bonbons/scan_doors
#
# @within	switch:maps/survival/sheepwars_bonbons/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_sheepwars_bonbons switch.data 1

execute if score #scan_sheepwars_bonbons switch.data matches 1 in minecraft:overworld run forceload add 143000 143000 143021 143114
execute if score #scan_sheepwars_bonbons switch.data matches 1 in switch:game run forceload add 143000 143000 143021 143114

execute if score #scan_sheepwars_bonbons switch.data matches 1 in minecraft:overworld run forceload add 143021 143000 143042 143114
execute if score #scan_sheepwars_bonbons switch.data matches 1 in switch:game run forceload add 143021 143000 143042 143114

execute if score #scan_sheepwars_bonbons switch.data matches 1 in minecraft:overworld run forceload add 143042 143000 143062 143114
execute if score #scan_sheepwars_bonbons switch.data matches 1 in switch:game run forceload add 143042 143000 143062 143114

execute if score #scan_sheepwars_bonbons switch.data matches 1 in minecraft:overworld run forceload add 143062 143000 143083 143114
execute if score #scan_sheepwars_bonbons switch.data matches 1 in switch:game run forceload add 143062 143000 143083 143114

execute if score #scan_sheepwars_bonbons switch.data matches 1 run data modify storage switch:maps to_scan.sheepwars_bonbons set value 2b
execute if score #scan_sheepwars_bonbons switch.data matches 1 run scoreboard players set #start_x_sheepwars_bonbons switch.data 143001
execute if score #scan_sheepwars_bonbons switch.data matches 1 run scoreboard players set #start_y_sheepwars_bonbons switch.data 101
execute if score #scan_sheepwars_bonbons switch.data matches 1 run scoreboard players set #start_z_sheepwars_bonbons switch.data 143001
execute if score #scan_sheepwars_bonbons switch.data matches 1 run scoreboard players set #end_x_sheepwars_bonbons switch.data 143082
execute if score #scan_sheepwars_bonbons switch.data matches 1 run scoreboard players set #end_y_sheepwars_bonbons switch.data 182
execute if score #scan_sheepwars_bonbons switch.data matches 1 run scoreboard players set #end_z_sheepwars_bonbons switch.data 143113
execute if score #scan_sheepwars_bonbons switch.data matches 1 run scoreboard players operation #curr_x_sheepwars_bonbons switch.data = #start_x_sheepwars_bonbons switch.data
execute if score #scan_sheepwars_bonbons switch.data matches 1 run scoreboard players operation #curr_y_sheepwars_bonbons switch.data = #start_y_sheepwars_bonbons switch.data
execute if score #scan_sheepwars_bonbons switch.data matches 1 run scoreboard players operation #curr_z_sheepwars_bonbons switch.data = #start_z_sheepwars_bonbons switch.data
execute if score #scan_sheepwars_bonbons switch.data matches 1 run data modify storage switch:doors sheepwars_bonbons set value []

execute if score #scan_sheepwars_bonbons switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_sheepwars_bonbons switch.data matches 30.. summon marker run function switch:maps/survival/sheepwars_bonbons/scan_doors_on_marker

execute if score #scan_sheepwars_bonbons switch.data matches 182 in minecraft:overworld run forceload remove 143000 143000 143021 143114
execute if score #scan_sheepwars_bonbons switch.data matches 182 in switch:game run forceload remove 143000 143000 143021 143114

execute if score #scan_sheepwars_bonbons switch.data matches 182 in minecraft:overworld run forceload remove 143021 143000 143042 143114
execute if score #scan_sheepwars_bonbons switch.data matches 182 in switch:game run forceload remove 143021 143000 143042 143114

execute if score #scan_sheepwars_bonbons switch.data matches 182 in minecraft:overworld run forceload remove 143042 143000 143062 143114
execute if score #scan_sheepwars_bonbons switch.data matches 182 in switch:game run forceload remove 143042 143000 143062 143114

execute if score #scan_sheepwars_bonbons switch.data matches 182 in minecraft:overworld run forceload remove 143062 143000 143083 143114
execute if score #scan_sheepwars_bonbons switch.data matches 182 in switch:game run forceload remove 143062 143000 143083 143114

execute if score #scan_sheepwars_bonbons switch.data matches 182 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"sheepwars_bonbons","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"9","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_sheepwars_bonbons switch.data matches 182 run data remove storage switch:maps to_scan.sheepwars_bonbons
execute if score #scan_sheepwars_bonbons switch.data matches 182 run scoreboard players reset #scan_sheepwars_bonbons switch.data

execute if score #scan_sheepwars_bonbons switch.data matches 1.. run schedule function switch:maps/survival/sheepwars_bonbons/scan_doors 1t

