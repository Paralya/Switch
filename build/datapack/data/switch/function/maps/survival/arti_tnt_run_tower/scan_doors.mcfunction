
#> switch:maps/survival/arti_tnt_run_tower/scan_doors
#
# @within	switch:maps/survival/arti_tnt_run_tower/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_arti_tnt_run_tower switch.data 1

execute if score #scan_arti_tnt_run_tower switch.data matches 1 in minecraft:overworld run forceload add -8000 -12000 -7990 -11980
execute if score #scan_arti_tnt_run_tower switch.data matches 1 in switch:game run forceload add -8000 -12000 -7990 -11980

execute if score #scan_arti_tnt_run_tower switch.data matches 1 in minecraft:overworld run forceload add -7990 -12000 -7980 -11980
execute if score #scan_arti_tnt_run_tower switch.data matches 1 in switch:game run forceload add -7990 -12000 -7980 -11980

execute if score #scan_arti_tnt_run_tower switch.data matches 1 run data modify storage switch:maps to_scan.arti_tnt_run_tower set value 2b
execute if score #scan_arti_tnt_run_tower switch.data matches 1 run scoreboard players set #start_x_arti_tnt_run_tower switch.data -7999
execute if score #scan_arti_tnt_run_tower switch.data matches 1 run scoreboard players set #start_y_arti_tnt_run_tower switch.data 101
execute if score #scan_arti_tnt_run_tower switch.data matches 1 run scoreboard players set #start_z_arti_tnt_run_tower switch.data -11999
execute if score #scan_arti_tnt_run_tower switch.data matches 1 run scoreboard players set #end_x_arti_tnt_run_tower switch.data -7981
execute if score #scan_arti_tnt_run_tower switch.data matches 1 run scoreboard players set #end_y_arti_tnt_run_tower switch.data 181
execute if score #scan_arti_tnt_run_tower switch.data matches 1 run scoreboard players set #end_z_arti_tnt_run_tower switch.data -11981
execute if score #scan_arti_tnt_run_tower switch.data matches 1 run scoreboard players operation #curr_x_arti_tnt_run_tower switch.data = #start_x_arti_tnt_run_tower switch.data
execute if score #scan_arti_tnt_run_tower switch.data matches 1 run scoreboard players operation #curr_y_arti_tnt_run_tower switch.data = #start_y_arti_tnt_run_tower switch.data
execute if score #scan_arti_tnt_run_tower switch.data matches 1 run scoreboard players operation #curr_z_arti_tnt_run_tower switch.data = #start_z_arti_tnt_run_tower switch.data
execute if score #scan_arti_tnt_run_tower switch.data matches 1 run data modify storage switch:doors arti_tnt_run_tower set value []

execute if score #scan_arti_tnt_run_tower switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_arti_tnt_run_tower switch.data matches 30.. summon marker run function switch:maps/survival/arti_tnt_run_tower/scan_doors_on_marker

execute if score #scan_arti_tnt_run_tower switch.data matches 36 in minecraft:overworld run forceload remove -8000 -12000 -7990 -11980
execute if score #scan_arti_tnt_run_tower switch.data matches 36 in switch:game run forceload remove -8000 -12000 -7990 -11980

execute if score #scan_arti_tnt_run_tower switch.data matches 36 in minecraft:overworld run forceload remove -7990 -12000 -7980 -11980
execute if score #scan_arti_tnt_run_tower switch.data matches 36 in switch:game run forceload remove -7990 -12000 -7980 -11980

execute if score #scan_arti_tnt_run_tower switch.data matches 36 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"arti_tnt_run_tower","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_arti_tnt_run_tower switch.data matches 36 run data remove storage switch:maps to_scan.arti_tnt_run_tower
execute if score #scan_arti_tnt_run_tower switch.data matches 36 run scoreboard players reset #scan_arti_tnt_run_tower switch.data

execute if score #scan_arti_tnt_run_tower switch.data matches 1.. run schedule function switch:maps/survival/arti_tnt_run_tower/scan_doors 1t

