
#> switch:maps/survival/airdox_fish_fight/scan_doors
#
# @within	switch:maps/survival/airdox_fish_fight/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_airdox_fish_fight switch.data 1

execute if score #scan_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 156000 156000 156017 156151
execute if score #scan_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 156000 156000 156017 156151

execute if score #scan_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 156017 156000 156034 156151
execute if score #scan_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 156017 156000 156034 156151

execute if score #scan_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 156034 156000 156051 156151
execute if score #scan_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 156034 156000 156051 156151

execute if score #scan_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 156051 156000 156068 156151
execute if score #scan_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 156051 156000 156068 156151

execute if score #scan_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 156068 156000 156084 156151
execute if score #scan_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 156068 156000 156084 156151

execute if score #scan_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 156084 156000 156101 156151
execute if score #scan_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 156084 156000 156101 156151

execute if score #scan_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 156101 156000 156118 156151
execute if score #scan_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 156101 156000 156118 156151

execute if score #scan_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 156118 156000 156135 156151
execute if score #scan_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 156118 156000 156135 156151

execute if score #scan_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 156135 156000 156152 156151
execute if score #scan_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 156135 156000 156152 156151

execute if score #scan_airdox_fish_fight switch.data matches 1 run data modify storage switch:maps to_scan.airdox_fish_fight set value 2b
execute if score #scan_airdox_fish_fight switch.data matches 1 run scoreboard players set #start_x_airdox_fish_fight switch.data 156001
execute if score #scan_airdox_fish_fight switch.data matches 1 run scoreboard players set #start_y_airdox_fish_fight switch.data 101
execute if score #scan_airdox_fish_fight switch.data matches 1 run scoreboard players set #start_z_airdox_fish_fight switch.data 156001
execute if score #scan_airdox_fish_fight switch.data matches 1 run scoreboard players set #end_x_airdox_fish_fight switch.data 156151
execute if score #scan_airdox_fish_fight switch.data matches 1 run scoreboard players set #end_y_airdox_fish_fight switch.data 198
execute if score #scan_airdox_fish_fight switch.data matches 1 run scoreboard players set #end_z_airdox_fish_fight switch.data 156150
execute if score #scan_airdox_fish_fight switch.data matches 1 run scoreboard players operation #curr_x_airdox_fish_fight switch.data = #start_x_airdox_fish_fight switch.data
execute if score #scan_airdox_fish_fight switch.data matches 1 run scoreboard players operation #curr_y_airdox_fish_fight switch.data = #start_y_airdox_fish_fight switch.data
execute if score #scan_airdox_fish_fight switch.data matches 1 run scoreboard players operation #curr_z_airdox_fish_fight switch.data = #start_z_airdox_fish_fight switch.data
execute if score #scan_airdox_fish_fight switch.data matches 1 run data modify storage switch:doors airdox_fish_fight set value []

execute if score #scan_airdox_fish_fight switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_airdox_fish_fight switch.data matches 30.. summon marker run function switch:maps/survival/airdox_fish_fight/scan_doors_on_marker

execute if score #scan_airdox_fish_fight switch.data matches 474 in minecraft:overworld run forceload remove 156000 156000 156017 156151
execute if score #scan_airdox_fish_fight switch.data matches 474 in switch:game run forceload remove 156000 156000 156017 156151

execute if score #scan_airdox_fish_fight switch.data matches 474 in minecraft:overworld run forceload remove 156017 156000 156034 156151
execute if score #scan_airdox_fish_fight switch.data matches 474 in switch:game run forceload remove 156017 156000 156034 156151

execute if score #scan_airdox_fish_fight switch.data matches 474 in minecraft:overworld run forceload remove 156034 156000 156051 156151
execute if score #scan_airdox_fish_fight switch.data matches 474 in switch:game run forceload remove 156034 156000 156051 156151

execute if score #scan_airdox_fish_fight switch.data matches 474 in minecraft:overworld run forceload remove 156051 156000 156068 156151
execute if score #scan_airdox_fish_fight switch.data matches 474 in switch:game run forceload remove 156051 156000 156068 156151

execute if score #scan_airdox_fish_fight switch.data matches 474 in minecraft:overworld run forceload remove 156068 156000 156084 156151
execute if score #scan_airdox_fish_fight switch.data matches 474 in switch:game run forceload remove 156068 156000 156084 156151

execute if score #scan_airdox_fish_fight switch.data matches 474 in minecraft:overworld run forceload remove 156084 156000 156101 156151
execute if score #scan_airdox_fish_fight switch.data matches 474 in switch:game run forceload remove 156084 156000 156101 156151

execute if score #scan_airdox_fish_fight switch.data matches 474 in minecraft:overworld run forceload remove 156101 156000 156118 156151
execute if score #scan_airdox_fish_fight switch.data matches 474 in switch:game run forceload remove 156101 156000 156118 156151

execute if score #scan_airdox_fish_fight switch.data matches 474 in minecraft:overworld run forceload remove 156118 156000 156135 156151
execute if score #scan_airdox_fish_fight switch.data matches 474 in switch:game run forceload remove 156118 156000 156135 156151

execute if score #scan_airdox_fish_fight switch.data matches 474 in minecraft:overworld run forceload remove 156135 156000 156152 156151
execute if score #scan_airdox_fish_fight switch.data matches 474 in switch:game run forceload remove 156135 156000 156152 156151

execute if score #scan_airdox_fish_fight switch.data matches 474 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"airdox_fish_fight","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"23","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_airdox_fish_fight switch.data matches 474 run data remove storage switch:maps to_scan.airdox_fish_fight
execute if score #scan_airdox_fish_fight switch.data matches 474 run scoreboard players reset #scan_airdox_fish_fight switch.data

execute if score #scan_airdox_fish_fight switch.data matches 1.. run schedule function switch:maps/survival/airdox_fish_fight/scan_doors 1t

