
#> switch:maps/survival/bowser_castle/scan_doors
#
# @within	switch:maps/survival/bowser_castle/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_bowser_castle switch.data 1

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 21888 21888 21900 22133
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 21888 21888 21900 22133

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 21900 21888 21912 22133
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 21900 21888 21912 22133

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 21912 21888 21924 22133
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 21912 21888 21924 22133

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 21924 21888 21936 22133
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 21924 21888 21936 22133

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 21936 21888 21947 22133
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 21936 21888 21947 22133

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 21947 21888 21959 22133
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 21947 21888 21959 22133

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 21959 21888 21971 22133
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 21959 21888 21971 22133

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 21971 21888 21983 22133
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 21971 21888 21983 22133

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 21983 21888 21995 22133
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 21983 21888 21995 22133

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 21995 21888 22007 22133
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 21995 21888 22007 22133

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22007 21888 22019 22133
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 22007 21888 22019 22133

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22019 21888 22031 22133
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 22019 21888 22031 22133

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22031 21888 22043 22133
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 22031 21888 22043 22133

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22043 21888 22055 22133
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 22043 21888 22055 22133

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22055 21888 22066 22133
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 22055 21888 22066 22133

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22066 21888 22078 22133
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 22066 21888 22078 22133

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22078 21888 22090 22133
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 22078 21888 22090 22133

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22090 21888 22102 22133
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 22090 21888 22102 22133

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22102 21888 22114 22133
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 22102 21888 22114 22133

execute if score #scan_bowser_castle switch.data matches 1 run data modify storage switch:maps to_scan.bowser_castle set value 2b
execute if score #scan_bowser_castle switch.data matches 1 run scoreboard players set #start_x_bowser_castle switch.data 21889
execute if score #scan_bowser_castle switch.data matches 1 run scoreboard players set #start_y_bowser_castle switch.data 1
execute if score #scan_bowser_castle switch.data matches 1 run scoreboard players set #start_z_bowser_castle switch.data 21889
execute if score #scan_bowser_castle switch.data matches 1 run scoreboard players set #end_x_bowser_castle switch.data 22113
execute if score #scan_bowser_castle switch.data matches 1 run scoreboard players set #end_y_bowser_castle switch.data 80
execute if score #scan_bowser_castle switch.data matches 1 run scoreboard players set #end_z_bowser_castle switch.data 22132
execute if score #scan_bowser_castle switch.data matches 1 run scoreboard players operation #curr_x_bowser_castle switch.data = #start_x_bowser_castle switch.data
execute if score #scan_bowser_castle switch.data matches 1 run scoreboard players operation #curr_y_bowser_castle switch.data = #start_y_bowser_castle switch.data
execute if score #scan_bowser_castle switch.data matches 1 run scoreboard players operation #curr_z_bowser_castle switch.data = #start_z_bowser_castle switch.data
execute if score #scan_bowser_castle switch.data matches 1 run data modify storage switch:doors bowser_castle set value []


execute if score #scan_bowser_castle switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_bowser_castle switch.data matches 30.. summon marker run function switch:maps/survival/bowser_castle/scan_doors_on_marker

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 21888 21888 21900 22133
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 21888 21888 21900 22133

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 21900 21888 21912 22133
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 21900 21888 21912 22133

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 21912 21888 21924 22133
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 21912 21888 21924 22133

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 21924 21888 21936 22133
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 21924 21888 21936 22133

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 21936 21888 21947 22133
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 21936 21888 21947 22133

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 21947 21888 21959 22133
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 21947 21888 21959 22133

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 21959 21888 21971 22133
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 21959 21888 21971 22133

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 21971 21888 21983 22133
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 21971 21888 21983 22133

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 21983 21888 21995 22133
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 21983 21888 21995 22133

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 21995 21888 22007 22133
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 21995 21888 22007 22133

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 22007 21888 22019 22133
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 22007 21888 22019 22133

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 22019 21888 22031 22133
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 22019 21888 22031 22133

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 22031 21888 22043 22133
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 22031 21888 22043 22133

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 22043 21888 22055 22133
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 22043 21888 22055 22133

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 22055 21888 22066 22133
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 22055 21888 22066 22133

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 22066 21888 22078 22133
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 22066 21888 22078 22133

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 22078 21888 22090 22133
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 22078 21888 22090 22133

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 22090 21888 22102 22133
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 22090 21888 22102 22133

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 22102 21888 22114 22133
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 22102 21888 22114 22133

execute if score #scan_bowser_castle switch.data matches 909 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"bowser_castle","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"45","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_bowser_castle switch.data matches 909 run data remove storage switch:maps to_scan.bowser_castle
execute if score #scan_bowser_castle switch.data matches 909 run scoreboard players reset #scan_bowser_castle switch.data

execute if score #scan_bowser_castle switch.data matches 1.. run schedule function switch:maps/survival/bowser_castle/scan_doors 1t

