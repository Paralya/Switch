
#> switch:maps/survival/lightium_spawn/scan_doors
#
# @within	switch:maps/survival/lightium_spawn/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_lightium_spawn switch.data 1

execute if score #scan_lightium_spawn switch.data matches 1 in minecraft:overworld run forceload add 97000 97000 97018 97129
execute if score #scan_lightium_spawn switch.data matches 1 in switch:game run forceload add 97000 97000 97018 97129

execute if score #scan_lightium_spawn switch.data matches 1 in minecraft:overworld run forceload add 97018 97000 97037 97129
execute if score #scan_lightium_spawn switch.data matches 1 in switch:game run forceload add 97018 97000 97037 97129

execute if score #scan_lightium_spawn switch.data matches 1 in minecraft:overworld run forceload add 97037 97000 97055 97129
execute if score #scan_lightium_spawn switch.data matches 1 in switch:game run forceload add 97037 97000 97055 97129

execute if score #scan_lightium_spawn switch.data matches 1 in minecraft:overworld run forceload add 97055 97000 97074 97129
execute if score #scan_lightium_spawn switch.data matches 1 in switch:game run forceload add 97055 97000 97074 97129

execute if score #scan_lightium_spawn switch.data matches 1 in minecraft:overworld run forceload add 97074 97000 97092 97129
execute if score #scan_lightium_spawn switch.data matches 1 in switch:game run forceload add 97074 97000 97092 97129

execute if score #scan_lightium_spawn switch.data matches 1 in minecraft:overworld run forceload add 97092 97000 97111 97129
execute if score #scan_lightium_spawn switch.data matches 1 in switch:game run forceload add 97092 97000 97111 97129

execute if score #scan_lightium_spawn switch.data matches 1 in minecraft:overworld run forceload add 97111 97000 97129 97129
execute if score #scan_lightium_spawn switch.data matches 1 in switch:game run forceload add 97111 97000 97129 97129

execute if score #scan_lightium_spawn switch.data matches 1 run data modify storage switch:maps to_scan.lightium_spawn set value 2b
execute if score #scan_lightium_spawn switch.data matches 1 run scoreboard players set #start_x_lightium_spawn switch.data 97001
execute if score #scan_lightium_spawn switch.data matches 1 run scoreboard players set #start_y_lightium_spawn switch.data 1
execute if score #scan_lightium_spawn switch.data matches 1 run scoreboard players set #start_z_lightium_spawn switch.data 97001
execute if score #scan_lightium_spawn switch.data matches 1 run scoreboard players set #end_x_lightium_spawn switch.data 97128
execute if score #scan_lightium_spawn switch.data matches 1 run scoreboard players set #end_y_lightium_spawn switch.data 42
execute if score #scan_lightium_spawn switch.data matches 1 run scoreboard players set #end_z_lightium_spawn switch.data 97128
execute if score #scan_lightium_spawn switch.data matches 1 run scoreboard players operation #curr_x_lightium_spawn switch.data = #start_x_lightium_spawn switch.data
execute if score #scan_lightium_spawn switch.data matches 1 run scoreboard players operation #curr_y_lightium_spawn switch.data = #start_y_lightium_spawn switch.data
execute if score #scan_lightium_spawn switch.data matches 1 run scoreboard players operation #curr_z_lightium_spawn switch.data = #start_z_lightium_spawn switch.data
execute if score #scan_lightium_spawn switch.data matches 1 run data modify storage switch:doors lightium_spawn set value []


execute if score #scan_lightium_spawn switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_lightium_spawn switch.data matches 30.. summon marker run function switch:maps/survival/lightium_spawn/scan_doors_on_marker

execute if score #scan_lightium_spawn switch.data matches 168 in minecraft:overworld run forceload remove 97000 97000 97018 97129
execute if score #scan_lightium_spawn switch.data matches 168 in switch:game run forceload remove 97000 97000 97018 97129

execute if score #scan_lightium_spawn switch.data matches 168 in minecraft:overworld run forceload remove 97018 97000 97037 97129
execute if score #scan_lightium_spawn switch.data matches 168 in switch:game run forceload remove 97018 97000 97037 97129

execute if score #scan_lightium_spawn switch.data matches 168 in minecraft:overworld run forceload remove 97037 97000 97055 97129
execute if score #scan_lightium_spawn switch.data matches 168 in switch:game run forceload remove 97037 97000 97055 97129

execute if score #scan_lightium_spawn switch.data matches 168 in minecraft:overworld run forceload remove 97055 97000 97074 97129
execute if score #scan_lightium_spawn switch.data matches 168 in switch:game run forceload remove 97055 97000 97074 97129

execute if score #scan_lightium_spawn switch.data matches 168 in minecraft:overworld run forceload remove 97074 97000 97092 97129
execute if score #scan_lightium_spawn switch.data matches 168 in switch:game run forceload remove 97074 97000 97092 97129

execute if score #scan_lightium_spawn switch.data matches 168 in minecraft:overworld run forceload remove 97092 97000 97111 97129
execute if score #scan_lightium_spawn switch.data matches 168 in switch:game run forceload remove 97092 97000 97111 97129

execute if score #scan_lightium_spawn switch.data matches 168 in minecraft:overworld run forceload remove 97111 97000 97129 97129
execute if score #scan_lightium_spawn switch.data matches 168 in switch:game run forceload remove 97111 97000 97129 97129

execute if score #scan_lightium_spawn switch.data matches 168 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"lightium_spawn","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"8","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_lightium_spawn switch.data matches 168 run data remove storage switch:maps to_scan.lightium_spawn
execute if score #scan_lightium_spawn switch.data matches 168 run scoreboard players reset #scan_lightium_spawn switch.data

execute if score #scan_lightium_spawn switch.data matches 1.. run schedule function switch:maps/survival/lightium_spawn/scan_doors 1t

