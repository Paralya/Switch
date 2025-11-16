
#> switch:maps/survival/ctf_flowers/scan_doors
#
# @within	switch:maps/survival/ctf_flowers/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_ctf_flowers switch.data 1

execute if score #scan_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add 148000 148000 148025 148105
execute if score #scan_ctf_flowers switch.data matches 1 in switch:game run forceload add 148000 148000 148025 148105

execute if score #scan_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add 148025 148000 148050 148105
execute if score #scan_ctf_flowers switch.data matches 1 in switch:game run forceload add 148025 148000 148050 148105

execute if score #scan_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add 148050 148000 148076 148105
execute if score #scan_ctf_flowers switch.data matches 1 in switch:game run forceload add 148050 148000 148076 148105

execute if score #scan_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add 148076 148000 148101 148105
execute if score #scan_ctf_flowers switch.data matches 1 in switch:game run forceload add 148076 148000 148101 148105

execute if score #scan_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add 148101 148000 148126 148105
execute if score #scan_ctf_flowers switch.data matches 1 in switch:game run forceload add 148101 148000 148126 148105

execute if score #scan_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add 148126 148000 148152 148105
execute if score #scan_ctf_flowers switch.data matches 1 in switch:game run forceload add 148126 148000 148152 148105

execute if score #scan_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add 148152 148000 148177 148105
execute if score #scan_ctf_flowers switch.data matches 1 in switch:game run forceload add 148152 148000 148177 148105

execute if score #scan_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add 148177 148000 148202 148105
execute if score #scan_ctf_flowers switch.data matches 1 in switch:game run forceload add 148177 148000 148202 148105

execute if score #scan_ctf_flowers switch.data matches 1 run data modify storage switch:maps to_scan.ctf_flowers set value 2b
execute if score #scan_ctf_flowers switch.data matches 1 run scoreboard players set #start_x_ctf_flowers switch.data 148001
execute if score #scan_ctf_flowers switch.data matches 1 run scoreboard players set #start_y_ctf_flowers switch.data 101
execute if score #scan_ctf_flowers switch.data matches 1 run scoreboard players set #start_z_ctf_flowers switch.data 148001
execute if score #scan_ctf_flowers switch.data matches 1 run scoreboard players set #end_x_ctf_flowers switch.data 148201
execute if score #scan_ctf_flowers switch.data matches 1 run scoreboard players set #end_y_ctf_flowers switch.data 198
execute if score #scan_ctf_flowers switch.data matches 1 run scoreboard players set #end_z_ctf_flowers switch.data 148104
execute if score #scan_ctf_flowers switch.data matches 1 run scoreboard players operation #curr_x_ctf_flowers switch.data = #start_x_ctf_flowers switch.data
execute if score #scan_ctf_flowers switch.data matches 1 run scoreboard players operation #curr_y_ctf_flowers switch.data = #start_y_ctf_flowers switch.data
execute if score #scan_ctf_flowers switch.data matches 1 run scoreboard players operation #curr_z_ctf_flowers switch.data = #start_z_ctf_flowers switch.data
execute if score #scan_ctf_flowers switch.data matches 1 run data modify storage switch:doors ctf_flowers set value []

execute if score #scan_ctf_flowers switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_ctf_flowers switch.data matches 30.. summon marker run function switch:maps/survival/ctf_flowers/scan_doors_on_marker

execute if score #scan_ctf_flowers switch.data matches 440 in minecraft:overworld run forceload remove 148000 148000 148025 148105
execute if score #scan_ctf_flowers switch.data matches 440 in switch:game run forceload remove 148000 148000 148025 148105

execute if score #scan_ctf_flowers switch.data matches 440 in minecraft:overworld run forceload remove 148025 148000 148050 148105
execute if score #scan_ctf_flowers switch.data matches 440 in switch:game run forceload remove 148025 148000 148050 148105

execute if score #scan_ctf_flowers switch.data matches 440 in minecraft:overworld run forceload remove 148050 148000 148076 148105
execute if score #scan_ctf_flowers switch.data matches 440 in switch:game run forceload remove 148050 148000 148076 148105

execute if score #scan_ctf_flowers switch.data matches 440 in minecraft:overworld run forceload remove 148076 148000 148101 148105
execute if score #scan_ctf_flowers switch.data matches 440 in switch:game run forceload remove 148076 148000 148101 148105

execute if score #scan_ctf_flowers switch.data matches 440 in minecraft:overworld run forceload remove 148101 148000 148126 148105
execute if score #scan_ctf_flowers switch.data matches 440 in switch:game run forceload remove 148101 148000 148126 148105

execute if score #scan_ctf_flowers switch.data matches 440 in minecraft:overworld run forceload remove 148126 148000 148152 148105
execute if score #scan_ctf_flowers switch.data matches 440 in switch:game run forceload remove 148126 148000 148152 148105

execute if score #scan_ctf_flowers switch.data matches 440 in minecraft:overworld run forceload remove 148152 148000 148177 148105
execute if score #scan_ctf_flowers switch.data matches 440 in switch:game run forceload remove 148152 148000 148177 148105

execute if score #scan_ctf_flowers switch.data matches 440 in minecraft:overworld run forceload remove 148177 148000 148202 148105
execute if score #scan_ctf_flowers switch.data matches 440 in switch:game run forceload remove 148177 148000 148202 148105

execute if score #scan_ctf_flowers switch.data matches 440 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"ctf_flowers","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"22","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_ctf_flowers switch.data matches 440 run data remove storage switch:maps to_scan.ctf_flowers
execute if score #scan_ctf_flowers switch.data matches 440 run scoreboard players reset #scan_ctf_flowers switch.data

execute if score #scan_ctf_flowers switch.data matches 1.. run schedule function switch:maps/survival/ctf_flowers/scan_doors 1t

