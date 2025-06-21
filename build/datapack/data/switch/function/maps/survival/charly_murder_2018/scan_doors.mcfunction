
#> switch:maps/survival/charly_murder_2018/scan_doors
#
# @within	switch:maps/survival/charly_murder_2018/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_charly_murder_2018 switch.data 1

execute if score #scan_charly_murder_2018 switch.data matches 1 in minecraft:overworld run forceload add 136000 136000 136026 136053
execute if score #scan_charly_murder_2018 switch.data matches 1 in switch:game run forceload add 136000 136000 136026 136053

execute if score #scan_charly_murder_2018 switch.data matches 1 in minecraft:overworld run forceload add 136026 136000 136052 136053
execute if score #scan_charly_murder_2018 switch.data matches 1 in switch:game run forceload add 136026 136000 136052 136053

execute if score #scan_charly_murder_2018 switch.data matches 1 run data modify storage switch:maps to_scan.charly_murder_2018 set value 2b
execute if score #scan_charly_murder_2018 switch.data matches 1 run scoreboard players set #start_x_charly_murder_2018 switch.data 136001
execute if score #scan_charly_murder_2018 switch.data matches 1 run scoreboard players set #start_y_charly_murder_2018 switch.data 1
execute if score #scan_charly_murder_2018 switch.data matches 1 run scoreboard players set #start_z_charly_murder_2018 switch.data 136001
execute if score #scan_charly_murder_2018 switch.data matches 1 run scoreboard players set #end_x_charly_murder_2018 switch.data 136051
execute if score #scan_charly_murder_2018 switch.data matches 1 run scoreboard players set #end_y_charly_murder_2018 switch.data 30
execute if score #scan_charly_murder_2018 switch.data matches 1 run scoreboard players set #end_z_charly_murder_2018 switch.data 136052
execute if score #scan_charly_murder_2018 switch.data matches 1 run scoreboard players operation #curr_x_charly_murder_2018 switch.data = #start_x_charly_murder_2018 switch.data
execute if score #scan_charly_murder_2018 switch.data matches 1 run scoreboard players operation #curr_y_charly_murder_2018 switch.data = #start_y_charly_murder_2018 switch.data
execute if score #scan_charly_murder_2018 switch.data matches 1 run scoreboard players operation #curr_z_charly_murder_2018 switch.data = #start_z_charly_murder_2018 switch.data
execute if score #scan_charly_murder_2018 switch.data matches 1 run data modify storage switch:doors charly_murder_2018 set value []

execute if score #scan_charly_murder_2018 switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_charly_murder_2018 switch.data matches 30.. summon marker run function switch:maps/survival/charly_murder_2018/scan_doors_on_marker

execute if score #scan_charly_murder_2018 switch.data matches 46 in minecraft:overworld run forceload remove 136000 136000 136026 136053
execute if score #scan_charly_murder_2018 switch.data matches 46 in switch:game run forceload remove 136000 136000 136026 136053

execute if score #scan_charly_murder_2018 switch.data matches 46 in minecraft:overworld run forceload remove 136026 136000 136052 136053
execute if score #scan_charly_murder_2018 switch.data matches 46 in switch:game run forceload remove 136026 136000 136052 136053

execute if score #scan_charly_murder_2018 switch.data matches 46 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"charly_murder_2018","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"2","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_charly_murder_2018 switch.data matches 46 run data remove storage switch:maps to_scan.charly_murder_2018
execute if score #scan_charly_murder_2018 switch.data matches 46 run scoreboard players reset #scan_charly_murder_2018 switch.data

execute if score #scan_charly_murder_2018 switch.data matches 1.. run schedule function switch:maps/survival/charly_murder_2018/scan_doors 1t

