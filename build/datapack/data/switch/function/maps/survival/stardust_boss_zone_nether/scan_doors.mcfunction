
#> switch:maps/survival/stardust_boss_zone_nether/scan_doors
#
# @within	switch:maps/survival/stardust_boss_zone_nether/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_stardust_boss_zone_nether switch.data 1

execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in minecraft:overworld run forceload add 104000 104000 104016 104165
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in switch:game run forceload add 104000 104000 104016 104165

execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in minecraft:overworld run forceload add 104016 104000 104033 104165
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in switch:game run forceload add 104016 104000 104033 104165

execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in minecraft:overworld run forceload add 104033 104000 104050 104165
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in switch:game run forceload add 104033 104000 104050 104165

execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in minecraft:overworld run forceload add 104050 104000 104066 104165
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in switch:game run forceload add 104050 104000 104066 104165

execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in minecraft:overworld run forceload add 104066 104000 104082 104165
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in switch:game run forceload add 104066 104000 104082 104165

execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in minecraft:overworld run forceload add 104082 104000 104099 104165
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in switch:game run forceload add 104082 104000 104099 104165

execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in minecraft:overworld run forceload add 104099 104000 104116 104165
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in switch:game run forceload add 104099 104000 104116 104165

execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in minecraft:overworld run forceload add 104116 104000 104132 104165
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 in switch:game run forceload add 104116 104000 104132 104165

execute if score #scan_stardust_boss_zone_nether switch.data matches 1 run data modify storage switch:maps to_scan.stardust_boss_zone_nether set value 2b
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 run scoreboard players set #start_x_stardust_boss_zone_nether switch.data 104001
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 run scoreboard players set #start_y_stardust_boss_zone_nether switch.data -62
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 run scoreboard players set #start_z_stardust_boss_zone_nether switch.data 104001
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 run scoreboard players set #end_x_stardust_boss_zone_nether switch.data 104131
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 run scoreboard players set #end_y_stardust_boss_zone_nether switch.data 64
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 run scoreboard players set #end_z_stardust_boss_zone_nether switch.data 104164
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 run scoreboard players operation #curr_x_stardust_boss_zone_nether switch.data = #start_x_stardust_boss_zone_nether switch.data
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 run scoreboard players operation #curr_y_stardust_boss_zone_nether switch.data = #start_y_stardust_boss_zone_nether switch.data
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 run scoreboard players operation #curr_z_stardust_boss_zone_nether switch.data = #start_z_stardust_boss_zone_nether switch.data
execute if score #scan_stardust_boss_zone_nether switch.data matches 1 run data modify storage switch:doors stardust_boss_zone_nether set value []


execute if score #scan_stardust_boss_zone_nether switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_stardust_boss_zone_nether switch.data matches 30.. summon marker run function switch:maps/survival/stardust_boss_zone_nether/scan_doors_on_marker

execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in minecraft:overworld run forceload remove 104000 104000 104016 104165
execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in switch:game run forceload remove 104000 104000 104016 104165

execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in minecraft:overworld run forceload remove 104016 104000 104033 104165
execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in switch:game run forceload remove 104016 104000 104033 104165

execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in minecraft:overworld run forceload remove 104033 104000 104050 104165
execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in switch:game run forceload remove 104033 104000 104050 104165

execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in minecraft:overworld run forceload remove 104050 104000 104066 104165
execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in switch:game run forceload remove 104050 104000 104066 104165

execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in minecraft:overworld run forceload remove 104066 104000 104082 104165
execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in switch:game run forceload remove 104066 104000 104082 104165

execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in minecraft:overworld run forceload remove 104082 104000 104099 104165
execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in switch:game run forceload remove 104082 104000 104099 104165

execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in minecraft:overworld run forceload remove 104099 104000 104116 104165
execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in switch:game run forceload remove 104099 104000 104116 104165

execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in minecraft:overworld run forceload remove 104116 104000 104132 104165
execute if score #scan_stardust_boss_zone_nether switch.data matches 576 in switch:game run forceload remove 104116 104000 104132 104165

execute if score #scan_stardust_boss_zone_nether switch.data matches 576 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"stardust_boss_zone_nether","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"28","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_stardust_boss_zone_nether switch.data matches 576 run data remove storage switch:maps to_scan.stardust_boss_zone_nether
execute if score #scan_stardust_boss_zone_nether switch.data matches 576 run scoreboard players reset #scan_stardust_boss_zone_nether switch.data

execute if score #scan_stardust_boss_zone_nether switch.data matches 1.. run schedule function switch:maps/survival/stardust_boss_zone_nether/scan_doors 1t

