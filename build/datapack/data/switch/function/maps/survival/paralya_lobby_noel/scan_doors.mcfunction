
#> switch:maps/survival/paralya_lobby_noel/scan_doors
#
# @within	switch:maps/survival/paralya_lobby_noel/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_paralya_lobby_noel switch.data 1

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add -2000 6000 -1986 6200
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add -2000 6000 -1986 6200

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add -1986 6000 -1971 6200
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add -1986 6000 -1971 6200

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add -1971 6000 -1957 6200
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add -1971 6000 -1957 6200

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add -1957 6000 -1943 6200
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add -1957 6000 -1943 6200

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add -1943 6000 -1929 6200
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add -1943 6000 -1929 6200

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add -1929 6000 -1914 6200
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add -1929 6000 -1914 6200

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add -1914 6000 -1900 6200
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add -1914 6000 -1900 6200

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add -1900 6000 -1886 6200
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add -1900 6000 -1886 6200

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add -1886 6000 -1871 6200
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add -1886 6000 -1871 6200

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add -1871 6000 -1857 6200
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add -1871 6000 -1857 6200

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add -1857 6000 -1843 6200
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add -1857 6000 -1843 6200

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add -1843 6000 -1829 6200
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add -1843 6000 -1829 6200

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add -1829 6000 -1814 6200
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add -1829 6000 -1814 6200

execute if score #scan_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add -1814 6000 -1800 6200
execute if score #scan_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add -1814 6000 -1800 6200

execute if score #scan_paralya_lobby_noel switch.data matches 1 run data modify storage switch:maps to_scan.paralya_lobby_noel set value 2b
execute if score #scan_paralya_lobby_noel switch.data matches 1 run scoreboard players set #start_x_paralya_lobby_noel switch.data -1999
execute if score #scan_paralya_lobby_noel switch.data matches 1 run scoreboard players set #start_y_paralya_lobby_noel switch.data 101
execute if score #scan_paralya_lobby_noel switch.data matches 1 run scoreboard players set #start_z_paralya_lobby_noel switch.data 6001
execute if score #scan_paralya_lobby_noel switch.data matches 1 run scoreboard players set #end_x_paralya_lobby_noel switch.data -1801
execute if score #scan_paralya_lobby_noel switch.data matches 1 run scoreboard players set #end_y_paralya_lobby_noel switch.data 263
execute if score #scan_paralya_lobby_noel switch.data matches 1 run scoreboard players set #end_z_paralya_lobby_noel switch.data 6199
execute if score #scan_paralya_lobby_noel switch.data matches 1 run scoreboard players operation #curr_x_paralya_lobby_noel switch.data = #start_x_paralya_lobby_noel switch.data
execute if score #scan_paralya_lobby_noel switch.data matches 1 run scoreboard players operation #curr_y_paralya_lobby_noel switch.data = #start_y_paralya_lobby_noel switch.data
execute if score #scan_paralya_lobby_noel switch.data matches 1 run scoreboard players operation #curr_z_paralya_lobby_noel switch.data = #start_z_paralya_lobby_noel switch.data
execute if score #scan_paralya_lobby_noel switch.data matches 1 run data modify storage switch:doors paralya_lobby_noel set value []

execute if score #scan_paralya_lobby_noel switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_paralya_lobby_noel switch.data matches 30.. summon marker run function switch:maps/survival/paralya_lobby_noel/scan_doors_on_marker

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove -2000 6000 -1986 6200
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove -2000 6000 -1986 6200

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove -1986 6000 -1971 6200
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove -1986 6000 -1971 6200

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove -1971 6000 -1957 6200
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove -1971 6000 -1957 6200

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove -1957 6000 -1943 6200
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove -1957 6000 -1943 6200

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove -1943 6000 -1929 6200
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove -1943 6000 -1929 6200

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove -1929 6000 -1914 6200
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove -1929 6000 -1914 6200

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove -1914 6000 -1900 6200
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove -1914 6000 -1900 6200

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove -1900 6000 -1886 6200
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove -1900 6000 -1886 6200

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove -1886 6000 -1871 6200
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove -1886 6000 -1871 6200

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove -1871 6000 -1857 6200
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove -1871 6000 -1857 6200

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove -1857 6000 -1843 6200
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove -1857 6000 -1843 6200

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove -1843 6000 -1829 6200
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove -1843 6000 -1829 6200

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove -1829 6000 -1814 6200
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove -1829 6000 -1814 6200

execute if score #scan_paralya_lobby_noel switch.data matches 1321 in minecraft:overworld run forceload remove -1814 6000 -1800 6200
execute if score #scan_paralya_lobby_noel switch.data matches 1321 in switch:game run forceload remove -1814 6000 -1800 6200

execute if score #scan_paralya_lobby_noel switch.data matches 1321 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"paralya_lobby_noel","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"66","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_paralya_lobby_noel switch.data matches 1321 run data remove storage switch:maps to_scan.paralya_lobby_noel
execute if score #scan_paralya_lobby_noel switch.data matches 1321 run scoreboard players reset #scan_paralya_lobby_noel switch.data

execute if score #scan_paralya_lobby_noel switch.data matches 1.. run schedule function switch:maps/survival/paralya_lobby_noel/scan_doors 1t

