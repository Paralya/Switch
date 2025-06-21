
#> switch:maps/survival/paralya_lobby_noel/scan_doors
#
# @within	switch:maps/survival/paralya_lobby_noel/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_paralya_lobby_noel switch.data 1

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40000 40000 40014 40200
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40000 40000 40014 40200

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40014 40000 40029 40200
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40014 40000 40029 40200

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40029 40000 40043 40200
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40029 40000 40043 40200

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40043 40000 40057 40200
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40043 40000 40057 40200

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40057 40000 40071 40200
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40057 40000 40071 40200

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40071 40000 40086 40200
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40071 40000 40086 40200

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40086 40000 40100 40200
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40086 40000 40100 40200

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40100 40000 40114 40200
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40100 40000 40114 40200

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40114 40000 40129 40200
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40114 40000 40129 40200

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40129 40000 40143 40200
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40129 40000 40143 40200

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40143 40000 40157 40200
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40143 40000 40157 40200

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40157 40000 40171 40200
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40157 40000 40171 40200

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40171 40000 40186 40200
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40171 40000 40186 40200

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40186 40000 40200 40200
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40186 40000 40200 40200

execute if score #scan_paralya_lobby_noel switch.data matches 1 run data modify storage switch:maps to_scan.paralya_lobby_noel set value 2b
execute if score #scan_paralya_lobby_noel switch.data matches 1 run scoreboard players set #start_x_paralya_lobby_noel switch.data 40001
execute if score #scan_paralya_lobby_noel switch.data matches 1 run scoreboard players set #start_y_paralya_lobby_noel switch.data 101
execute if score #scan_paralya_lobby_noel switch.data matches 1 run scoreboard players set #start_z_paralya_lobby_noel switch.data 40001
execute if score #scan_paralya_lobby_noel switch.data matches 1 run scoreboard players set #end_x_paralya_lobby_noel switch.data 40199
execute if score #scan_paralya_lobby_noel switch.data matches 1 run scoreboard players set #end_y_paralya_lobby_noel switch.data 263
execute if score #scan_paralya_lobby_noel switch.data matches 1 run scoreboard players set #end_z_paralya_lobby_noel switch.data 40199
execute if score #scan_paralya_lobby_noel switch.data matches 1 run scoreboard players operation #curr_x_paralya_lobby_noel switch.data = #start_x_paralya_lobby_noel switch.data
execute if score #scan_paralya_lobby_noel switch.data matches 1 run scoreboard players operation #curr_y_paralya_lobby_noel switch.data = #start_y_paralya_lobby_noel switch.data
execute if score #scan_paralya_lobby_noel switch.data matches 1 run scoreboard players operation #curr_z_paralya_lobby_noel switch.data = #start_z_paralya_lobby_noel switch.data
execute if score #scan_paralya_lobby_noel switch.data matches 1 run data modify storage switch:doors paralya_lobby_noel set value []

execute if score #scan_paralya_lobby_noel switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_paralya_lobby_noel switch.data matches 30.. summon marker run function switch:maps/survival/paralya_lobby_noel/scan_doors_on_marker

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove 40000 40000 40014 40200
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove 40000 40000 40014 40200

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove 40014 40000 40029 40200
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove 40014 40000 40029 40200

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove 40029 40000 40043 40200
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove 40029 40000 40043 40200

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove 40043 40000 40057 40200
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove 40043 40000 40057 40200

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove 40057 40000 40071 40200
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove 40057 40000 40071 40200

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove 40071 40000 40086 40200
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove 40071 40000 40086 40200

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove 40086 40000 40100 40200
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove 40086 40000 40100 40200

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove 40100 40000 40114 40200
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove 40100 40000 40114 40200

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove 40114 40000 40129 40200
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove 40114 40000 40129 40200

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove 40129 40000 40143 40200
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove 40129 40000 40143 40200

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove 40143 40000 40157 40200
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove 40143 40000 40157 40200

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove 40157 40000 40171 40200
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove 40157 40000 40171 40200

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove 40171 40000 40186 40200
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove 40171 40000 40186 40200

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove 40186 40000 40200 40200
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove 40186 40000 40200 40200

execute if score #scan_paralya_lobby_noel switch.data matches 1321 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"paralya_lobby_noel","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"66","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_paralya_lobby_noel switch.data matches 1321 run data remove storage switch:maps to_scan.paralya_lobby_noel
execute if score #scan_paralya_lobby_noel switch.data matches 1321 run scoreboard players reset #scan_paralya_lobby_noel switch.data

execute if score #scan_paralya_lobby_noel switch.data matches 1.. run schedule function switch:maps/survival/paralya_lobby_noel/scan_doors 1t

