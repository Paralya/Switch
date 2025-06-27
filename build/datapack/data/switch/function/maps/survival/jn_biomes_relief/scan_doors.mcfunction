
#> switch:maps/survival/jn_biomes_relief/scan_doors
#
# @within	switch:maps/survival/jn_biomes_relief/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_jn_biomes_relief switch.data 1

execute if score #scan_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add 141000 141000 141020 141139
execute if score #scan_jn_biomes_relief switch.data matches 1 in switch:game run forceload add 141000 141000 141020 141139

execute if score #scan_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add 141020 141000 141040 141139
execute if score #scan_jn_biomes_relief switch.data matches 1 in switch:game run forceload add 141020 141000 141040 141139

execute if score #scan_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add 141040 141000 141059 141139
execute if score #scan_jn_biomes_relief switch.data matches 1 in switch:game run forceload add 141040 141000 141059 141139

execute if score #scan_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add 141059 141000 141079 141139
execute if score #scan_jn_biomes_relief switch.data matches 1 in switch:game run forceload add 141059 141000 141079 141139

execute if score #scan_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add 141079 141000 141099 141139
execute if score #scan_jn_biomes_relief switch.data matches 1 in switch:game run forceload add 141079 141000 141099 141139

execute if score #scan_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add 141099 141000 141119 141139
execute if score #scan_jn_biomes_relief switch.data matches 1 in switch:game run forceload add 141099 141000 141119 141139

execute if score #scan_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add 141119 141000 141139 141139
execute if score #scan_jn_biomes_relief switch.data matches 1 in switch:game run forceload add 141119 141000 141139 141139

execute if score #scan_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add 141139 141000 141158 141139
execute if score #scan_jn_biomes_relief switch.data matches 1 in switch:game run forceload add 141139 141000 141158 141139

execute if score #scan_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add 141158 141000 141178 141139
execute if score #scan_jn_biomes_relief switch.data matches 1 in switch:game run forceload add 141158 141000 141178 141139

execute if score #scan_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add 141178 141000 141198 141139
execute if score #scan_jn_biomes_relief switch.data matches 1 in switch:game run forceload add 141178 141000 141198 141139

execute if score #scan_jn_biomes_relief switch.data matches 1 run data modify storage switch:maps to_scan.jn_biomes_relief set value 2b
execute if score #scan_jn_biomes_relief switch.data matches 1 run scoreboard players set #start_x_jn_biomes_relief switch.data 141001
execute if score #scan_jn_biomes_relief switch.data matches 1 run scoreboard players set #start_y_jn_biomes_relief switch.data 101
execute if score #scan_jn_biomes_relief switch.data matches 1 run scoreboard players set #start_z_jn_biomes_relief switch.data 141001
execute if score #scan_jn_biomes_relief switch.data matches 1 run scoreboard players set #end_x_jn_biomes_relief switch.data 141197
execute if score #scan_jn_biomes_relief switch.data matches 1 run scoreboard players set #end_y_jn_biomes_relief switch.data 188
execute if score #scan_jn_biomes_relief switch.data matches 1 run scoreboard players set #end_z_jn_biomes_relief switch.data 141138
execute if score #scan_jn_biomes_relief switch.data matches 1 run scoreboard players operation #curr_x_jn_biomes_relief switch.data = #start_x_jn_biomes_relief switch.data
execute if score #scan_jn_biomes_relief switch.data matches 1 run scoreboard players operation #curr_y_jn_biomes_relief switch.data = #start_y_jn_biomes_relief switch.data
execute if score #scan_jn_biomes_relief switch.data matches 1 run scoreboard players operation #curr_z_jn_biomes_relief switch.data = #start_z_jn_biomes_relief switch.data
execute if score #scan_jn_biomes_relief switch.data matches 1 run data modify storage switch:doors jn_biomes_relief set value []

execute if score #scan_jn_biomes_relief switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_jn_biomes_relief switch.data matches 30.. summon marker run function switch:maps/survival/jn_biomes_relief/scan_doors_on_marker

execute if score #scan_jn_biomes_relief switch.data matches 509 in minecraft:overworld run forceload remove 141000 141000 141020 141139
execute if score #scan_jn_biomes_relief switch.data matches 509 in switch:game run forceload remove 141000 141000 141020 141139

execute if score #scan_jn_biomes_relief switch.data matches 509 in minecraft:overworld run forceload remove 141020 141000 141040 141139
execute if score #scan_jn_biomes_relief switch.data matches 509 in switch:game run forceload remove 141020 141000 141040 141139

execute if score #scan_jn_biomes_relief switch.data matches 509 in minecraft:overworld run forceload remove 141040 141000 141059 141139
execute if score #scan_jn_biomes_relief switch.data matches 509 in switch:game run forceload remove 141040 141000 141059 141139

execute if score #scan_jn_biomes_relief switch.data matches 509 in minecraft:overworld run forceload remove 141059 141000 141079 141139
execute if score #scan_jn_biomes_relief switch.data matches 509 in switch:game run forceload remove 141059 141000 141079 141139

execute if score #scan_jn_biomes_relief switch.data matches 509 in minecraft:overworld run forceload remove 141079 141000 141099 141139
execute if score #scan_jn_biomes_relief switch.data matches 509 in switch:game run forceload remove 141079 141000 141099 141139

execute if score #scan_jn_biomes_relief switch.data matches 509 in minecraft:overworld run forceload remove 141099 141000 141119 141139
execute if score #scan_jn_biomes_relief switch.data matches 509 in switch:game run forceload remove 141099 141000 141119 141139

execute if score #scan_jn_biomes_relief switch.data matches 509 in minecraft:overworld run forceload remove 141119 141000 141139 141139
execute if score #scan_jn_biomes_relief switch.data matches 509 in switch:game run forceload remove 141119 141000 141139 141139

execute if score #scan_jn_biomes_relief switch.data matches 509 in minecraft:overworld run forceload remove 141139 141000 141158 141139
execute if score #scan_jn_biomes_relief switch.data matches 509 in switch:game run forceload remove 141139 141000 141158 141139

execute if score #scan_jn_biomes_relief switch.data matches 509 in minecraft:overworld run forceload remove 141158 141000 141178 141139
execute if score #scan_jn_biomes_relief switch.data matches 509 in switch:game run forceload remove 141158 141000 141178 141139

execute if score #scan_jn_biomes_relief switch.data matches 509 in minecraft:overworld run forceload remove 141178 141000 141198 141139
execute if score #scan_jn_biomes_relief switch.data matches 509 in switch:game run forceload remove 141178 141000 141198 141139

execute if score #scan_jn_biomes_relief switch.data matches 509 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"jn_biomes_relief","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"25","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_jn_biomes_relief switch.data matches 509 run data remove storage switch:maps to_scan.jn_biomes_relief
execute if score #scan_jn_biomes_relief switch.data matches 509 run scoreboard players reset #scan_jn_biomes_relief switch.data

execute if score #scan_jn_biomes_relief switch.data matches 1.. run schedule function switch:maps/survival/jn_biomes_relief/scan_doors 1t

