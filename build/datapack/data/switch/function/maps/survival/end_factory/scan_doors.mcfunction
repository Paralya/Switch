
#> switch:maps/survival/end_factory/scan_doors
#
# @within	switch:maps/survival/end_factory/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_end_factory switch.data 1

execute if score #scan_end_factory switch.data matches 1 in minecraft:overworld run forceload add 108000 108000 108020 108129
execute if score #scan_end_factory switch.data matches 1 in switch:game run forceload add 108000 108000 108020 108129

execute if score #scan_end_factory switch.data matches 1 in minecraft:overworld run forceload add 108020 108000 108040 108129
execute if score #scan_end_factory switch.data matches 1 in switch:game run forceload add 108020 108000 108040 108129

execute if score #scan_end_factory switch.data matches 1 in minecraft:overworld run forceload add 108040 108000 108059 108129
execute if score #scan_end_factory switch.data matches 1 in switch:game run forceload add 108040 108000 108059 108129

execute if score #scan_end_factory switch.data matches 1 in minecraft:overworld run forceload add 108059 108000 108079 108129
execute if score #scan_end_factory switch.data matches 1 in switch:game run forceload add 108059 108000 108079 108129

execute if score #scan_end_factory switch.data matches 1 in minecraft:overworld run forceload add 108079 108000 108099 108129
execute if score #scan_end_factory switch.data matches 1 in switch:game run forceload add 108079 108000 108099 108129

execute if score #scan_end_factory switch.data matches 1 in minecraft:overworld run forceload add 108099 108000 108119 108129
execute if score #scan_end_factory switch.data matches 1 in switch:game run forceload add 108099 108000 108119 108129

execute if score #scan_end_factory switch.data matches 1 in minecraft:overworld run forceload add 108119 108000 108138 108129
execute if score #scan_end_factory switch.data matches 1 in switch:game run forceload add 108119 108000 108138 108129

execute if score #scan_end_factory switch.data matches 1 in minecraft:overworld run forceload add 108138 108000 108158 108129
execute if score #scan_end_factory switch.data matches 1 in switch:game run forceload add 108138 108000 108158 108129

execute if score #scan_end_factory switch.data matches 1 in minecraft:overworld run forceload add 108158 108000 108178 108129
execute if score #scan_end_factory switch.data matches 1 in switch:game run forceload add 108158 108000 108178 108129

execute if score #scan_end_factory switch.data matches 1 run data modify storage switch:maps to_scan.end_factory set value 2b
execute if score #scan_end_factory switch.data matches 1 run scoreboard players set #start_x_end_factory switch.data 108001
execute if score #scan_end_factory switch.data matches 1 run scoreboard players set #start_y_end_factory switch.data -62
execute if score #scan_end_factory switch.data matches 1 run scoreboard players set #start_z_end_factory switch.data 108001
execute if score #scan_end_factory switch.data matches 1 run scoreboard players set #end_x_end_factory switch.data 108177
execute if score #scan_end_factory switch.data matches 1 run scoreboard players set #end_y_end_factory switch.data 39
execute if score #scan_end_factory switch.data matches 1 run scoreboard players set #end_z_end_factory switch.data 108128
execute if score #scan_end_factory switch.data matches 1 run scoreboard players operation #curr_x_end_factory switch.data = #start_x_end_factory switch.data
execute if score #scan_end_factory switch.data matches 1 run scoreboard players operation #curr_y_end_factory switch.data = #start_y_end_factory switch.data
execute if score #scan_end_factory switch.data matches 1 run scoreboard players operation #curr_z_end_factory switch.data = #start_z_end_factory switch.data
execute if score #scan_end_factory switch.data matches 1 run data modify storage switch:doors end_factory set value []

execute if score #scan_end_factory switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_end_factory switch.data matches 30.. summon marker run function switch:maps/survival/end_factory/scan_doors_on_marker

execute if score #scan_end_factory switch.data matches 493 in minecraft:overworld run forceload remove 108000 108000 108020 108129
execute if score #scan_end_factory switch.data matches 493 in switch:game run forceload remove 108000 108000 108020 108129

execute if score #scan_end_factory switch.data matches 493 in minecraft:overworld run forceload remove 108020 108000 108040 108129
execute if score #scan_end_factory switch.data matches 493 in switch:game run forceload remove 108020 108000 108040 108129

execute if score #scan_end_factory switch.data matches 493 in minecraft:overworld run forceload remove 108040 108000 108059 108129
execute if score #scan_end_factory switch.data matches 493 in switch:game run forceload remove 108040 108000 108059 108129

execute if score #scan_end_factory switch.data matches 493 in minecraft:overworld run forceload remove 108059 108000 108079 108129
execute if score #scan_end_factory switch.data matches 493 in switch:game run forceload remove 108059 108000 108079 108129

execute if score #scan_end_factory switch.data matches 493 in minecraft:overworld run forceload remove 108079 108000 108099 108129
execute if score #scan_end_factory switch.data matches 493 in switch:game run forceload remove 108079 108000 108099 108129

execute if score #scan_end_factory switch.data matches 493 in minecraft:overworld run forceload remove 108099 108000 108119 108129
execute if score #scan_end_factory switch.data matches 493 in switch:game run forceload remove 108099 108000 108119 108129

execute if score #scan_end_factory switch.data matches 493 in minecraft:overworld run forceload remove 108119 108000 108138 108129
execute if score #scan_end_factory switch.data matches 493 in switch:game run forceload remove 108119 108000 108138 108129

execute if score #scan_end_factory switch.data matches 493 in minecraft:overworld run forceload remove 108138 108000 108158 108129
execute if score #scan_end_factory switch.data matches 493 in switch:game run forceload remove 108138 108000 108158 108129

execute if score #scan_end_factory switch.data matches 493 in minecraft:overworld run forceload remove 108158 108000 108178 108129
execute if score #scan_end_factory switch.data matches 493 in switch:game run forceload remove 108158 108000 108178 108129

execute if score #scan_end_factory switch.data matches 493 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"end_factory","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"24","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_end_factory switch.data matches 493 run data remove storage switch:maps to_scan.end_factory
execute if score #scan_end_factory switch.data matches 493 run scoreboard players reset #scan_end_factory switch.data

execute if score #scan_end_factory switch.data matches 1.. run schedule function switch:maps/survival/end_factory/scan_doors 1t

