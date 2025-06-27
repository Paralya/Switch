
#> switch:maps/survival/fireblast_1/scan_doors
#
# @within	switch:maps/survival/fireblast_1/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_fireblast_1 switch.data 1

execute if score #scan_fireblast_1 switch.data matches 1 in minecraft:overworld run forceload add 163000 163000 163025 163075
execute if score #scan_fireblast_1 switch.data matches 1 in switch:game run forceload add 163000 163000 163025 163075

execute if score #scan_fireblast_1 switch.data matches 1 in minecraft:overworld run forceload add 163025 163000 163050 163075
execute if score #scan_fireblast_1 switch.data matches 1 in switch:game run forceload add 163025 163000 163050 163075

execute if score #scan_fireblast_1 switch.data matches 1 in minecraft:overworld run forceload add 163050 163000 163075 163075
execute if score #scan_fireblast_1 switch.data matches 1 in switch:game run forceload add 163050 163000 163075 163075

execute if score #scan_fireblast_1 switch.data matches 1 run data modify storage switch:maps to_scan.fireblast_1 set value 2b
execute if score #scan_fireblast_1 switch.data matches 1 run scoreboard players set #start_x_fireblast_1 switch.data 163001
execute if score #scan_fireblast_1 switch.data matches 1 run scoreboard players set #start_y_fireblast_1 switch.data 101
execute if score #scan_fireblast_1 switch.data matches 1 run scoreboard players set #start_z_fireblast_1 switch.data 163001
execute if score #scan_fireblast_1 switch.data matches 1 run scoreboard players set #end_x_fireblast_1 switch.data 163074
execute if score #scan_fireblast_1 switch.data matches 1 run scoreboard players set #end_y_fireblast_1 switch.data 149
execute if score #scan_fireblast_1 switch.data matches 1 run scoreboard players set #end_z_fireblast_1 switch.data 163074
execute if score #scan_fireblast_1 switch.data matches 1 run scoreboard players operation #curr_x_fireblast_1 switch.data = #start_x_fireblast_1 switch.data
execute if score #scan_fireblast_1 switch.data matches 1 run scoreboard players operation #curr_y_fireblast_1 switch.data = #start_y_fireblast_1 switch.data
execute if score #scan_fireblast_1 switch.data matches 1 run scoreboard players operation #curr_z_fireblast_1 switch.data = #start_z_fireblast_1 switch.data
execute if score #scan_fireblast_1 switch.data matches 1 run data modify storage switch:doors fireblast_1 set value []

execute if score #scan_fireblast_1 switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_fireblast_1 switch.data matches 30.. summon marker run function switch:maps/survival/fireblast_1/scan_doors_on_marker

execute if score #scan_fireblast_1 switch.data matches 84 in minecraft:overworld run forceload remove 163000 163000 163025 163075
execute if score #scan_fireblast_1 switch.data matches 84 in switch:game run forceload remove 163000 163000 163025 163075

execute if score #scan_fireblast_1 switch.data matches 84 in minecraft:overworld run forceload remove 163025 163000 163050 163075
execute if score #scan_fireblast_1 switch.data matches 84 in switch:game run forceload remove 163025 163000 163050 163075

execute if score #scan_fireblast_1 switch.data matches 84 in minecraft:overworld run forceload remove 163050 163000 163075 163075
execute if score #scan_fireblast_1 switch.data matches 84 in switch:game run forceload remove 163050 163000 163075 163075

execute if score #scan_fireblast_1 switch.data matches 84 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"fireblast_1","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"4","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_fireblast_1 switch.data matches 84 run data remove storage switch:maps to_scan.fireblast_1
execute if score #scan_fireblast_1 switch.data matches 84 run scoreboard players reset #scan_fireblast_1 switch.data

execute if score #scan_fireblast_1 switch.data matches 1.. run schedule function switch:maps/survival/fireblast_1/scan_doors 1t

