
#> switch:maps/survival/jn_one_in_the_chamber_2/scan_doors
#
# @within	switch:maps/survival/jn_one_in_the_chamber_2/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_jn_one_in_the_chamber_2 switch.data 1

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 in minecraft:overworld run forceload add -10000 8000 -9977 8100
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 in switch:game run forceload add -10000 8000 -9977 8100

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 in minecraft:overworld run forceload add -9977 8000 -9953 8100
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 in switch:game run forceload add -9977 8000 -9953 8100

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 in minecraft:overworld run forceload add -9953 8000 -9930 8100
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 in switch:game run forceload add -9953 8000 -9930 8100

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 in minecraft:overworld run forceload add -9930 8000 -9907 8100
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 in switch:game run forceload add -9930 8000 -9907 8100

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 in minecraft:overworld run forceload add -9907 8000 -9883 8100
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 in switch:game run forceload add -9907 8000 -9883 8100

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 in minecraft:overworld run forceload add -9883 8000 -9860 8100
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 in switch:game run forceload add -9883 8000 -9860 8100

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 run data modify storage switch:maps to_scan.jn_one_in_the_chamber_2 set value 2b
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 run scoreboard players set #start_x_jn_one_in_the_chamber_2 switch.data -9999
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 run scoreboard players set #start_y_jn_one_in_the_chamber_2 switch.data 101
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 run scoreboard players set #start_z_jn_one_in_the_chamber_2 switch.data 8001
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 run scoreboard players set #end_x_jn_one_in_the_chamber_2 switch.data -9861
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 run scoreboard players set #end_y_jn_one_in_the_chamber_2 switch.data 156
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 run scoreboard players set #end_z_jn_one_in_the_chamber_2 switch.data 8099
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 run scoreboard players operation #curr_x_jn_one_in_the_chamber_2 switch.data = #start_x_jn_one_in_the_chamber_2 switch.data
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 run scoreboard players operation #curr_y_jn_one_in_the_chamber_2 switch.data = #start_y_jn_one_in_the_chamber_2 switch.data
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 run scoreboard players operation #curr_z_jn_one_in_the_chamber_2 switch.data = #start_z_jn_one_in_the_chamber_2 switch.data
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 run data modify storage switch:doors jn_one_in_the_chamber_2 set value []

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 30.. summon marker run function switch:maps/survival/jn_one_in_the_chamber_2/scan_doors_on_marker

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 in minecraft:overworld run forceload remove -10000 8000 -9977 8100
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 in switch:game run forceload remove -10000 8000 -9977 8100

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 in minecraft:overworld run forceload remove -9977 8000 -9953 8100
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 in switch:game run forceload remove -9977 8000 -9953 8100

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 in minecraft:overworld run forceload remove -9953 8000 -9930 8100
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 in switch:game run forceload remove -9953 8000 -9930 8100

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 in minecraft:overworld run forceload remove -9930 8000 -9907 8100
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 in switch:game run forceload remove -9930 8000 -9907 8100

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 in minecraft:overworld run forceload remove -9907 8000 -9883 8100
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 in switch:game run forceload remove -9907 8000 -9883 8100

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 in minecraft:overworld run forceload remove -9883 8000 -9860 8100
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 in switch:game run forceload remove -9883 8000 -9860 8100

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"jn_one_in_the_chamber_2","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"9","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 run data remove storage switch:maps to_scan.jn_one_in_the_chamber_2
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 run scoreboard players reset #scan_jn_one_in_the_chamber_2 switch.data

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1.. run schedule function switch:maps/survival/jn_one_in_the_chamber_2/scan_doors 1t

