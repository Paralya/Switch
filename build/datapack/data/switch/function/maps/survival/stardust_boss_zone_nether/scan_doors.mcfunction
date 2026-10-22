
#> switch:maps/survival/stardust_boss_zone_nether/scan_doors
#
# @within	switch:maps/survival/stardust_boss_zone_nether/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_stardust_boss_zone_nether switch.data 1

execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in minecraft:overworld run forceload add -6000 -10000 -5984 -9835
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in switch:game run forceload add -6000 -10000 -5984 -9835

execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in minecraft:overworld run forceload add -5984 -10000 -5967 -9835
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in switch:game run forceload add -5984 -10000 -5967 -9835

execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in minecraft:overworld run forceload add -5967 -10000 -5950 -9835
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in switch:game run forceload add -5967 -10000 -5950 -9835

execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in minecraft:overworld run forceload add -5950 -10000 -5934 -9835
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in switch:game run forceload add -5950 -10000 -5934 -9835

execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in minecraft:overworld run forceload add -5934 -10000 -5918 -9835
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in switch:game run forceload add -5934 -10000 -5918 -9835

execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in minecraft:overworld run forceload add -5918 -10000 -5901 -9835
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in switch:game run forceload add -5918 -10000 -5901 -9835

execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in minecraft:overworld run forceload add -5901 -10000 -5884 -9835
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in switch:game run forceload add -5901 -10000 -5884 -9835

execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in minecraft:overworld run forceload add -5884 -10000 -5868 -9835
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in switch:game run forceload add -5884 -10000 -5868 -9835

execute if score #scan_stardust_boss_zone_nether switch.data matches 1 run data modify storage switch:maps to_scan.stardust_boss_zone_nether set value 2b
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 run scoreboard players set #start_x_stardust_boss_zone_nether switch.data -5999
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 run scoreboard players set #start_y_stardust_boss_zone_nether switch.data 101
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 run scoreboard players set #start_z_stardust_boss_zone_nether switch.data -9999
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 run scoreboard players set #end_x_stardust_boss_zone_nether switch.data -5869
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 run scoreboard players set #end_y_stardust_boss_zone_nether switch.data 227
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 run scoreboard players set #end_z_stardust_boss_zone_nether switch.data -9836
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 run scoreboard players operation #curr_x_stardust_boss_zone_nether switch.data = #start_x_stardust_boss_zone_nether switch.data
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 run scoreboard players operation #curr_y_stardust_boss_zone_nether switch.data = #start_y_stardust_boss_zone_nether switch.data
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 run scoreboard players operation #curr_z_stardust_boss_zone_nether switch.data = #start_z_stardust_boss_zone_nether switch.data
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 run data modify storage switch:doors stardust_boss_zone_nether set value []

execute if score #scan_stardust_boss_zone_nether switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_stardust_boss_zone_nether switch.data matches 30.. summon marker run function switch:maps/survival/stardust_boss_zone_nether/scan_doors_on_marker

execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in minecraft:overworld run forceload remove -6000 -10000 -5984 -9835
execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in switch:game run forceload remove -6000 -10000 -5984 -9835

execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in minecraft:overworld run forceload remove -5984 -10000 -5967 -9835
execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in switch:game run forceload remove -5984 -10000 -5967 -9835

execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in minecraft:overworld run forceload remove -5967 -10000 -5950 -9835
execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in switch:game run forceload remove -5967 -10000 -5950 -9835

execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in minecraft:overworld run forceload remove -5950 -10000 -5934 -9835
execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in switch:game run forceload remove -5950 -10000 -5934 -9835

execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in minecraft:overworld run forceload remove -5934 -10000 -5918 -9835
execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in switch:game run forceload remove -5934 -10000 -5918 -9835

execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in minecraft:overworld run forceload remove -5918 -10000 -5901 -9835
execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in switch:game run forceload remove -5918 -10000 -5901 -9835

execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in minecraft:overworld run forceload remove -5901 -10000 -5884 -9835
execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in switch:game run forceload remove -5901 -10000 -5884 -9835

execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in minecraft:overworld run forceload remove -5884 -10000 -5868 -9835
execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in switch:game run forceload remove -5884 -10000 -5868 -9835

execute if score #scan_stardust_boss_zone_nether switch.data matches 576 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"stardust_boss_zone_nether","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"28","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_stardust_boss_zone_nether switch.data matches 576 run data remove storage switch:maps to_scan.stardust_boss_zone_nether
execute if score #scan_stardust_boss_zone_nether switch.data matches 576 run scoreboard players reset #scan_stardust_boss_zone_nether switch.data

execute if score #scan_stardust_boss_zone_nether switch.data matches 1.. run schedule function switch:maps/survival/stardust_boss_zone_nether/scan_doors 1t

