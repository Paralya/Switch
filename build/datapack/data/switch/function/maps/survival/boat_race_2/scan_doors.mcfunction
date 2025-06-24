
#> switch:maps/survival/boat_race_2/scan_doors
#
# @within	switch:maps/survival/boat_race_2/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_boat_race_2 switch.data 1

execute if score #scan_boat_race_2 switch.data matches 1 in minecraft:overworld run forceload add 51000 51000 51020 51123
execute if score #scan_boat_race_2 switch.data matches 1 in switch:game run forceload add 51000 51000 51020 51123

execute if score #scan_boat_race_2 switch.data matches 1 in minecraft:overworld run forceload add 51020 51000 51040 51123
execute if score #scan_boat_race_2 switch.data matches 1 in switch:game run forceload add 51020 51000 51040 51123

execute if score #scan_boat_race_2 switch.data matches 1 in minecraft:overworld run forceload add 51040 51000 51059 51123
execute if score #scan_boat_race_2 switch.data matches 1 in switch:game run forceload add 51040 51000 51059 51123

execute if score #scan_boat_race_2 switch.data matches 1 in minecraft:overworld run forceload add 51059 51000 51079 51123
execute if score #scan_boat_race_2 switch.data matches 1 in switch:game run forceload add 51059 51000 51079 51123

execute if score #scan_boat_race_2 switch.data matches 1 in minecraft:overworld run forceload add 51079 51000 51099 51123
execute if score #scan_boat_race_2 switch.data matches 1 in switch:game run forceload add 51079 51000 51099 51123

execute if score #scan_boat_race_2 switch.data matches 1 run data modify storage switch:maps to_scan.boat_race_2 set value 2b
execute if score #scan_boat_race_2 switch.data matches 1 run scoreboard players set #start_x_boat_race_2 switch.data 51001
execute if score #scan_boat_race_2 switch.data matches 1 run scoreboard players set #start_y_boat_race_2 switch.data 101
execute if score #scan_boat_race_2 switch.data matches 1 run scoreboard players set #start_z_boat_race_2 switch.data 51001
execute if score #scan_boat_race_2 switch.data matches 1 run scoreboard players set #end_x_boat_race_2 switch.data 51098
execute if score #scan_boat_race_2 switch.data matches 1 run scoreboard players set #end_y_boat_race_2 switch.data 179
execute if score #scan_boat_race_2 switch.data matches 1 run scoreboard players set #end_z_boat_race_2 switch.data 51122
execute if score #scan_boat_race_2 switch.data matches 1 run scoreboard players operation #curr_x_boat_race_2 switch.data = #start_x_boat_race_2 switch.data
execute if score #scan_boat_race_2 switch.data matches 1 run scoreboard players operation #curr_y_boat_race_2 switch.data = #start_y_boat_race_2 switch.data
execute if score #scan_boat_race_2 switch.data matches 1 run scoreboard players operation #curr_z_boat_race_2 switch.data = #start_z_boat_race_2 switch.data
execute if score #scan_boat_race_2 switch.data matches 1 run data modify storage switch:doors boat_race_2 set value []

execute if score #scan_boat_race_2 switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_boat_race_2 switch.data matches 30.. summon marker run function switch:maps/survival/boat_race_2/scan_doors_on_marker

execute if score #scan_boat_race_2 switch.data matches 219 in minecraft:overworld run forceload remove 51000 51000 51020 51123
execute if score #scan_boat_race_2 switch.data matches 219 in switch:game run forceload remove 51000 51000 51020 51123

execute if score #scan_boat_race_2 switch.data matches 219 in minecraft:overworld run forceload remove 51020 51000 51040 51123
execute if score #scan_boat_race_2 switch.data matches 219 in switch:game run forceload remove 51020 51000 51040 51123

execute if score #scan_boat_race_2 switch.data matches 219 in minecraft:overworld run forceload remove 51040 51000 51059 51123
execute if score #scan_boat_race_2 switch.data matches 219 in switch:game run forceload remove 51040 51000 51059 51123

execute if score #scan_boat_race_2 switch.data matches 219 in minecraft:overworld run forceload remove 51059 51000 51079 51123
execute if score #scan_boat_race_2 switch.data matches 219 in switch:game run forceload remove 51059 51000 51079 51123

execute if score #scan_boat_race_2 switch.data matches 219 in minecraft:overworld run forceload remove 51079 51000 51099 51123
execute if score #scan_boat_race_2 switch.data matches 219 in switch:game run forceload remove 51079 51000 51099 51123

execute if score #scan_boat_race_2 switch.data matches 219 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"boat_race_2","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"10","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_boat_race_2 switch.data matches 219 run data remove storage switch:maps to_scan.boat_race_2
execute if score #scan_boat_race_2 switch.data matches 219 run scoreboard players reset #scan_boat_race_2 switch.data

execute if score #scan_boat_race_2 switch.data matches 1.. run schedule function switch:maps/survival/boat_race_2/scan_doors 1t

