
#> switch:maps/survival/remelta_cluedo/scan_doors
#
# @within	switch:maps/survival/remelta_cluedo/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_remelta_cluedo switch.data 1

execute if score #scan_remelta_cluedo switch.data matches 1 in minecraft:overworld run forceload add 118000 118000 118030 118066
execute if score #scan_remelta_cluedo switch.data matches 1 in switch:game run forceload add 118000 118000 118030 118066

execute if score #scan_remelta_cluedo switch.data matches 1 in minecraft:overworld run forceload add 118030 118000 118059 118066
execute if score #scan_remelta_cluedo switch.data matches 1 in switch:game run forceload add 118030 118000 118059 118066

execute if score #scan_remelta_cluedo switch.data matches 1 in minecraft:overworld run forceload add 118059 118000 118089 118066
execute if score #scan_remelta_cluedo switch.data matches 1 in switch:game run forceload add 118059 118000 118089 118066

execute if score #scan_remelta_cluedo switch.data matches 1 run data modify storage switch:maps to_scan.remelta_cluedo set value 2b
execute if score #scan_remelta_cluedo switch.data matches 1 run scoreboard players set #start_x_remelta_cluedo switch.data 118001
execute if score #scan_remelta_cluedo switch.data matches 1 run scoreboard players set #start_y_remelta_cluedo switch.data 101
execute if score #scan_remelta_cluedo switch.data matches 1 run scoreboard players set #start_z_remelta_cluedo switch.data 118001
execute if score #scan_remelta_cluedo switch.data matches 1 run scoreboard players set #end_x_remelta_cluedo switch.data 118088
execute if score #scan_remelta_cluedo switch.data matches 1 run scoreboard players set #end_y_remelta_cluedo switch.data 141
execute if score #scan_remelta_cluedo switch.data matches 1 run scoreboard players set #end_z_remelta_cluedo switch.data 118065
execute if score #scan_remelta_cluedo switch.data matches 1 run scoreboard players operation #curr_x_remelta_cluedo switch.data = #start_x_remelta_cluedo switch.data
execute if score #scan_remelta_cluedo switch.data matches 1 run scoreboard players operation #curr_y_remelta_cluedo switch.data = #start_y_remelta_cluedo switch.data
execute if score #scan_remelta_cluedo switch.data matches 1 run scoreboard players operation #curr_z_remelta_cluedo switch.data = #start_z_remelta_cluedo switch.data
execute if score #scan_remelta_cluedo switch.data matches 1 run data modify storage switch:doors remelta_cluedo set value []

execute if score #scan_remelta_cluedo switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_remelta_cluedo switch.data matches 30.. summon marker run function switch:maps/survival/remelta_cluedo/scan_doors_on_marker

execute if score #scan_remelta_cluedo switch.data matches 77 in minecraft:overworld run forceload remove 118000 118000 118030 118066
execute if score #scan_remelta_cluedo switch.data matches 77 in switch:game run forceload remove 118000 118000 118030 118066

execute if score #scan_remelta_cluedo switch.data matches 77 in minecraft:overworld run forceload remove 118030 118000 118059 118066
execute if score #scan_remelta_cluedo switch.data matches 77 in switch:game run forceload remove 118030 118000 118059 118066

execute if score #scan_remelta_cluedo switch.data matches 77 in minecraft:overworld run forceload remove 118059 118000 118089 118066
execute if score #scan_remelta_cluedo switch.data matches 77 in switch:game run forceload remove 118059 118000 118089 118066

execute if score #scan_remelta_cluedo switch.data matches 77 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"remelta_cluedo","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"3","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_remelta_cluedo switch.data matches 77 run data remove storage switch:maps to_scan.remelta_cluedo
execute if score #scan_remelta_cluedo switch.data matches 77 run scoreboard players reset #scan_remelta_cluedo switch.data

execute if score #scan_remelta_cluedo switch.data matches 1.. run schedule function switch:maps/survival/remelta_cluedo/scan_doors 1t

