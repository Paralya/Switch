
#> switch:maps/survival/enigma_lab_2/scan_doors
#
# @within	switch:maps/survival/enigma_lab_2/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_enigma_lab_2 switch.data 1

execute if score #scan_enigma_lab_2 switch.data matches 1 in minecraft:overworld run forceload add 73000 73000 73025 73083
execute if score #scan_enigma_lab_2 switch.data matches 1 in switch:game run forceload add 73000 73000 73025 73083

execute if score #scan_enigma_lab_2 switch.data matches 1 in minecraft:overworld run forceload add 73025 73000 73051 73083
execute if score #scan_enigma_lab_2 switch.data matches 1 in switch:game run forceload add 73025 73000 73051 73083

execute if score #scan_enigma_lab_2 switch.data matches 1 in minecraft:overworld run forceload add 73051 73000 73076 73083
execute if score #scan_enigma_lab_2 switch.data matches 1 in switch:game run forceload add 73051 73000 73076 73083

execute if score #scan_enigma_lab_2 switch.data matches 1 run data modify storage switch:maps to_scan.enigma_lab_2 set value 2b
execute if score #scan_enigma_lab_2 switch.data matches 1 run scoreboard players set #start_x_enigma_lab_2 switch.data 73001
execute if score #scan_enigma_lab_2 switch.data matches 1 run scoreboard players set #start_y_enigma_lab_2 switch.data 1
execute if score #scan_enigma_lab_2 switch.data matches 1 run scoreboard players set #start_z_enigma_lab_2 switch.data 73001
execute if score #scan_enigma_lab_2 switch.data matches 1 run scoreboard players set #end_x_enigma_lab_2 switch.data 73075
execute if score #scan_enigma_lab_2 switch.data matches 1 run scoreboard players set #end_y_enigma_lab_2 switch.data 28
execute if score #scan_enigma_lab_2 switch.data matches 1 run scoreboard players set #end_z_enigma_lab_2 switch.data 73082
execute if score #scan_enigma_lab_2 switch.data matches 1 run scoreboard players operation #curr_x_enigma_lab_2 switch.data = #start_x_enigma_lab_2 switch.data
execute if score #scan_enigma_lab_2 switch.data matches 1 run scoreboard players operation #curr_y_enigma_lab_2 switch.data = #start_y_enigma_lab_2 switch.data
execute if score #scan_enigma_lab_2 switch.data matches 1 run scoreboard players operation #curr_z_enigma_lab_2 switch.data = #start_z_enigma_lab_2 switch.data
execute if score #scan_enigma_lab_2 switch.data matches 1 run data modify storage switch:doors enigma_lab_2 set value []

execute if score #scan_enigma_lab_2 switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_enigma_lab_2 switch.data matches 30.. summon marker run function switch:maps/survival/enigma_lab_2/scan_doors_on_marker

execute if score #scan_enigma_lab_2 switch.data matches 65 in minecraft:overworld run forceload remove 73000 73000 73025 73083
execute if score #scan_enigma_lab_2 switch.data matches 65 in switch:game run forceload remove 73000 73000 73025 73083

execute if score #scan_enigma_lab_2 switch.data matches 65 in minecraft:overworld run forceload remove 73025 73000 73051 73083
execute if score #scan_enigma_lab_2 switch.data matches 65 in switch:game run forceload remove 73025 73000 73051 73083

execute if score #scan_enigma_lab_2 switch.data matches 65 in minecraft:overworld run forceload remove 73051 73000 73076 73083
execute if score #scan_enigma_lab_2 switch.data matches 65 in switch:game run forceload remove 73051 73000 73076 73083

execute if score #scan_enigma_lab_2 switch.data matches 65 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"enigma_lab_2","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"3","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_enigma_lab_2 switch.data matches 65 run data remove storage switch:maps to_scan.enigma_lab_2
execute if score #scan_enigma_lab_2 switch.data matches 65 run scoreboard players reset #scan_enigma_lab_2 switch.data

execute if score #scan_enigma_lab_2 switch.data matches 1.. run schedule function switch:maps/survival/enigma_lab_2/scan_doors 1t

