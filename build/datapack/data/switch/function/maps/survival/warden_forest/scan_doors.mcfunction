
#> switch:maps/survival/warden_forest/scan_doors
#
# @within	switch:maps/survival/warden_forest/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_warden_forest switch.data 1

execute if score #scan_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 9940 9940 9960 10060
execute if score #scan_warden_forest switch.data matches 1 in switch:game run forceload add 9940 9940 9960 10060

execute if score #scan_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 9960 9940 9980 10060
execute if score #scan_warden_forest switch.data matches 1 in switch:game run forceload add 9960 9940 9980 10060

execute if score #scan_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 9980 9940 10000 10060
execute if score #scan_warden_forest switch.data matches 1 in switch:game run forceload add 9980 9940 10000 10060

execute if score #scan_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 10000 9940 10020 10060
execute if score #scan_warden_forest switch.data matches 1 in switch:game run forceload add 10000 9940 10020 10060

execute if score #scan_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 10020 9940 10040 10060
execute if score #scan_warden_forest switch.data matches 1 in switch:game run forceload add 10020 9940 10040 10060

execute if score #scan_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 10040 9940 10060 10060
execute if score #scan_warden_forest switch.data matches 1 in switch:game run forceload add 10040 9940 10060 10060

execute if score #scan_warden_forest switch.data matches 1 run data modify storage switch:maps to_scan.warden_forest set value 2b
execute if score #scan_warden_forest switch.data matches 1 run scoreboard players set #start_x_warden_forest switch.data 9941
execute if score #scan_warden_forest switch.data matches 1 run scoreboard players set #start_y_warden_forest switch.data 1
execute if score #scan_warden_forest switch.data matches 1 run scoreboard players set #start_z_warden_forest switch.data 9941
execute if score #scan_warden_forest switch.data matches 1 run scoreboard players set #end_x_warden_forest switch.data 10059
execute if score #scan_warden_forest switch.data matches 1 run scoreboard players set #end_y_warden_forest switch.data 63
execute if score #scan_warden_forest switch.data matches 1 run scoreboard players set #end_z_warden_forest switch.data 10059
execute if score #scan_warden_forest switch.data matches 1 run scoreboard players operation #curr_x_warden_forest switch.data = #start_x_warden_forest switch.data
execute if score #scan_warden_forest switch.data matches 1 run scoreboard players operation #curr_y_warden_forest switch.data = #start_y_warden_forest switch.data
execute if score #scan_warden_forest switch.data matches 1 run scoreboard players operation #curr_z_warden_forest switch.data = #start_z_warden_forest switch.data
execute if score #scan_warden_forest switch.data matches 1 run data modify storage switch:doors warden_forest set value []


execute if score #scan_warden_forest switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_warden_forest switch.data matches 30.. summon marker run function switch:maps/survival/warden_forest/scan_doors_on_marker

execute if score #scan_warden_forest switch.data matches 209 in minecraft:overworld run forceload remove 9940 9940 9960 10060
execute if score #scan_warden_forest switch.data matches 209 in switch:game run forceload remove 9940 9940 9960 10060

execute if score #scan_warden_forest switch.data matches 209 in minecraft:overworld run forceload remove 9960 9940 9980 10060
execute if score #scan_warden_forest switch.data matches 209 in switch:game run forceload remove 9960 9940 9980 10060

execute if score #scan_warden_forest switch.data matches 209 in minecraft:overworld run forceload remove 9980 9940 10000 10060
execute if score #scan_warden_forest switch.data matches 209 in switch:game run forceload remove 9980 9940 10000 10060

execute if score #scan_warden_forest switch.data matches 209 in minecraft:overworld run forceload remove 10000 9940 10020 10060
execute if score #scan_warden_forest switch.data matches 209 in switch:game run forceload remove 10000 9940 10020 10060

execute if score #scan_warden_forest switch.data matches 209 in minecraft:overworld run forceload remove 10020 9940 10040 10060
execute if score #scan_warden_forest switch.data matches 209 in switch:game run forceload remove 10020 9940 10040 10060

execute if score #scan_warden_forest switch.data matches 209 in minecraft:overworld run forceload remove 10040 9940 10060 10060
execute if score #scan_warden_forest switch.data matches 209 in switch:game run forceload remove 10040 9940 10060 10060

execute if score #scan_warden_forest switch.data matches 209 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"warden_forest","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"10","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_warden_forest switch.data matches 209 run data remove storage switch:maps to_scan.warden_forest
execute if score #scan_warden_forest switch.data matches 209 run scoreboard players reset #scan_warden_forest switch.data

execute if score #scan_warden_forest switch.data matches 1.. run schedule function switch:maps/survival/warden_forest/scan_doors 1t

