
#> switch:maps/survival/shoot_da_sheep/scan_doors
#
# @within	switch:maps/survival/shoot_da_sheep/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_shoot_da_sheep switch.data 1

execute if score #scan_shoot_da_sheep switch.data matches 1 in minecraft:overworld run forceload add 123000 123000 123020 123040
execute if score #scan_shoot_da_sheep switch.data matches 1 in switch:game run forceload add 123000 123000 123020 123040

execute if score #scan_shoot_da_sheep switch.data matches 1 in minecraft:overworld run forceload add 123020 123000 123040 123040
execute if score #scan_shoot_da_sheep switch.data matches 1 in switch:game run forceload add 123020 123000 123040 123040

execute if score #scan_shoot_da_sheep switch.data matches 1 run data modify storage switch:maps to_scan.shoot_da_sheep set value 2b
execute if score #scan_shoot_da_sheep switch.data matches 1 run scoreboard players set #start_x_shoot_da_sheep switch.data 123001
execute if score #scan_shoot_da_sheep switch.data matches 1 run scoreboard players set #start_y_shoot_da_sheep switch.data 101
execute if score #scan_shoot_da_sheep switch.data matches 1 run scoreboard players set #start_z_shoot_da_sheep switch.data 123001
execute if score #scan_shoot_da_sheep switch.data matches 1 run scoreboard players set #end_x_shoot_da_sheep switch.data 123039
execute if score #scan_shoot_da_sheep switch.data matches 1 run scoreboard players set #end_y_shoot_da_sheep switch.data 156
execute if score #scan_shoot_da_sheep switch.data matches 1 run scoreboard players set #end_z_shoot_da_sheep switch.data 123039
execute if score #scan_shoot_da_sheep switch.data matches 1 run scoreboard players operation #curr_x_shoot_da_sheep switch.data = #start_x_shoot_da_sheep switch.data
execute if score #scan_shoot_da_sheep switch.data matches 1 run scoreboard players operation #curr_y_shoot_da_sheep switch.data = #start_y_shoot_da_sheep switch.data
execute if score #scan_shoot_da_sheep switch.data matches 1 run scoreboard players operation #curr_z_shoot_da_sheep switch.data = #start_z_shoot_da_sheep switch.data
execute if score #scan_shoot_da_sheep switch.data matches 1 run data modify storage switch:doors shoot_da_sheep set value []

execute if score #scan_shoot_da_sheep switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_shoot_da_sheep switch.data matches 30.. summon marker run function switch:maps/survival/shoot_da_sheep/scan_doors_on_marker

execute if score #scan_shoot_da_sheep switch.data matches 48 in minecraft:overworld run forceload remove 123000 123000 123020 123040
execute if score #scan_shoot_da_sheep switch.data matches 48 in switch:game run forceload remove 123000 123000 123020 123040

execute if score #scan_shoot_da_sheep switch.data matches 48 in minecraft:overworld run forceload remove 123020 123000 123040 123040
execute if score #scan_shoot_da_sheep switch.data matches 48 in switch:game run forceload remove 123020 123000 123040 123040

execute if score #scan_shoot_da_sheep switch.data matches 48 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"shoot_da_sheep","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"2","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_shoot_da_sheep switch.data matches 48 run data remove storage switch:maps to_scan.shoot_da_sheep
execute if score #scan_shoot_da_sheep switch.data matches 48 run scoreboard players reset #scan_shoot_da_sheep switch.data

execute if score #scan_shoot_da_sheep switch.data matches 1.. run schedule function switch:maps/survival/shoot_da_sheep/scan_doors 1t

