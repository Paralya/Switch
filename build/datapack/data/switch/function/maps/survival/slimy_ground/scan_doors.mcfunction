
#> switch:maps/survival/slimy_ground/scan_doors
#
# @within	switch:maps/survival/slimy_ground/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_slimy_ground switch.data 1

execute if score #scan_slimy_ground switch.data matches 1 in minecraft:overworld run forceload add 60000 60000 60020 60100
execute if score #scan_slimy_ground switch.data matches 1 in switch:game run forceload add 60000 60000 60020 60100

execute if score #scan_slimy_ground switch.data matches 1 in minecraft:overworld run forceload add 60020 60000 60040 60100
execute if score #scan_slimy_ground switch.data matches 1 in switch:game run forceload add 60020 60000 60040 60100

execute if score #scan_slimy_ground switch.data matches 1 in minecraft:overworld run forceload add 60040 60000 60060 60100
execute if score #scan_slimy_ground switch.data matches 1 in switch:game run forceload add 60040 60000 60060 60100

execute if score #scan_slimy_ground switch.data matches 1 in minecraft:overworld run forceload add 60060 60000 60080 60100
execute if score #scan_slimy_ground switch.data matches 1 in switch:game run forceload add 60060 60000 60080 60100

execute if score #scan_slimy_ground switch.data matches 1 in minecraft:overworld run forceload add 60080 60000 60100 60100
execute if score #scan_slimy_ground switch.data matches 1 in switch:game run forceload add 60080 60000 60100 60100

execute if score #scan_slimy_ground switch.data matches 1 run data modify storage switch:maps to_scan.slimy_ground set value 2b
execute if score #scan_slimy_ground switch.data matches 1 run scoreboard players set #start_x_slimy_ground switch.data 60001
execute if score #scan_slimy_ground switch.data matches 1 run scoreboard players set #start_y_slimy_ground switch.data 101
execute if score #scan_slimy_ground switch.data matches 1 run scoreboard players set #start_z_slimy_ground switch.data 60001
execute if score #scan_slimy_ground switch.data matches 1 run scoreboard players set #end_x_slimy_ground switch.data 60099
execute if score #scan_slimy_ground switch.data matches 1 run scoreboard players set #end_y_slimy_ground switch.data 189
execute if score #scan_slimy_ground switch.data matches 1 run scoreboard players set #end_z_slimy_ground switch.data 60099
execute if score #scan_slimy_ground switch.data matches 1 run scoreboard players operation #curr_x_slimy_ground switch.data = #start_x_slimy_ground switch.data
execute if score #scan_slimy_ground switch.data matches 1 run scoreboard players operation #curr_y_slimy_ground switch.data = #start_y_slimy_ground switch.data
execute if score #scan_slimy_ground switch.data matches 1 run scoreboard players operation #curr_z_slimy_ground switch.data = #start_z_slimy_ground switch.data
execute if score #scan_slimy_ground switch.data matches 1 run data modify storage switch:doors slimy_ground set value []

execute if score #scan_slimy_ground switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_slimy_ground switch.data matches 30.. summon marker run function switch:maps/survival/slimy_ground/scan_doors_on_marker

execute if score #scan_slimy_ground switch.data matches 205 in minecraft:overworld run forceload remove 60000 60000 60020 60100
execute if score #scan_slimy_ground switch.data matches 205 in switch:game run forceload remove 60000 60000 60020 60100

execute if score #scan_slimy_ground switch.data matches 205 in minecraft:overworld run forceload remove 60020 60000 60040 60100
execute if score #scan_slimy_ground switch.data matches 205 in switch:game run forceload remove 60020 60000 60040 60100

execute if score #scan_slimy_ground switch.data matches 205 in minecraft:overworld run forceload remove 60040 60000 60060 60100
execute if score #scan_slimy_ground switch.data matches 205 in switch:game run forceload remove 60040 60000 60060 60100

execute if score #scan_slimy_ground switch.data matches 205 in minecraft:overworld run forceload remove 60060 60000 60080 60100
execute if score #scan_slimy_ground switch.data matches 205 in switch:game run forceload remove 60060 60000 60080 60100

execute if score #scan_slimy_ground switch.data matches 205 in minecraft:overworld run forceload remove 60080 60000 60100 60100
execute if score #scan_slimy_ground switch.data matches 205 in switch:game run forceload remove 60080 60000 60100 60100

execute if score #scan_slimy_ground switch.data matches 205 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"slimy_ground","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"10","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_slimy_ground switch.data matches 205 run data remove storage switch:maps to_scan.slimy_ground
execute if score #scan_slimy_ground switch.data matches 205 run scoreboard players reset #scan_slimy_ground switch.data

execute if score #scan_slimy_ground switch.data matches 1.. run schedule function switch:maps/survival/slimy_ground/scan_doors 1t

