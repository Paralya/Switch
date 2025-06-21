
#> switch:maps/survival/rainbow_road/scan_doors
#
# @within	switch:maps/survival/rainbow_road/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_rainbow_road switch.data 1

execute if score #scan_rainbow_road switch.data matches 1 in minecraft:overworld run forceload add 24000 24000 24017 24137
execute if score #scan_rainbow_road switch.data matches 1 in switch:game run forceload add 24000 24000 24017 24137

execute if score #scan_rainbow_road switch.data matches 1 in minecraft:overworld run forceload add 24017 24000 24035 24137
execute if score #scan_rainbow_road switch.data matches 1 in switch:game run forceload add 24017 24000 24035 24137

execute if score #scan_rainbow_road switch.data matches 1 in minecraft:overworld run forceload add 24035 24000 24052 24137
execute if score #scan_rainbow_road switch.data matches 1 in switch:game run forceload add 24035 24000 24052 24137

execute if score #scan_rainbow_road switch.data matches 1 in minecraft:overworld run forceload add 24052 24000 24070 24137
execute if score #scan_rainbow_road switch.data matches 1 in switch:game run forceload add 24052 24000 24070 24137

execute if score #scan_rainbow_road switch.data matches 1 in minecraft:overworld run forceload add 24070 24000 24087 24137
execute if score #scan_rainbow_road switch.data matches 1 in switch:game run forceload add 24070 24000 24087 24137

execute if score #scan_rainbow_road switch.data matches 1 in minecraft:overworld run forceload add 24087 24000 24105 24137
execute if score #scan_rainbow_road switch.data matches 1 in switch:game run forceload add 24087 24000 24105 24137

execute if score #scan_rainbow_road switch.data matches 1 in minecraft:overworld run forceload add 24105 24000 24122 24137
execute if score #scan_rainbow_road switch.data matches 1 in switch:game run forceload add 24105 24000 24122 24137

execute if score #scan_rainbow_road switch.data matches 1 run data modify storage switch:maps to_scan.rainbow_road set value 2b
execute if score #scan_rainbow_road switch.data matches 1 run scoreboard players set #start_x_rainbow_road switch.data 24001
execute if score #scan_rainbow_road switch.data matches 1 run scoreboard players set #start_y_rainbow_road switch.data 101
execute if score #scan_rainbow_road switch.data matches 1 run scoreboard players set #start_z_rainbow_road switch.data 24001
execute if score #scan_rainbow_road switch.data matches 1 run scoreboard players set #end_x_rainbow_road switch.data 24121
execute if score #scan_rainbow_road switch.data matches 1 run scoreboard players set #end_y_rainbow_road switch.data 165
execute if score #scan_rainbow_road switch.data matches 1 run scoreboard players set #end_z_rainbow_road switch.data 24136
execute if score #scan_rainbow_road switch.data matches 1 run scoreboard players operation #curr_x_rainbow_road switch.data = #start_x_rainbow_road switch.data
execute if score #scan_rainbow_road switch.data matches 1 run scoreboard players operation #curr_y_rainbow_road switch.data = #start_y_rainbow_road switch.data
execute if score #scan_rainbow_road switch.data matches 1 run scoreboard players operation #curr_z_rainbow_road switch.data = #start_z_rainbow_road switch.data
execute if score #scan_rainbow_road switch.data matches 1 run data modify storage switch:doors rainbow_road set value []

execute if score #scan_rainbow_road switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_rainbow_road switch.data matches 30.. summon marker run function switch:maps/survival/rainbow_road/scan_doors_on_marker

execute if score #scan_rainbow_road switch.data matches 244 in minecraft:overworld run forceload remove 24000 24000 24017 24137
execute if score #scan_rainbow_road switch.data matches 244 in switch:game run forceload remove 24000 24000 24017 24137

execute if score #scan_rainbow_road switch.data matches 244 in minecraft:overworld run forceload remove 24017 24000 24035 24137
execute if score #scan_rainbow_road switch.data matches 244 in switch:game run forceload remove 24017 24000 24035 24137

execute if score #scan_rainbow_road switch.data matches 244 in minecraft:overworld run forceload remove 24035 24000 24052 24137
execute if score #scan_rainbow_road switch.data matches 244 in switch:game run forceload remove 24035 24000 24052 24137

execute if score #scan_rainbow_road switch.data matches 244 in minecraft:overworld run forceload remove 24052 24000 24070 24137
execute if score #scan_rainbow_road switch.data matches 244 in switch:game run forceload remove 24052 24000 24070 24137

execute if score #scan_rainbow_road switch.data matches 244 in minecraft:overworld run forceload remove 24070 24000 24087 24137
execute if score #scan_rainbow_road switch.data matches 244 in switch:game run forceload remove 24070 24000 24087 24137

execute if score #scan_rainbow_road switch.data matches 244 in minecraft:overworld run forceload remove 24087 24000 24105 24137
execute if score #scan_rainbow_road switch.data matches 244 in switch:game run forceload remove 24087 24000 24105 24137

execute if score #scan_rainbow_road switch.data matches 244 in minecraft:overworld run forceload remove 24105 24000 24122 24137
execute if score #scan_rainbow_road switch.data matches 244 in switch:game run forceload remove 24105 24000 24122 24137

execute if score #scan_rainbow_road switch.data matches 244 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"rainbow_road","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"12","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_rainbow_road switch.data matches 244 run data remove storage switch:maps to_scan.rainbow_road
execute if score #scan_rainbow_road switch.data matches 244 run scoreboard players reset #scan_rainbow_road switch.data

execute if score #scan_rainbow_road switch.data matches 1.. run schedule function switch:maps/survival/rainbow_road/scan_doors 1t

