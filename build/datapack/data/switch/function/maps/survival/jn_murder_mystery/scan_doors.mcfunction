
#> switch:maps/survival/jn_murder_mystery/scan_doors
#
# @within	switch:maps/survival/jn_murder_mystery/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_jn_murder_mystery switch.data 1

execute if score #scan_jn_murder_mystery switch.data matches 1 in minecraft:overworld run forceload add -4000 10000 -3979 10123
execute if score #scan_jn_murder_mystery switch.data matches 1 in switch:game run forceload add -4000 10000 -3979 10123

execute if score #scan_jn_murder_mystery switch.data matches 1 in minecraft:overworld run forceload add -3979 10000 -3957 10123
execute if score #scan_jn_murder_mystery switch.data matches 1 in switch:game run forceload add -3979 10000 -3957 10123

execute if score #scan_jn_murder_mystery switch.data matches 1 in minecraft:overworld run forceload add -3957 10000 -3936 10123
execute if score #scan_jn_murder_mystery switch.data matches 1 in switch:game run forceload add -3957 10000 -3936 10123

execute if score #scan_jn_murder_mystery switch.data matches 1 in minecraft:overworld run forceload add -3936 10000 -3915 10123
execute if score #scan_jn_murder_mystery switch.data matches 1 in switch:game run forceload add -3936 10000 -3915 10123

execute if score #scan_jn_murder_mystery switch.data matches 1 in minecraft:overworld run forceload add -3915 10000 -3894 10123
execute if score #scan_jn_murder_mystery switch.data matches 1 in switch:game run forceload add -3915 10000 -3894 10123

execute if score #scan_jn_murder_mystery switch.data matches 1 in minecraft:overworld run forceload add -3894 10000 -3872 10123
execute if score #scan_jn_murder_mystery switch.data matches 1 in switch:game run forceload add -3894 10000 -3872 10123

execute if score #scan_jn_murder_mystery switch.data matches 1 in minecraft:overworld run forceload add -3872 10000 -3851 10123
execute if score #scan_jn_murder_mystery switch.data matches 1 in switch:game run forceload add -3872 10000 -3851 10123

execute if score #scan_jn_murder_mystery switch.data matches 1 run data modify storage switch:maps to_scan.jn_murder_mystery set value 2b
execute if score #scan_jn_murder_mystery switch.data matches 1 run scoreboard players set #start_x_jn_murder_mystery switch.data -3999
execute if score #scan_jn_murder_mystery switch.data matches 1 run scoreboard players set #start_y_jn_murder_mystery switch.data 101
execute if score #scan_jn_murder_mystery switch.data matches 1 run scoreboard players set #start_z_jn_murder_mystery switch.data 10001
execute if score #scan_jn_murder_mystery switch.data matches 1 run scoreboard players set #end_x_jn_murder_mystery switch.data -3852
execute if score #scan_jn_murder_mystery switch.data matches 1 run scoreboard players set #end_y_jn_murder_mystery switch.data 161
execute if score #scan_jn_murder_mystery switch.data matches 1 run scoreboard players set #end_z_jn_murder_mystery switch.data 10122
execute if score #scan_jn_murder_mystery switch.data matches 1 run scoreboard players operation #curr_x_jn_murder_mystery switch.data = #start_x_jn_murder_mystery switch.data
execute if score #scan_jn_murder_mystery switch.data matches 1 run scoreboard players operation #curr_y_jn_murder_mystery switch.data = #start_y_jn_murder_mystery switch.data
execute if score #scan_jn_murder_mystery switch.data matches 1 run scoreboard players operation #curr_z_jn_murder_mystery switch.data = #start_z_jn_murder_mystery switch.data
execute if score #scan_jn_murder_mystery switch.data matches 1 run data modify storage switch:doors jn_murder_mystery set value []

execute if score #scan_jn_murder_mystery switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_jn_murder_mystery switch.data matches 30.. summon marker run function switch:maps/survival/jn_murder_mystery/scan_doors_on_marker

execute if score #scan_jn_murder_mystery switch.data matches 251 in minecraft:overworld run forceload remove -4000 10000 -3979 10123
execute if score #scan_jn_murder_mystery switch.data matches 251 in switch:game run forceload remove -4000 10000 -3979 10123

execute if score #scan_jn_murder_mystery switch.data matches 251 in minecraft:overworld run forceload remove -3979 10000 -3957 10123
execute if score #scan_jn_murder_mystery switch.data matches 251 in switch:game run forceload remove -3979 10000 -3957 10123

execute if score #scan_jn_murder_mystery switch.data matches 251 in minecraft:overworld run forceload remove -3957 10000 -3936 10123
execute if score #scan_jn_murder_mystery switch.data matches 251 in switch:game run forceload remove -3957 10000 -3936 10123

execute if score #scan_jn_murder_mystery switch.data matches 251 in minecraft:overworld run forceload remove -3936 10000 -3915 10123
execute if score #scan_jn_murder_mystery switch.data matches 251 in switch:game run forceload remove -3936 10000 -3915 10123

execute if score #scan_jn_murder_mystery switch.data matches 251 in minecraft:overworld run forceload remove -3915 10000 -3894 10123
execute if score #scan_jn_murder_mystery switch.data matches 251 in switch:game run forceload remove -3915 10000 -3894 10123

execute if score #scan_jn_murder_mystery switch.data matches 251 in minecraft:overworld run forceload remove -3894 10000 -3872 10123
execute if score #scan_jn_murder_mystery switch.data matches 251 in switch:game run forceload remove -3894 10000 -3872 10123

execute if score #scan_jn_murder_mystery switch.data matches 251 in minecraft:overworld run forceload remove -3872 10000 -3851 10123
execute if score #scan_jn_murder_mystery switch.data matches 251 in switch:game run forceload remove -3872 10000 -3851 10123

execute if score #scan_jn_murder_mystery switch.data matches 251 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"jn_murder_mystery","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"12","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_jn_murder_mystery switch.data matches 251 run data remove storage switch:maps to_scan.jn_murder_mystery
execute if score #scan_jn_murder_mystery switch.data matches 251 run scoreboard players reset #scan_jn_murder_mystery switch.data

execute if score #scan_jn_murder_mystery switch.data matches 1.. run schedule function switch:maps/survival/jn_murder_mystery/scan_doors 1t

