
#> switch:maps/survival/ctf_forest_castles/scan_doors
#
# @within	switch:maps/survival/ctf_forest_castles/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_ctf_forest_castles switch.data 1

execute if score #scan_ctf_forest_castles switch.data matches 1 in minecraft:overworld run forceload add -12000 -12000 -11987 -11784
execute if score #scan_ctf_forest_castles switch.data matches 1 in switch:game run forceload add -12000 -12000 -11987 -11784

execute if score #scan_ctf_forest_castles switch.data matches 1 in minecraft:overworld run forceload add -11987 -12000 -11975 -11784
execute if score #scan_ctf_forest_castles switch.data matches 1 in switch:game run forceload add -11987 -12000 -11975 -11784

execute if score #scan_ctf_forest_castles switch.data matches 1 in minecraft:overworld run forceload add -11975 -12000 -11962 -11784
execute if score #scan_ctf_forest_castles switch.data matches 1 in switch:game run forceload add -11975 -12000 -11962 -11784

execute if score #scan_ctf_forest_castles switch.data matches 1 in minecraft:overworld run forceload add -11962 -12000 -11950 -11784
execute if score #scan_ctf_forest_castles switch.data matches 1 in switch:game run forceload add -11962 -12000 -11950 -11784

execute if score #scan_ctf_forest_castles switch.data matches 1 in minecraft:overworld run forceload add -11950 -12000 -11937 -11784
execute if score #scan_ctf_forest_castles switch.data matches 1 in switch:game run forceload add -11950 -12000 -11937 -11784

execute if score #scan_ctf_forest_castles switch.data matches 1 in minecraft:overworld run forceload add -11937 -12000 -11924 -11784
execute if score #scan_ctf_forest_castles switch.data matches 1 in switch:game run forceload add -11937 -12000 -11924 -11784

execute if score #scan_ctf_forest_castles switch.data matches 1 in minecraft:overworld run forceload add -11924 -12000 -11912 -11784
execute if score #scan_ctf_forest_castles switch.data matches 1 in switch:game run forceload add -11924 -12000 -11912 -11784

execute if score #scan_ctf_forest_castles switch.data matches 1 in minecraft:overworld run forceload add -11912 -12000 -11899 -11784
execute if score #scan_ctf_forest_castles switch.data matches 1 in switch:game run forceload add -11912 -12000 -11899 -11784

execute if score #scan_ctf_forest_castles switch.data matches 1 run data modify storage switch:maps to_scan.ctf_forest_castles set value 2b
execute if score #scan_ctf_forest_castles switch.data matches 1 run scoreboard players set #start_x_ctf_forest_castles switch.data -11999
execute if score #scan_ctf_forest_castles switch.data matches 1 run scoreboard players set #start_y_ctf_forest_castles switch.data 101
execute if score #scan_ctf_forest_castles switch.data matches 1 run scoreboard players set #start_z_ctf_forest_castles switch.data -11999
execute if score #scan_ctf_forest_castles switch.data matches 1 run scoreboard players set #end_x_ctf_forest_castles switch.data -11900
execute if score #scan_ctf_forest_castles switch.data matches 1 run scoreboard players set #end_y_ctf_forest_castles switch.data 163
execute if score #scan_ctf_forest_castles switch.data matches 1 run scoreboard players set #end_z_ctf_forest_castles switch.data -11785
execute if score #scan_ctf_forest_castles switch.data matches 1 run scoreboard players operation #curr_x_ctf_forest_castles switch.data = #start_x_ctf_forest_castles switch.data
execute if score #scan_ctf_forest_castles switch.data matches 1 run scoreboard players operation #curr_y_ctf_forest_castles switch.data = #start_y_ctf_forest_castles switch.data
execute if score #scan_ctf_forest_castles switch.data matches 1 run scoreboard players operation #curr_z_ctf_forest_castles switch.data = #start_z_ctf_forest_castles switch.data
execute if score #scan_ctf_forest_castles switch.data matches 1 run data modify storage switch:doors ctf_forest_castles set value []

execute if score #scan_ctf_forest_castles switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_ctf_forest_castles switch.data matches 30.. summon marker run function switch:maps/survival/ctf_forest_castles/scan_doors_on_marker

execute if score #scan_ctf_forest_castles switch.data matches 301 in minecraft:overworld run forceload remove -12000 -12000 -11987 -11784
execute if score #scan_ctf_forest_castles switch.data matches 301 in switch:game run forceload remove -12000 -12000 -11987 -11784

execute if score #scan_ctf_forest_castles switch.data matches 301 in minecraft:overworld run forceload remove -11987 -12000 -11975 -11784
execute if score #scan_ctf_forest_castles switch.data matches 301 in switch:game run forceload remove -11987 -12000 -11975 -11784

execute if score #scan_ctf_forest_castles switch.data matches 301 in minecraft:overworld run forceload remove -11975 -12000 -11962 -11784
execute if score #scan_ctf_forest_castles switch.data matches 301 in switch:game run forceload remove -11975 -12000 -11962 -11784

execute if score #scan_ctf_forest_castles switch.data matches 301 in minecraft:overworld run forceload remove -11962 -12000 -11950 -11784
execute if score #scan_ctf_forest_castles switch.data matches 301 in switch:game run forceload remove -11962 -12000 -11950 -11784

execute if score #scan_ctf_forest_castles switch.data matches 301 in minecraft:overworld run forceload remove -11950 -12000 -11937 -11784
execute if score #scan_ctf_forest_castles switch.data matches 301 in switch:game run forceload remove -11950 -12000 -11937 -11784

execute if score #scan_ctf_forest_castles switch.data matches 301 in minecraft:overworld run forceload remove -11937 -12000 -11924 -11784
execute if score #scan_ctf_forest_castles switch.data matches 301 in switch:game run forceload remove -11937 -12000 -11924 -11784

execute if score #scan_ctf_forest_castles switch.data matches 301 in minecraft:overworld run forceload remove -11924 -12000 -11912 -11784
execute if score #scan_ctf_forest_castles switch.data matches 301 in switch:game run forceload remove -11924 -12000 -11912 -11784

execute if score #scan_ctf_forest_castles switch.data matches 301 in minecraft:overworld run forceload remove -11912 -12000 -11899 -11784
execute if score #scan_ctf_forest_castles switch.data matches 301 in switch:game run forceload remove -11912 -12000 -11899 -11784

execute if score #scan_ctf_forest_castles switch.data matches 301 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"ctf_forest_castles","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"15","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_ctf_forest_castles switch.data matches 301 run data remove storage switch:maps to_scan.ctf_forest_castles
execute if score #scan_ctf_forest_castles switch.data matches 301 run scoreboard players reset #scan_ctf_forest_castles switch.data

execute if score #scan_ctf_forest_castles switch.data matches 1.. run schedule function switch:maps/survival/ctf_forest_castles/scan_doors 1t

