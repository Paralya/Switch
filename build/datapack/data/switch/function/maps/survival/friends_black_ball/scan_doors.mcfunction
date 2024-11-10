
#> switch:maps/survival/friends_black_ball/scan_doors
#
# @within	switch:maps/survival/friends_black_ball/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_friends_black_ball switch.data 1

execute if score #scan_friends_black_ball switch.data matches 1 in minecraft:overworld run forceload add 5934 5933 5952 6067
execute if score #scan_friends_black_ball switch.data matches 1 in switch:game run forceload add 5934 5933 5952 6067

execute if score #scan_friends_black_ball switch.data matches 1 in minecraft:overworld run forceload add 5952 5933 5971 6067
execute if score #scan_friends_black_ball switch.data matches 1 in switch:game run forceload add 5952 5933 5971 6067

execute if score #scan_friends_black_ball switch.data matches 1 in minecraft:overworld run forceload add 5971 5933 5989 6067
execute if score #scan_friends_black_ball switch.data matches 1 in switch:game run forceload add 5971 5933 5989 6067

execute if score #scan_friends_black_ball switch.data matches 1 in minecraft:overworld run forceload add 5989 5933 6008 6067
execute if score #scan_friends_black_ball switch.data matches 1 in switch:game run forceload add 5989 5933 6008 6067

execute if score #scan_friends_black_ball switch.data matches 1 in minecraft:overworld run forceload add 6008 5933 6026 6067
execute if score #scan_friends_black_ball switch.data matches 1 in switch:game run forceload add 6008 5933 6026 6067

execute if score #scan_friends_black_ball switch.data matches 1 in minecraft:overworld run forceload add 6026 5933 6045 6067
execute if score #scan_friends_black_ball switch.data matches 1 in switch:game run forceload add 6026 5933 6045 6067

execute if score #scan_friends_black_ball switch.data matches 1 in minecraft:overworld run forceload add 6045 5933 6063 6067
execute if score #scan_friends_black_ball switch.data matches 1 in switch:game run forceload add 6045 5933 6063 6067

execute if score #scan_friends_black_ball switch.data matches 1 run data modify storage switch:maps to_scan.friends_black_ball set value 2b
execute if score #scan_friends_black_ball switch.data matches 1 run scoreboard players set #start_x_friends_black_ball switch.data 5935
execute if score #scan_friends_black_ball switch.data matches 1 run scoreboard players set #start_y_friends_black_ball switch.data 1
execute if score #scan_friends_black_ball switch.data matches 1 run scoreboard players set #start_z_friends_black_ball switch.data 5934
execute if score #scan_friends_black_ball switch.data matches 1 run scoreboard players set #end_x_friends_black_ball switch.data 6062
execute if score #scan_friends_black_ball switch.data matches 1 run scoreboard players set #end_y_friends_black_ball switch.data 72
execute if score #scan_friends_black_ball switch.data matches 1 run scoreboard players set #end_z_friends_black_ball switch.data 6066
execute if score #scan_friends_black_ball switch.data matches 1 run scoreboard players operation #curr_x_friends_black_ball switch.data = #start_x_friends_black_ball switch.data
execute if score #scan_friends_black_ball switch.data matches 1 run scoreboard players operation #curr_y_friends_black_ball switch.data = #start_y_friends_black_ball switch.data
execute if score #scan_friends_black_ball switch.data matches 1 run scoreboard players operation #curr_z_friends_black_ball switch.data = #start_z_friends_black_ball switch.data
execute if score #scan_friends_black_ball switch.data matches 1 run data modify storage switch:doors friends_black_ball set value []


execute if score #scan_friends_black_ball switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_friends_black_ball switch.data matches 30.. summon marker run function switch:maps/survival/friends_black_ball/scan_doors_on_marker

execute if score #scan_friends_black_ball switch.data matches 276 in minecraft:overworld run forceload remove 5934 5933 5952 6067
execute if score #scan_friends_black_ball switch.data matches 276 in switch:game run forceload remove 5934 5933 5952 6067

execute if score #scan_friends_black_ball switch.data matches 276 in minecraft:overworld run forceload remove 5952 5933 5971 6067
execute if score #scan_friends_black_ball switch.data matches 276 in switch:game run forceload remove 5952 5933 5971 6067

execute if score #scan_friends_black_ball switch.data matches 276 in minecraft:overworld run forceload remove 5971 5933 5989 6067
execute if score #scan_friends_black_ball switch.data matches 276 in switch:game run forceload remove 5971 5933 5989 6067

execute if score #scan_friends_black_ball switch.data matches 276 in minecraft:overworld run forceload remove 5989 5933 6008 6067
execute if score #scan_friends_black_ball switch.data matches 276 in switch:game run forceload remove 5989 5933 6008 6067

execute if score #scan_friends_black_ball switch.data matches 276 in minecraft:overworld run forceload remove 6008 5933 6026 6067
execute if score #scan_friends_black_ball switch.data matches 276 in switch:game run forceload remove 6008 5933 6026 6067

execute if score #scan_friends_black_ball switch.data matches 276 in minecraft:overworld run forceload remove 6026 5933 6045 6067
execute if score #scan_friends_black_ball switch.data matches 276 in switch:game run forceload remove 6026 5933 6045 6067

execute if score #scan_friends_black_ball switch.data matches 276 in minecraft:overworld run forceload remove 6045 5933 6063 6067
execute if score #scan_friends_black_ball switch.data matches 276 in switch:game run forceload remove 6045 5933 6063 6067

execute if score #scan_friends_black_ball switch.data matches 276 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"friends_black_ball","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"13","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_friends_black_ball switch.data matches 276 run data remove storage switch:maps to_scan.friends_black_ball
execute if score #scan_friends_black_ball switch.data matches 276 run scoreboard players reset #scan_friends_black_ball switch.data

execute if score #scan_friends_black_ball switch.data matches 1.. run schedule function switch:maps/survival/friends_black_ball/scan_doors 1t

