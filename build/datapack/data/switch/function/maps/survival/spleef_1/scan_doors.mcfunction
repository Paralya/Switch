
#> switch:maps/survival/spleef_1/scan_doors
#
# @within	switch:maps/survival/spleef_1/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_spleef_1 switch.data 1

execute if score #scan_spleef_1 switch.data matches 1 in minecraft:overworld run forceload add 27960 27960 27980 28040
execute if score #scan_spleef_1 switch.data matches 1 in switch:game run forceload add 27960 27960 27980 28040

execute if score #scan_spleef_1 switch.data matches 1 in minecraft:overworld run forceload add 27980 27960 28000 28040
execute if score #scan_spleef_1 switch.data matches 1 in switch:game run forceload add 27980 27960 28000 28040

execute if score #scan_spleef_1 switch.data matches 1 in minecraft:overworld run forceload add 28000 27960 28020 28040
execute if score #scan_spleef_1 switch.data matches 1 in switch:game run forceload add 28000 27960 28020 28040

execute if score #scan_spleef_1 switch.data matches 1 in minecraft:overworld run forceload add 28020 27960 28040 28040
execute if score #scan_spleef_1 switch.data matches 1 in switch:game run forceload add 28020 27960 28040 28040

execute if score #scan_spleef_1 switch.data matches 1 run data modify storage switch:maps to_scan.spleef_1 set value 2b
execute if score #scan_spleef_1 switch.data matches 1 run scoreboard players set #start_x_spleef_1 switch.data 27961
execute if score #scan_spleef_1 switch.data matches 1 run scoreboard players set #start_y_spleef_1 switch.data 62
execute if score #scan_spleef_1 switch.data matches 1 run scoreboard players set #start_z_spleef_1 switch.data 27961
execute if score #scan_spleef_1 switch.data matches 1 run scoreboard players set #end_x_spleef_1 switch.data 28039
execute if score #scan_spleef_1 switch.data matches 1 run scoreboard players set #end_y_spleef_1 switch.data 87
execute if score #scan_spleef_1 switch.data matches 1 run scoreboard players set #end_z_spleef_1 switch.data 28039
execute if score #scan_spleef_1 switch.data matches 1 run scoreboard players operation #curr_x_spleef_1 switch.data = #start_x_spleef_1 switch.data
execute if score #scan_spleef_1 switch.data matches 1 run scoreboard players operation #curr_y_spleef_1 switch.data = #start_y_spleef_1 switch.data
execute if score #scan_spleef_1 switch.data matches 1 run scoreboard players operation #curr_z_spleef_1 switch.data = #start_z_spleef_1 switch.data
execute if score #scan_spleef_1 switch.data matches 1 run data modify storage switch:doors spleef_1 set value []

execute if score #scan_spleef_1 switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_spleef_1 switch.data matches 30.. summon marker run function switch:maps/survival/spleef_1/scan_doors_on_marker

execute if score #scan_spleef_1 switch.data matches 63 in minecraft:overworld run forceload remove 27960 27960 27980 28040
execute if score #scan_spleef_1 switch.data matches 63 in switch:game run forceload remove 27960 27960 27980 28040

execute if score #scan_spleef_1 switch.data matches 63 in minecraft:overworld run forceload remove 27980 27960 28000 28040
execute if score #scan_spleef_1 switch.data matches 63 in switch:game run forceload remove 27980 27960 28000 28040

execute if score #scan_spleef_1 switch.data matches 63 in minecraft:overworld run forceload remove 28000 27960 28020 28040
execute if score #scan_spleef_1 switch.data matches 63 in switch:game run forceload remove 28000 27960 28020 28040

execute if score #scan_spleef_1 switch.data matches 63 in minecraft:overworld run forceload remove 28020 27960 28040 28040
execute if score #scan_spleef_1 switch.data matches 63 in switch:game run forceload remove 28020 27960 28040 28040

execute if score #scan_spleef_1 switch.data matches 63 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"spleef_1","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"3","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_spleef_1 switch.data matches 63 run data remove storage switch:maps to_scan.spleef_1
execute if score #scan_spleef_1 switch.data matches 63 run scoreboard players reset #scan_spleef_1 switch.data

execute if score #scan_spleef_1 switch.data matches 1.. run schedule function switch:maps/survival/spleef_1/scan_doors 1t

