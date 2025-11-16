
#> switch:maps/survival/stardust_boss_zone/scan_doors
#
# @within	switch:maps/survival/stardust_boss_zone/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_stardust_boss_zone switch.data 1

execute if score #scan_stardust_boss_zone switch.data matches 1 in minecraft:overworld run forceload add 103000 103000 103016 103165
execute if score #scan_stardust_boss_zone switch.data matches 1 in switch:game run forceload add 103000 103000 103016 103165

execute if score #scan_stardust_boss_zone switch.data matches 1 in minecraft:overworld run forceload add 103016 103000 103033 103165
execute if score #scan_stardust_boss_zone switch.data matches 1 in switch:game run forceload add 103016 103000 103033 103165

execute if score #scan_stardust_boss_zone switch.data matches 1 in minecraft:overworld run forceload add 103033 103000 103050 103165
execute if score #scan_stardust_boss_zone switch.data matches 1 in switch:game run forceload add 103033 103000 103050 103165

execute if score #scan_stardust_boss_zone switch.data matches 1 in minecraft:overworld run forceload add 103050 103000 103066 103165
execute if score #scan_stardust_boss_zone switch.data matches 1 in switch:game run forceload add 103050 103000 103066 103165

execute if score #scan_stardust_boss_zone switch.data matches 1 in minecraft:overworld run forceload add 103066 103000 103082 103165
execute if score #scan_stardust_boss_zone switch.data matches 1 in switch:game run forceload add 103066 103000 103082 103165

execute if score #scan_stardust_boss_zone switch.data matches 1 in minecraft:overworld run forceload add 103082 103000 103099 103165
execute if score #scan_stardust_boss_zone switch.data matches 1 in switch:game run forceload add 103082 103000 103099 103165

execute if score #scan_stardust_boss_zone switch.data matches 1 in minecraft:overworld run forceload add 103099 103000 103116 103165
execute if score #scan_stardust_boss_zone switch.data matches 1 in switch:game run forceload add 103099 103000 103116 103165

execute if score #scan_stardust_boss_zone switch.data matches 1 in minecraft:overworld run forceload add 103116 103000 103132 103165
execute if score #scan_stardust_boss_zone switch.data matches 1 in switch:game run forceload add 103116 103000 103132 103165

execute if score #scan_stardust_boss_zone switch.data matches 1 run data modify storage switch:maps to_scan.stardust_boss_zone set value 2b
execute if score #scan_stardust_boss_zone switch.data matches 1 run scoreboard players set #start_x_stardust_boss_zone switch.data 103001
execute if score #scan_stardust_boss_zone switch.data matches 1 run scoreboard players set #start_y_stardust_boss_zone switch.data 101
execute if score #scan_stardust_boss_zone switch.data matches 1 run scoreboard players set #start_z_stardust_boss_zone switch.data 103001
execute if score #scan_stardust_boss_zone switch.data matches 1 run scoreboard players set #end_x_stardust_boss_zone switch.data 103131
execute if score #scan_stardust_boss_zone switch.data matches 1 run scoreboard players set #end_y_stardust_boss_zone switch.data 212
execute if score #scan_stardust_boss_zone switch.data matches 1 run scoreboard players set #end_z_stardust_boss_zone switch.data 103164
execute if score #scan_stardust_boss_zone switch.data matches 1 run scoreboard players operation #curr_x_stardust_boss_zone switch.data = #start_x_stardust_boss_zone switch.data
execute if score #scan_stardust_boss_zone switch.data matches 1 run scoreboard players operation #curr_y_stardust_boss_zone switch.data = #start_y_stardust_boss_zone switch.data
execute if score #scan_stardust_boss_zone switch.data matches 1 run scoreboard players operation #curr_z_stardust_boss_zone switch.data = #start_z_stardust_boss_zone switch.data
execute if score #scan_stardust_boss_zone switch.data matches 1 run data modify storage switch:doors stardust_boss_zone set value []

execute if score #scan_stardust_boss_zone switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_stardust_boss_zone switch.data matches 30.. summon marker run function switch:maps/survival/stardust_boss_zone/scan_doors_on_marker

execute if score #scan_stardust_boss_zone switch.data matches 512 in minecraft:overworld run forceload remove 103000 103000 103016 103165
execute if score #scan_stardust_boss_zone switch.data matches 512 in switch:game run forceload remove 103000 103000 103016 103165

execute if score #scan_stardust_boss_zone switch.data matches 512 in minecraft:overworld run forceload remove 103016 103000 103033 103165
execute if score #scan_stardust_boss_zone switch.data matches 512 in switch:game run forceload remove 103016 103000 103033 103165

execute if score #scan_stardust_boss_zone switch.data matches 512 in minecraft:overworld run forceload remove 103033 103000 103050 103165
execute if score #scan_stardust_boss_zone switch.data matches 512 in switch:game run forceload remove 103033 103000 103050 103165

execute if score #scan_stardust_boss_zone switch.data matches 512 in minecraft:overworld run forceload remove 103050 103000 103066 103165
execute if score #scan_stardust_boss_zone switch.data matches 512 in switch:game run forceload remove 103050 103000 103066 103165

execute if score #scan_stardust_boss_zone switch.data matches 512 in minecraft:overworld run forceload remove 103066 103000 103082 103165
execute if score #scan_stardust_boss_zone switch.data matches 512 in switch:game run forceload remove 103066 103000 103082 103165

execute if score #scan_stardust_boss_zone switch.data matches 512 in minecraft:overworld run forceload remove 103082 103000 103099 103165
execute if score #scan_stardust_boss_zone switch.data matches 512 in switch:game run forceload remove 103082 103000 103099 103165

execute if score #scan_stardust_boss_zone switch.data matches 512 in minecraft:overworld run forceload remove 103099 103000 103116 103165
execute if score #scan_stardust_boss_zone switch.data matches 512 in switch:game run forceload remove 103099 103000 103116 103165

execute if score #scan_stardust_boss_zone switch.data matches 512 in minecraft:overworld run forceload remove 103116 103000 103132 103165
execute if score #scan_stardust_boss_zone switch.data matches 512 in switch:game run forceload remove 103116 103000 103132 103165

execute if score #scan_stardust_boss_zone switch.data matches 512 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"stardust_boss_zone","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"25","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_stardust_boss_zone switch.data matches 512 run data remove storage switch:maps to_scan.stardust_boss_zone
execute if score #scan_stardust_boss_zone switch.data matches 512 run scoreboard players reset #scan_stardust_boss_zone switch.data

execute if score #scan_stardust_boss_zone switch.data matches 1.. run schedule function switch:maps/survival/stardust_boss_zone/scan_doors 1t

