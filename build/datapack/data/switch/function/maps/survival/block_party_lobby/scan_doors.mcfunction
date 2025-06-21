
#> switch:maps/survival/block_party_lobby/scan_doors
#
# @within	switch:maps/survival/block_party_lobby/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_block_party_lobby switch.data 1

execute if score #scan_block_party_lobby switch.data matches 1 in minecraft:overworld run forceload add 131000 131000 131018 131148
execute if score #scan_block_party_lobby switch.data matches 1 in switch:game run forceload add 131000 131000 131018 131148

execute if score #scan_block_party_lobby switch.data matches 1 in minecraft:overworld run forceload add 131018 131000 131037 131148
execute if score #scan_block_party_lobby switch.data matches 1 in switch:game run forceload add 131018 131000 131037 131148

execute if score #scan_block_party_lobby switch.data matches 1 in minecraft:overworld run forceload add 131037 131000 131056 131148
execute if score #scan_block_party_lobby switch.data matches 1 in switch:game run forceload add 131037 131000 131056 131148

execute if score #scan_block_party_lobby switch.data matches 1 in minecraft:overworld run forceload add 131056 131000 131074 131148
execute if score #scan_block_party_lobby switch.data matches 1 in switch:game run forceload add 131056 131000 131074 131148

execute if score #scan_block_party_lobby switch.data matches 1 in minecraft:overworld run forceload add 131074 131000 131092 131148
execute if score #scan_block_party_lobby switch.data matches 1 in switch:game run forceload add 131074 131000 131092 131148

execute if score #scan_block_party_lobby switch.data matches 1 in minecraft:overworld run forceload add 131092 131000 131111 131148
execute if score #scan_block_party_lobby switch.data matches 1 in switch:game run forceload add 131092 131000 131111 131148

execute if score #scan_block_party_lobby switch.data matches 1 in minecraft:overworld run forceload add 131111 131000 131130 131148
execute if score #scan_block_party_lobby switch.data matches 1 in switch:game run forceload add 131111 131000 131130 131148

execute if score #scan_block_party_lobby switch.data matches 1 in minecraft:overworld run forceload add 131130 131000 131148 131148
execute if score #scan_block_party_lobby switch.data matches 1 in switch:game run forceload add 131130 131000 131148 131148

execute if score #scan_block_party_lobby switch.data matches 1 in minecraft:overworld run forceload add 131148 131000 131166 131148
execute if score #scan_block_party_lobby switch.data matches 1 in switch:game run forceload add 131148 131000 131166 131148

execute if score #scan_block_party_lobby switch.data matches 1 in minecraft:overworld run forceload add 131166 131000 131185 131148
execute if score #scan_block_party_lobby switch.data matches 1 in switch:game run forceload add 131166 131000 131185 131148

execute if score #scan_block_party_lobby switch.data matches 1 in minecraft:overworld run forceload add 131185 131000 131204 131148
execute if score #scan_block_party_lobby switch.data matches 1 in switch:game run forceload add 131185 131000 131204 131148

execute if score #scan_block_party_lobby switch.data matches 1 in minecraft:overworld run forceload add 131204 131000 131222 131148
execute if score #scan_block_party_lobby switch.data matches 1 in switch:game run forceload add 131204 131000 131222 131148

execute if score #scan_block_party_lobby switch.data matches 1 run data modify storage switch:maps to_scan.block_party_lobby set value 2b
execute if score #scan_block_party_lobby switch.data matches 1 run scoreboard players set #start_x_block_party_lobby switch.data 131001
execute if score #scan_block_party_lobby switch.data matches 1 run scoreboard players set #start_y_block_party_lobby switch.data 1
execute if score #scan_block_party_lobby switch.data matches 1 run scoreboard players set #start_z_block_party_lobby switch.data 131001
execute if score #scan_block_party_lobby switch.data matches 1 run scoreboard players set #end_x_block_party_lobby switch.data 131221
execute if score #scan_block_party_lobby switch.data matches 1 run scoreboard players set #end_y_block_party_lobby switch.data 78
execute if score #scan_block_party_lobby switch.data matches 1 run scoreboard players set #end_z_block_party_lobby switch.data 131147
execute if score #scan_block_party_lobby switch.data matches 1 run scoreboard players operation #curr_x_block_party_lobby switch.data = #start_x_block_party_lobby switch.data
execute if score #scan_block_party_lobby switch.data matches 1 run scoreboard players operation #curr_y_block_party_lobby switch.data = #start_y_block_party_lobby switch.data
execute if score #scan_block_party_lobby switch.data matches 1 run scoreboard players operation #curr_z_block_party_lobby switch.data = #start_z_block_party_lobby switch.data
execute if score #scan_block_party_lobby switch.data matches 1 run data modify storage switch:doors block_party_lobby set value []

execute if score #scan_block_party_lobby switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_block_party_lobby switch.data matches 30.. summon marker run function switch:maps/survival/block_party_lobby/scan_doors_on_marker

execute if score #scan_block_party_lobby switch.data matches 537 in minecraft:overworld run forceload remove 131000 131000 131018 131148
execute if score #scan_block_party_lobby switch.data matches 537 in switch:game run forceload remove 131000 131000 131018 131148

execute if score #scan_block_party_lobby switch.data matches 537 in minecraft:overworld run forceload remove 131018 131000 131037 131148
execute if score #scan_block_party_lobby switch.data matches 537 in switch:game run forceload remove 131018 131000 131037 131148

execute if score #scan_block_party_lobby switch.data matches 537 in minecraft:overworld run forceload remove 131037 131000 131056 131148
execute if score #scan_block_party_lobby switch.data matches 537 in switch:game run forceload remove 131037 131000 131056 131148

execute if score #scan_block_party_lobby switch.data matches 537 in minecraft:overworld run forceload remove 131056 131000 131074 131148
execute if score #scan_block_party_lobby switch.data matches 537 in switch:game run forceload remove 131056 131000 131074 131148

execute if score #scan_block_party_lobby switch.data matches 537 in minecraft:overworld run forceload remove 131074 131000 131092 131148
execute if score #scan_block_party_lobby switch.data matches 537 in switch:game run forceload remove 131074 131000 131092 131148

execute if score #scan_block_party_lobby switch.data matches 537 in minecraft:overworld run forceload remove 131092 131000 131111 131148
execute if score #scan_block_party_lobby switch.data matches 537 in switch:game run forceload remove 131092 131000 131111 131148

execute if score #scan_block_party_lobby switch.data matches 537 in minecraft:overworld run forceload remove 131111 131000 131130 131148
execute if score #scan_block_party_lobby switch.data matches 537 in switch:game run forceload remove 131111 131000 131130 131148

execute if score #scan_block_party_lobby switch.data matches 537 in minecraft:overworld run forceload remove 131130 131000 131148 131148
execute if score #scan_block_party_lobby switch.data matches 537 in switch:game run forceload remove 131130 131000 131148 131148

execute if score #scan_block_party_lobby switch.data matches 537 in minecraft:overworld run forceload remove 131148 131000 131166 131148
execute if score #scan_block_party_lobby switch.data matches 537 in switch:game run forceload remove 131148 131000 131166 131148

execute if score #scan_block_party_lobby switch.data matches 537 in minecraft:overworld run forceload remove 131166 131000 131185 131148
execute if score #scan_block_party_lobby switch.data matches 537 in switch:game run forceload remove 131166 131000 131185 131148

execute if score #scan_block_party_lobby switch.data matches 537 in minecraft:overworld run forceload remove 131185 131000 131204 131148
execute if score #scan_block_party_lobby switch.data matches 537 in switch:game run forceload remove 131185 131000 131204 131148

execute if score #scan_block_party_lobby switch.data matches 537 in minecraft:overworld run forceload remove 131204 131000 131222 131148
execute if score #scan_block_party_lobby switch.data matches 537 in switch:game run forceload remove 131204 131000 131222 131148

execute if score #scan_block_party_lobby switch.data matches 537 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"block_party_lobby","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"26","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_block_party_lobby switch.data matches 537 run data remove storage switch:maps to_scan.block_party_lobby
execute if score #scan_block_party_lobby switch.data matches 537 run scoreboard players reset #scan_block_party_lobby switch.data

execute if score #scan_block_party_lobby switch.data matches 1.. run schedule function switch:maps/survival/block_party_lobby/scan_doors 1t

