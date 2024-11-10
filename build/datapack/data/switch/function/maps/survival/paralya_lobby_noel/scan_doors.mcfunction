
#> switch:maps/survival/paralya_lobby_noel/scan_doors
#
# @within	switch:maps/survival/paralya_lobby_noel/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_paralya_lobby_noel switch.data 1

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 39900 39900 39914 40100
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 39900 39900 39914 40100

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 39914 39900 39929 40100
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 39914 39900 39929 40100

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 39929 39900 39943 40100
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 39929 39900 39943 40100

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 39943 39900 39957 40100
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 39943 39900 39957 40100

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 39957 39900 39971 40100
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 39957 39900 39971 40100

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 39971 39900 39986 40100
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 39971 39900 39986 40100

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 39986 39900 40000 40100
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 39986 39900 40000 40100

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40000 39900 40014 40100
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40000 39900 40014 40100

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40014 39900 40029 40100
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40014 39900 40029 40100

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40029 39900 40043 40100
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40029 39900 40043 40100

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40043 39900 40057 40100
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40043 39900 40057 40100

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40057 39900 40071 40100
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40057 39900 40071 40100

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40071 39900 40086 40100
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40071 39900 40086 40100

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40086 39900 40100 40100
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40086 39900 40100 40100

execute if score #scan_paralya_lobby_noel switch.data matches 1 run data modify storage switch:maps to_scan.paralya_lobby_noel set value 2b
execute if score #scan_paralya_lobby_noel switch.data matches 1 run scoreboard players set #start_x_paralya_lobby_noel switch.data 39901
execute if score #scan_paralya_lobby_noel switch.data matches 1 run scoreboard players set #start_y_paralya_lobby_noel switch.data -63
execute if score #scan_paralya_lobby_noel switch.data matches 1 run scoreboard players set #start_z_paralya_lobby_noel switch.data 39901
execute if score #scan_paralya_lobby_noel switch.data matches 1 run scoreboard players set #end_x_paralya_lobby_noel switch.data 40099
execute if score #scan_paralya_lobby_noel switch.data matches 1 run scoreboard players set #end_y_paralya_lobby_noel switch.data 99
execute if score #scan_paralya_lobby_noel switch.data matches 1 run scoreboard players set #end_z_paralya_lobby_noel switch.data 40099
execute if score #scan_paralya_lobby_noel switch.data matches 1 run scoreboard players operation #curr_x_paralya_lobby_noel switch.data = #start_x_paralya_lobby_noel switch.data
execute if score #scan_paralya_lobby_noel switch.data matches 1 run scoreboard players operation #curr_y_paralya_lobby_noel switch.data = #start_y_paralya_lobby_noel switch.data
execute if score #scan_paralya_lobby_noel switch.data matches 1 run scoreboard players operation #curr_z_paralya_lobby_noel switch.data = #start_z_paralya_lobby_noel switch.data
execute if score #scan_paralya_lobby_noel switch.data matches 1 run data modify storage switch:doors paralya_lobby_noel set value []


execute if score #scan_paralya_lobby_noel switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_paralya_lobby_noel switch.data matches 30.. summon marker run function switch:maps/survival/paralya_lobby_noel/scan_doors_on_marker

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove 39900 39900 39914 40100
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove 39900 39900 39914 40100

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove 39914 39900 39929 40100
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove 39914 39900 39929 40100

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove 39929 39900 39943 40100
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove 39929 39900 39943 40100

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove 39943 39900 39957 40100
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove 39943 39900 39957 40100

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove 39957 39900 39971 40100
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove 39957 39900 39971 40100

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove 39971 39900 39986 40100
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove 39971 39900 39986 40100

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove 39986 39900 40000 40100
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove 39986 39900 40000 40100

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove 40000 39900 40014 40100
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove 40000 39900 40014 40100

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove 40014 39900 40029 40100
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove 40014 39900 40029 40100

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove 40029 39900 40043 40100
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove 40029 39900 40043 40100

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove 40043 39900 40057 40100
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove 40043 39900 40057 40100

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove 40057 39900 40071 40100
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove 40057 39900 40071 40100

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove 40071 39900 40086 40100
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove 40071 39900 40086 40100

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove 40086 39900 40100 40100
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove 40086 39900 40100 40100

execute if score #scan_paralya_lobby_noel switch.data matches 1321 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"paralya_lobby_noel","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"66","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_paralya_lobby_noel switch.data matches 1321 run data remove storage switch:maps to_scan.paralya_lobby_noel
execute if score #scan_paralya_lobby_noel switch.data matches 1321 run scoreboard players reset #scan_paralya_lobby_noel switch.data

execute if score #scan_paralya_lobby_noel switch.data matches 1.. run schedule function switch:maps/survival/paralya_lobby_noel/scan_doors 1t

