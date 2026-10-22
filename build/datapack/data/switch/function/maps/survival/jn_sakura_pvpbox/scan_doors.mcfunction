
#> switch:maps/survival/jn_sakura_pvpbox/scan_doors
#
# @within	switch:maps/survival/jn_sakura_pvpbox/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_jn_sakura_pvpbox switch.data 1

execute if score #scan_jn_sakura_pvpbox switch.data matches 1 in minecraft:overworld run forceload add -6000 10000 -5980 10100
execute if score #scan_jn_sakura_pvpbox switch.data matches 1 in switch:game run forceload add -6000 10000 -5980 10100

execute if score #scan_jn_sakura_pvpbox switch.data matches 1 in minecraft:overworld run forceload add -5980 10000 -5960 10100
execute if score #scan_jn_sakura_pvpbox switch.data matches 1 in switch:game run forceload add -5980 10000 -5960 10100

execute if score #scan_jn_sakura_pvpbox switch.data matches 1 in minecraft:overworld run forceload add -5960 10000 -5940 10100
execute if score #scan_jn_sakura_pvpbox switch.data matches 1 in switch:game run forceload add -5960 10000 -5940 10100

execute if score #scan_jn_sakura_pvpbox switch.data matches 1 in minecraft:overworld run forceload add -5940 10000 -5920 10100
execute if score #scan_jn_sakura_pvpbox switch.data matches 1 in switch:game run forceload add -5940 10000 -5920 10100

execute if score #scan_jn_sakura_pvpbox switch.data matches 1 in minecraft:overworld run forceload add -5920 10000 -5900 10100
execute if score #scan_jn_sakura_pvpbox switch.data matches 1 in switch:game run forceload add -5920 10000 -5900 10100

execute if score #scan_jn_sakura_pvpbox switch.data matches 1 run data modify storage switch:maps to_scan.jn_sakura_pvpbox set value 2b
execute if score #scan_jn_sakura_pvpbox switch.data matches 1 run scoreboard players set #start_x_jn_sakura_pvpbox switch.data -5999
execute if score #scan_jn_sakura_pvpbox switch.data matches 1 run scoreboard players set #start_y_jn_sakura_pvpbox switch.data 101
execute if score #scan_jn_sakura_pvpbox switch.data matches 1 run scoreboard players set #start_z_jn_sakura_pvpbox switch.data 10001
execute if score #scan_jn_sakura_pvpbox switch.data matches 1 run scoreboard players set #end_x_jn_sakura_pvpbox switch.data -5901
execute if score #scan_jn_sakura_pvpbox switch.data matches 1 run scoreboard players set #end_y_jn_sakura_pvpbox switch.data 137
execute if score #scan_jn_sakura_pvpbox switch.data matches 1 run scoreboard players set #end_z_jn_sakura_pvpbox switch.data 10099
execute if score #scan_jn_sakura_pvpbox switch.data matches 1 run scoreboard players operation #curr_x_jn_sakura_pvpbox switch.data = #start_x_jn_sakura_pvpbox switch.data
execute if score #scan_jn_sakura_pvpbox switch.data matches 1 run scoreboard players operation #curr_y_jn_sakura_pvpbox switch.data = #start_y_jn_sakura_pvpbox switch.data
execute if score #scan_jn_sakura_pvpbox switch.data matches 1 run scoreboard players operation #curr_z_jn_sakura_pvpbox switch.data = #start_z_jn_sakura_pvpbox switch.data
execute if score #scan_jn_sakura_pvpbox switch.data matches 1 run data modify storage switch:doors jn_sakura_pvpbox set value []

execute if score #scan_jn_sakura_pvpbox switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_jn_sakura_pvpbox switch.data matches 30.. summon marker run function switch:maps/survival/jn_sakura_pvpbox/scan_doors_on_marker

execute if score #scan_jn_sakura_pvpbox switch.data matches 103 in minecraft:overworld run forceload remove -6000 10000 -5980 10100
execute if score #scan_jn_sakura_pvpbox switch.data matches 103 in switch:game run forceload remove -6000 10000 -5980 10100

execute if score #scan_jn_sakura_pvpbox switch.data matches 103 in minecraft:overworld run forceload remove -5980 10000 -5960 10100
execute if score #scan_jn_sakura_pvpbox switch.data matches 103 in switch:game run forceload remove -5980 10000 -5960 10100

execute if score #scan_jn_sakura_pvpbox switch.data matches 103 in minecraft:overworld run forceload remove -5960 10000 -5940 10100
execute if score #scan_jn_sakura_pvpbox switch.data matches 103 in switch:game run forceload remove -5960 10000 -5940 10100

execute if score #scan_jn_sakura_pvpbox switch.data matches 103 in minecraft:overworld run forceload remove -5940 10000 -5920 10100
execute if score #scan_jn_sakura_pvpbox switch.data matches 103 in switch:game run forceload remove -5940 10000 -5920 10100

execute if score #scan_jn_sakura_pvpbox switch.data matches 103 in minecraft:overworld run forceload remove -5920 10000 -5900 10100
execute if score #scan_jn_sakura_pvpbox switch.data matches 103 in switch:game run forceload remove -5920 10000 -5900 10100

execute if score #scan_jn_sakura_pvpbox switch.data matches 103 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"jn_sakura_pvpbox","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"5","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_jn_sakura_pvpbox switch.data matches 103 run data remove storage switch:maps to_scan.jn_sakura_pvpbox
execute if score #scan_jn_sakura_pvpbox switch.data matches 103 run scoreboard players reset #scan_jn_sakura_pvpbox switch.data

execute if score #scan_jn_sakura_pvpbox switch.data matches 1.. run schedule function switch:maps/survival/jn_sakura_pvpbox/scan_doors 1t

