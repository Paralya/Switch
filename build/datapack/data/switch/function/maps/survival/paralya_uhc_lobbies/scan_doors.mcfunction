
#> switch:maps/survival/paralya_uhc_lobbies/scan_doors
#
# @within	switch:maps/survival/paralya_uhc_lobbies/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_paralya_uhc_lobbies switch.data 1

execute if score #scan_paralya_uhc_lobbies switch.data matches 1 in minecraft:overworld run forceload add -10000 -4000 -9978 -3910
execute if score #scan_paralya_uhc_lobbies switch.data matches 1 in switch:game run forceload add -10000 -4000 -9978 -3910

execute if score #scan_paralya_uhc_lobbies switch.data matches 1 in minecraft:overworld run forceload add -9978 -4000 -9955 -3910
execute if score #scan_paralya_uhc_lobbies switch.data matches 1 in switch:game run forceload add -9978 -4000 -9955 -3910

execute if score #scan_paralya_uhc_lobbies switch.data matches 1 in minecraft:overworld run forceload add -9955 -4000 -9932 -3910
execute if score #scan_paralya_uhc_lobbies switch.data matches 1 in switch:game run forceload add -9955 -4000 -9932 -3910

execute if score #scan_paralya_uhc_lobbies switch.data matches 1 in minecraft:overworld run forceload add -9932 -4000 -9910 -3910
execute if score #scan_paralya_uhc_lobbies switch.data matches 1 in switch:game run forceload add -9932 -4000 -9910 -3910

execute if score #scan_paralya_uhc_lobbies switch.data matches 1 run data modify storage switch:maps to_scan.paralya_uhc_lobbies set value 2b
execute if score #scan_paralya_uhc_lobbies switch.data matches 1 run scoreboard players set #start_x_paralya_uhc_lobbies switch.data -9999
execute if score #scan_paralya_uhc_lobbies switch.data matches 1 run scoreboard players set #start_y_paralya_uhc_lobbies switch.data 101
execute if score #scan_paralya_uhc_lobbies switch.data matches 1 run scoreboard players set #start_z_paralya_uhc_lobbies switch.data -3999
execute if score #scan_paralya_uhc_lobbies switch.data matches 1 run scoreboard players set #end_x_paralya_uhc_lobbies switch.data -9911
execute if score #scan_paralya_uhc_lobbies switch.data matches 1 run scoreboard players set #end_y_paralya_uhc_lobbies switch.data 192
execute if score #scan_paralya_uhc_lobbies switch.data matches 1 run scoreboard players set #end_z_paralya_uhc_lobbies switch.data -3911
execute if score #scan_paralya_uhc_lobbies switch.data matches 1 run scoreboard players operation #curr_x_paralya_uhc_lobbies switch.data = #start_x_paralya_uhc_lobbies switch.data
execute if score #scan_paralya_uhc_lobbies switch.data matches 1 run scoreboard players operation #curr_y_paralya_uhc_lobbies switch.data = #start_y_paralya_uhc_lobbies switch.data
execute if score #scan_paralya_uhc_lobbies switch.data matches 1 run scoreboard players operation #curr_z_paralya_uhc_lobbies switch.data = #start_z_paralya_uhc_lobbies switch.data
execute if score #scan_paralya_uhc_lobbies switch.data matches 1 run data modify storage switch:doors paralya_uhc_lobbies set value []

execute if score #scan_paralya_uhc_lobbies switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_paralya_uhc_lobbies switch.data matches 30.. summon marker run function switch:maps/survival/paralya_uhc_lobbies/scan_doors_on_marker

execute if score #scan_paralya_uhc_lobbies switch.data matches 176 in minecraft:overworld run forceload remove -10000 -4000 -9978 -3910
execute if score #scan_paralya_uhc_lobbies switch.data matches 176 in switch:game run forceload remove -10000 -4000 -9978 -3910

execute if score #scan_paralya_uhc_lobbies switch.data matches 176 in minecraft:overworld run forceload remove -9978 -4000 -9955 -3910
execute if score #scan_paralya_uhc_lobbies switch.data matches 176 in switch:game run forceload remove -9978 -4000 -9955 -3910

execute if score #scan_paralya_uhc_lobbies switch.data matches 176 in minecraft:overworld run forceload remove -9955 -4000 -9932 -3910
execute if score #scan_paralya_uhc_lobbies switch.data matches 176 in switch:game run forceload remove -9955 -4000 -9932 -3910

execute if score #scan_paralya_uhc_lobbies switch.data matches 176 in minecraft:overworld run forceload remove -9932 -4000 -9910 -3910
execute if score #scan_paralya_uhc_lobbies switch.data matches 176 in switch:game run forceload remove -9932 -4000 -9910 -3910

execute if score #scan_paralya_uhc_lobbies switch.data matches 176 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"paralya_uhc_lobbies","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"8","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_paralya_uhc_lobbies switch.data matches 176 run data remove storage switch:maps to_scan.paralya_uhc_lobbies
execute if score #scan_paralya_uhc_lobbies switch.data matches 176 run scoreboard players reset #scan_paralya_uhc_lobbies switch.data

execute if score #scan_paralya_uhc_lobbies switch.data matches 1.. run schedule function switch:maps/survival/paralya_uhc_lobbies/scan_doors 1t

