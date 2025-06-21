
#> switch:maps/survival/enigma_lab_1/scan_doors
#
# @within	switch:maps/survival/enigma_lab_1/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_enigma_lab_1 switch.data 1

execute if score #scan_enigma_lab_1 switch.data matches 1 in minecraft:overworld run forceload add 53977 53994 53987 54100
execute if score #scan_enigma_lab_1 switch.data matches 1 in switch:game run forceload add 53977 53994 53987 54100

execute if score #scan_enigma_lab_1 switch.data matches 1 in minecraft:overworld run forceload add 53987 53994 53998 54100
execute if score #scan_enigma_lab_1 switch.data matches 1 in switch:game run forceload add 53987 53994 53998 54100

execute if score #scan_enigma_lab_1 switch.data matches 1 in minecraft:overworld run forceload add 53998 53994 54008 54100
execute if score #scan_enigma_lab_1 switch.data matches 1 in switch:game run forceload add 53998 53994 54008 54100

execute if score #scan_enigma_lab_1 switch.data matches 1 run data modify storage switch:maps to_scan.enigma_lab_1 set value 2b
execute if score #scan_enigma_lab_1 switch.data matches 1 run scoreboard players set #start_x_enigma_lab_1 switch.data 53978
execute if score #scan_enigma_lab_1 switch.data matches 1 run scoreboard players set #start_y_enigma_lab_1 switch.data 1
execute if score #scan_enigma_lab_1 switch.data matches 1 run scoreboard players set #start_z_enigma_lab_1 switch.data 53995
execute if score #scan_enigma_lab_1 switch.data matches 1 run scoreboard players set #end_x_enigma_lab_1 switch.data 54007
execute if score #scan_enigma_lab_1 switch.data matches 1 run scoreboard players set #end_y_enigma_lab_1 switch.data 39
execute if score #scan_enigma_lab_1 switch.data matches 1 run scoreboard players set #end_z_enigma_lab_1 switch.data 54099
execute if score #scan_enigma_lab_1 switch.data matches 1 run scoreboard players operation #curr_x_enigma_lab_1 switch.data = #start_x_enigma_lab_1 switch.data
execute if score #scan_enigma_lab_1 switch.data matches 1 run scoreboard players operation #curr_y_enigma_lab_1 switch.data = #start_y_enigma_lab_1 switch.data
execute if score #scan_enigma_lab_1 switch.data matches 1 run scoreboard players operation #curr_z_enigma_lab_1 switch.data = #start_z_enigma_lab_1 switch.data
execute if score #scan_enigma_lab_1 switch.data matches 1 run data modify storage switch:doors enigma_lab_1 set value []

execute if score #scan_enigma_lab_1 switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_enigma_lab_1 switch.data matches 30.. summon marker run function switch:maps/survival/enigma_lab_1/scan_doors_on_marker

execute if score #scan_enigma_lab_1 switch.data matches 55 in minecraft:overworld run forceload remove 53977 53994 53987 54100
execute if score #scan_enigma_lab_1 switch.data matches 55 in switch:game run forceload remove 53977 53994 53987 54100

execute if score #scan_enigma_lab_1 switch.data matches 55 in minecraft:overworld run forceload remove 53987 53994 53998 54100
execute if score #scan_enigma_lab_1 switch.data matches 55 in switch:game run forceload remove 53987 53994 53998 54100

execute if score #scan_enigma_lab_1 switch.data matches 55 in minecraft:overworld run forceload remove 53998 53994 54008 54100
execute if score #scan_enigma_lab_1 switch.data matches 55 in switch:game run forceload remove 53998 53994 54008 54100

execute if score #scan_enigma_lab_1 switch.data matches 55 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"enigma_lab_1","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"2","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_enigma_lab_1 switch.data matches 55 run data remove storage switch:maps to_scan.enigma_lab_1
execute if score #scan_enigma_lab_1 switch.data matches 55 run scoreboard players reset #scan_enigma_lab_1 switch.data

execute if score #scan_enigma_lab_1 switch.data matches 1.. run schedule function switch:maps/survival/enigma_lab_1/scan_doors 1t

