
#> switch:maps/survival/stardust_vip_zone/scan_doors
#
# @within	switch:maps/survival/stardust_vip_zone/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_stardust_vip_zone switch.data 1

execute if score #scan_stardust_vip_zone switch.data matches 1 in minecraft:overworld run forceload add 107000 107000 107023 107085
execute if score #scan_stardust_vip_zone switch.data matches 1 in switch:game run forceload add 107000 107000 107023 107085

execute if score #scan_stardust_vip_zone switch.data matches 1 in minecraft:overworld run forceload add 107023 107000 107045 107085
execute if score #scan_stardust_vip_zone switch.data matches 1 in switch:game run forceload add 107023 107000 107045 107085

execute if score #scan_stardust_vip_zone switch.data matches 1 in minecraft:overworld run forceload add 107045 107000 107068 107085
execute if score #scan_stardust_vip_zone switch.data matches 1 in switch:game run forceload add 107045 107000 107068 107085

execute if score #scan_stardust_vip_zone switch.data matches 1 in minecraft:overworld run forceload add 107068 107000 107090 107085
execute if score #scan_stardust_vip_zone switch.data matches 1 in switch:game run forceload add 107068 107000 107090 107085

execute if score #scan_stardust_vip_zone switch.data matches 1 in minecraft:overworld run forceload add 107090 107000 107113 107085
execute if score #scan_stardust_vip_zone switch.data matches 1 in switch:game run forceload add 107090 107000 107113 107085

execute if score #scan_stardust_vip_zone switch.data matches 1 run data modify storage switch:maps to_scan.stardust_vip_zone set value 2b
execute if score #scan_stardust_vip_zone switch.data matches 1 run scoreboard players set #start_x_stardust_vip_zone switch.data 107001
execute if score #scan_stardust_vip_zone switch.data matches 1 run scoreboard players set #start_y_stardust_vip_zone switch.data 1
execute if score #scan_stardust_vip_zone switch.data matches 1 run scoreboard players set #start_z_stardust_vip_zone switch.data 107001
execute if score #scan_stardust_vip_zone switch.data matches 1 run scoreboard players set #end_x_stardust_vip_zone switch.data 107112
execute if score #scan_stardust_vip_zone switch.data matches 1 run scoreboard players set #end_y_stardust_vip_zone switch.data 49
execute if score #scan_stardust_vip_zone switch.data matches 1 run scoreboard players set #end_z_stardust_vip_zone switch.data 107084
execute if score #scan_stardust_vip_zone switch.data matches 1 run scoreboard players operation #curr_x_stardust_vip_zone switch.data = #start_x_stardust_vip_zone switch.data
execute if score #scan_stardust_vip_zone switch.data matches 1 run scoreboard players operation #curr_y_stardust_vip_zone switch.data = #start_y_stardust_vip_zone switch.data
execute if score #scan_stardust_vip_zone switch.data matches 1 run scoreboard players operation #curr_z_stardust_vip_zone switch.data = #start_z_stardust_vip_zone switch.data
execute if score #scan_stardust_vip_zone switch.data matches 1 run data modify storage switch:doors stardust_vip_zone set value []


execute if score #scan_stardust_vip_zone switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_stardust_vip_zone switch.data matches 30.. summon marker run function switch:maps/survival/stardust_vip_zone/scan_doors_on_marker

execute if score #scan_stardust_vip_zone switch.data matches 123 in minecraft:overworld run forceload remove 107000 107000 107023 107085
execute if score #scan_stardust_vip_zone switch.data matches 123 in switch:game run forceload remove 107000 107000 107023 107085

execute if score #scan_stardust_vip_zone switch.data matches 123 in minecraft:overworld run forceload remove 107023 107000 107045 107085
execute if score #scan_stardust_vip_zone switch.data matches 123 in switch:game run forceload remove 107023 107000 107045 107085

execute if score #scan_stardust_vip_zone switch.data matches 123 in minecraft:overworld run forceload remove 107045 107000 107068 107085
execute if score #scan_stardust_vip_zone switch.data matches 123 in switch:game run forceload remove 107045 107000 107068 107085

execute if score #scan_stardust_vip_zone switch.data matches 123 in minecraft:overworld run forceload remove 107068 107000 107090 107085
execute if score #scan_stardust_vip_zone switch.data matches 123 in switch:game run forceload remove 107068 107000 107090 107085

execute if score #scan_stardust_vip_zone switch.data matches 123 in minecraft:overworld run forceload remove 107090 107000 107113 107085
execute if score #scan_stardust_vip_zone switch.data matches 123 in switch:game run forceload remove 107090 107000 107113 107085

execute if score #scan_stardust_vip_zone switch.data matches 123 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"stardust_vip_zone","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"6","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_stardust_vip_zone switch.data matches 123 run data remove storage switch:maps to_scan.stardust_vip_zone
execute if score #scan_stardust_vip_zone switch.data matches 123 run scoreboard players reset #scan_stardust_vip_zone switch.data

execute if score #scan_stardust_vip_zone switch.data matches 1.. run schedule function switch:maps/survival/stardust_vip_zone/scan_doors 1t

