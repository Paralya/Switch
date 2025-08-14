
#> switch:maps/survival/void_desert/scan_doors
#
# @within	switch:maps/survival/void_desert/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_void_desert switch.data 1

execute if score #scan_void_desert switch.data matches 1 in minecraft:overworld run forceload add 68000 68000 68020 68100
execute if score #scan_void_desert switch.data matches 1 in switch:game run forceload add 68000 68000 68020 68100

execute if score #scan_void_desert switch.data matches 1 in minecraft:overworld run forceload add 68020 68000 68040 68100
execute if score #scan_void_desert switch.data matches 1 in switch:game run forceload add 68020 68000 68040 68100

execute if score #scan_void_desert switch.data matches 1 in minecraft:overworld run forceload add 68040 68000 68060 68100
execute if score #scan_void_desert switch.data matches 1 in switch:game run forceload add 68040 68000 68060 68100

execute if score #scan_void_desert switch.data matches 1 in minecraft:overworld run forceload add 68060 68000 68080 68100
execute if score #scan_void_desert switch.data matches 1 in switch:game run forceload add 68060 68000 68080 68100

execute if score #scan_void_desert switch.data matches 1 in minecraft:overworld run forceload add 68080 68000 68100 68100
execute if score #scan_void_desert switch.data matches 1 in switch:game run forceload add 68080 68000 68100 68100

execute if score #scan_void_desert switch.data matches 1 run data modify storage switch:maps to_scan.void_desert set value 2b
execute if score #scan_void_desert switch.data matches 1 run scoreboard players set #start_x_void_desert switch.data 68001
execute if score #scan_void_desert switch.data matches 1 run scoreboard players set #start_y_void_desert switch.data 101
execute if score #scan_void_desert switch.data matches 1 run scoreboard players set #start_z_void_desert switch.data 68001
execute if score #scan_void_desert switch.data matches 1 run scoreboard players set #end_x_void_desert switch.data 68099
execute if score #scan_void_desert switch.data matches 1 run scoreboard players set #end_y_void_desert switch.data 189
execute if score #scan_void_desert switch.data matches 1 run scoreboard players set #end_z_void_desert switch.data 68099
execute if score #scan_void_desert switch.data matches 1 run scoreboard players operation #curr_x_void_desert switch.data = #start_x_void_desert switch.data
execute if score #scan_void_desert switch.data matches 1 run scoreboard players operation #curr_y_void_desert switch.data = #start_y_void_desert switch.data
execute if score #scan_void_desert switch.data matches 1 run scoreboard players operation #curr_z_void_desert switch.data = #start_z_void_desert switch.data
execute if score #scan_void_desert switch.data matches 1 run data modify storage switch:doors void_desert set value []

execute if score #scan_void_desert switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_void_desert switch.data matches 30.. summon marker run function switch:maps/survival/void_desert/scan_doors_on_marker

execute if score #scan_void_desert switch.data matches 205 in minecraft:overworld run forceload remove 68000 68000 68020 68100
execute if score #scan_void_desert switch.data matches 205 in switch:game run forceload remove 68000 68000 68020 68100

execute if score #scan_void_desert switch.data matches 205 in minecraft:overworld run forceload remove 68020 68000 68040 68100
execute if score #scan_void_desert switch.data matches 205 in switch:game run forceload remove 68020 68000 68040 68100

execute if score #scan_void_desert switch.data matches 205 in minecraft:overworld run forceload remove 68040 68000 68060 68100
execute if score #scan_void_desert switch.data matches 205 in switch:game run forceload remove 68040 68000 68060 68100

execute if score #scan_void_desert switch.data matches 205 in minecraft:overworld run forceload remove 68060 68000 68080 68100
execute if score #scan_void_desert switch.data matches 205 in switch:game run forceload remove 68060 68000 68080 68100

execute if score #scan_void_desert switch.data matches 205 in minecraft:overworld run forceload remove 68080 68000 68100 68100
execute if score #scan_void_desert switch.data matches 205 in switch:game run forceload remove 68080 68000 68100 68100

execute if score #scan_void_desert switch.data matches 205 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"void_desert","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"10","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_void_desert switch.data matches 205 run data remove storage switch:maps to_scan.void_desert
execute if score #scan_void_desert switch.data matches 205 run scoreboard players reset #scan_void_desert switch.data

execute if score #scan_void_desert switch.data matches 1.. run schedule function switch:maps/survival/void_desert/scan_doors 1t

