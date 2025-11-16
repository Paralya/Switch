
#> switch:maps/survival/fireblast_pork/scan_doors
#
# @within	switch:maps/survival/fireblast_pork/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_fireblast_pork switch.data 1

execute if score #scan_fireblast_pork switch.data matches 1 in minecraft:overworld run forceload add 165000 165000 165025 165075
execute if score #scan_fireblast_pork switch.data matches 1 in switch:game run forceload add 165000 165000 165025 165075

execute if score #scan_fireblast_pork switch.data matches 1 in minecraft:overworld run forceload add 165025 165000 165050 165075
execute if score #scan_fireblast_pork switch.data matches 1 in switch:game run forceload add 165025 165000 165050 165075

execute if score #scan_fireblast_pork switch.data matches 1 in minecraft:overworld run forceload add 165050 165000 165075 165075
execute if score #scan_fireblast_pork switch.data matches 1 in switch:game run forceload add 165050 165000 165075 165075

execute if score #scan_fireblast_pork switch.data matches 1 run data modify storage switch:maps to_scan.fireblast_pork set value 2b
execute if score #scan_fireblast_pork switch.data matches 1 run scoreboard players set #start_x_fireblast_pork switch.data 165001
execute if score #scan_fireblast_pork switch.data matches 1 run scoreboard players set #start_y_fireblast_pork switch.data 101
execute if score #scan_fireblast_pork switch.data matches 1 run scoreboard players set #start_z_fireblast_pork switch.data 165001
execute if score #scan_fireblast_pork switch.data matches 1 run scoreboard players set #end_x_fireblast_pork switch.data 165074
execute if score #scan_fireblast_pork switch.data matches 1 run scoreboard players set #end_y_fireblast_pork switch.data 155
execute if score #scan_fireblast_pork switch.data matches 1 run scoreboard players set #end_z_fireblast_pork switch.data 165074
execute if score #scan_fireblast_pork switch.data matches 1 run scoreboard players operation #curr_x_fireblast_pork switch.data = #start_x_fireblast_pork switch.data
execute if score #scan_fireblast_pork switch.data matches 1 run scoreboard players operation #curr_y_fireblast_pork switch.data = #start_y_fireblast_pork switch.data
execute if score #scan_fireblast_pork switch.data matches 1 run scoreboard players operation #curr_z_fireblast_pork switch.data = #start_z_fireblast_pork switch.data
execute if score #scan_fireblast_pork switch.data matches 1 run data modify storage switch:doors fireblast_pork set value []

execute if score #scan_fireblast_pork switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_fireblast_pork switch.data matches 30.. summon marker run function switch:maps/survival/fireblast_pork/scan_doors_on_marker

execute if score #scan_fireblast_pork switch.data matches 91 in minecraft:overworld run forceload remove 165000 165000 165025 165075
execute if score #scan_fireblast_pork switch.data matches 91 in switch:game run forceload remove 165000 165000 165025 165075

execute if score #scan_fireblast_pork switch.data matches 91 in minecraft:overworld run forceload remove 165025 165000 165050 165075
execute if score #scan_fireblast_pork switch.data matches 91 in switch:game run forceload remove 165025 165000 165050 165075

execute if score #scan_fireblast_pork switch.data matches 91 in minecraft:overworld run forceload remove 165050 165000 165075 165075
execute if score #scan_fireblast_pork switch.data matches 91 in switch:game run forceload remove 165050 165000 165075 165075

execute if score #scan_fireblast_pork switch.data matches 91 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"fireblast_pork","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"4","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_fireblast_pork switch.data matches 91 run data remove storage switch:maps to_scan.fireblast_pork
execute if score #scan_fireblast_pork switch.data matches 91 run scoreboard players reset #scan_fireblast_pork switch.data

execute if score #scan_fireblast_pork switch.data matches 1.. run schedule function switch:maps/survival/fireblast_pork/scan_doors 1t

