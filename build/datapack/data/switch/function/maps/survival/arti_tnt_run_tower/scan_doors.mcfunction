
#> switch:maps/survival/arti_tnt_run_tower/scan_doors
#
# @within	switch:maps/survival/arti_tnt_run_tower/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_arti_tnt_run_tower switch.data 1

execute if score #scan_arti_tnt_run_tower switch.data matches 1 in minecraft:overworld run forceload add 152000 152000 152010 152020
execute if score #scan_arti_tnt_run_tower switch.data matches 1 in switch:game run forceload add 152000 152000 152010 152020

execute if score #scan_arti_tnt_run_tower switch.data matches 1 in minecraft:overworld run forceload add 152010 152000 152020 152020
execute if score #scan_arti_tnt_run_tower switch.data matches 1 in switch:game run forceload add 152010 152000 152020 152020

execute if score #scan_arti_tnt_run_tower switch.data matches 1 run data modify storage switch:maps to_scan.arti_tnt_run_tower set value 2b
execute if score #scan_arti_tnt_run_tower switch.data matches 1 run scoreboard players set #start_x_arti_tnt_run_tower switch.data 152001
execute if score #scan_arti_tnt_run_tower switch.data matches 1 run scoreboard players set #start_y_arti_tnt_run_tower switch.data 101
execute if score #scan_arti_tnt_run_tower switch.data matches 1 run scoreboard players set #start_z_arti_tnt_run_tower switch.data 152001
execute if score #scan_arti_tnt_run_tower switch.data matches 1 run scoreboard players set #end_x_arti_tnt_run_tower switch.data 152019
execute if score #scan_arti_tnt_run_tower switch.data matches 1 run scoreboard players set #end_y_arti_tnt_run_tower switch.data 172
execute if score #scan_arti_tnt_run_tower switch.data matches 1 run scoreboard players set #end_z_arti_tnt_run_tower switch.data 152019
execute if score #scan_arti_tnt_run_tower switch.data matches 1 run scoreboard players operation #curr_x_arti_tnt_run_tower switch.data = #start_x_arti_tnt_run_tower switch.data
execute if score #scan_arti_tnt_run_tower switch.data matches 1 run scoreboard players operation #curr_y_arti_tnt_run_tower switch.data = #start_y_arti_tnt_run_tower switch.data
execute if score #scan_arti_tnt_run_tower switch.data matches 1 run scoreboard players operation #curr_z_arti_tnt_run_tower switch.data = #start_z_arti_tnt_run_tower switch.data
execute if score #scan_arti_tnt_run_tower switch.data matches 1 run data modify storage switch:doors arti_tnt_run_tower set value []

execute if score #scan_arti_tnt_run_tower switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_arti_tnt_run_tower switch.data matches 30.. summon marker run function switch:maps/survival/arti_tnt_run_tower/scan_doors_on_marker

execute if score #scan_arti_tnt_run_tower switch.data matches 36 in minecraft:overworld run forceload remove 152000 152000 152010 152020
execute if score #scan_arti_tnt_run_tower switch.data matches 36 in switch:game run forceload remove 152000 152000 152010 152020

execute if score #scan_arti_tnt_run_tower switch.data matches 36 in minecraft:overworld run forceload remove 152010 152000 152020 152020
execute if score #scan_arti_tnt_run_tower switch.data matches 36 in switch:game run forceload remove 152010 152000 152020 152020

execute if score #scan_arti_tnt_run_tower switch.data matches 36 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"arti_tnt_run_tower","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_arti_tnt_run_tower switch.data matches 36 run data remove storage switch:maps to_scan.arti_tnt_run_tower
execute if score #scan_arti_tnt_run_tower switch.data matches 36 run scoreboard players reset #scan_arti_tnt_run_tower switch.data

execute if score #scan_arti_tnt_run_tower switch.data matches 1.. run schedule function switch:maps/survival/arti_tnt_run_tower/scan_doors 1t

