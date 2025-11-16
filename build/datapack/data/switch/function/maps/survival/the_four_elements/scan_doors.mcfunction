
#> switch:maps/survival/the_four_elements/scan_doors
#
# @within	switch:maps/survival/the_four_elements/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_the_four_elements switch.data 1

execute if score #scan_the_four_elements switch.data matches 1 in minecraft:overworld run forceload add 115000 115000 115020 115101
execute if score #scan_the_four_elements switch.data matches 1 in switch:game run forceload add 115000 115000 115020 115101

execute if score #scan_the_four_elements switch.data matches 1 in minecraft:overworld run forceload add 115020 115000 115040 115101
execute if score #scan_the_four_elements switch.data matches 1 in switch:game run forceload add 115020 115000 115040 115101

execute if score #scan_the_four_elements switch.data matches 1 in minecraft:overworld run forceload add 115040 115000 115061 115101
execute if score #scan_the_four_elements switch.data matches 1 in switch:game run forceload add 115040 115000 115061 115101

execute if score #scan_the_four_elements switch.data matches 1 in minecraft:overworld run forceload add 115061 115000 115081 115101
execute if score #scan_the_four_elements switch.data matches 1 in switch:game run forceload add 115061 115000 115081 115101

execute if score #scan_the_four_elements switch.data matches 1 in minecraft:overworld run forceload add 115081 115000 115101 115101
execute if score #scan_the_four_elements switch.data matches 1 in switch:game run forceload add 115081 115000 115101 115101

execute if score #scan_the_four_elements switch.data matches 1 run data modify storage switch:maps to_scan.the_four_elements set value 2b
execute if score #scan_the_four_elements switch.data matches 1 run scoreboard players set #start_x_the_four_elements switch.data 115001
execute if score #scan_the_four_elements switch.data matches 1 run scoreboard players set #start_y_the_four_elements switch.data 101
execute if score #scan_the_four_elements switch.data matches 1 run scoreboard players set #start_z_the_four_elements switch.data 115001
execute if score #scan_the_four_elements switch.data matches 1 run scoreboard players set #end_x_the_four_elements switch.data 115100
execute if score #scan_the_four_elements switch.data matches 1 run scoreboard players set #end_y_the_four_elements switch.data 132
execute if score #scan_the_four_elements switch.data matches 1 run scoreboard players set #end_z_the_four_elements switch.data 115100
execute if score #scan_the_four_elements switch.data matches 1 run scoreboard players operation #curr_x_the_four_elements switch.data = #start_x_the_four_elements switch.data
execute if score #scan_the_four_elements switch.data matches 1 run scoreboard players operation #curr_y_the_four_elements switch.data = #start_y_the_four_elements switch.data
execute if score #scan_the_four_elements switch.data matches 1 run scoreboard players operation #curr_z_the_four_elements switch.data = #start_z_the_four_elements switch.data
execute if score #scan_the_four_elements switch.data matches 1 run data modify storage switch:doors the_four_elements set value []

execute if score #scan_the_four_elements switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_the_four_elements switch.data matches 30.. summon marker run function switch:maps/survival/the_four_elements/scan_doors_on_marker

execute if score #scan_the_four_elements switch.data matches 94 in minecraft:overworld run forceload remove 115000 115000 115020 115101
execute if score #scan_the_four_elements switch.data matches 94 in switch:game run forceload remove 115000 115000 115020 115101

execute if score #scan_the_four_elements switch.data matches 94 in minecraft:overworld run forceload remove 115020 115000 115040 115101
execute if score #scan_the_four_elements switch.data matches 94 in switch:game run forceload remove 115020 115000 115040 115101

execute if score #scan_the_four_elements switch.data matches 94 in minecraft:overworld run forceload remove 115040 115000 115061 115101
execute if score #scan_the_four_elements switch.data matches 94 in switch:game run forceload remove 115040 115000 115061 115101

execute if score #scan_the_four_elements switch.data matches 94 in minecraft:overworld run forceload remove 115061 115000 115081 115101
execute if score #scan_the_four_elements switch.data matches 94 in switch:game run forceload remove 115061 115000 115081 115101

execute if score #scan_the_four_elements switch.data matches 94 in minecraft:overworld run forceload remove 115081 115000 115101 115101
execute if score #scan_the_four_elements switch.data matches 94 in switch:game run forceload remove 115081 115000 115101 115101

execute if score #scan_the_four_elements switch.data matches 94 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"the_four_elements","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"4","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_the_four_elements switch.data matches 94 run data remove storage switch:maps to_scan.the_four_elements
execute if score #scan_the_four_elements switch.data matches 94 run scoreboard players reset #scan_the_four_elements switch.data

execute if score #scan_the_four_elements switch.data matches 1.. run schedule function switch:maps/survival/the_four_elements/scan_doors 1t

