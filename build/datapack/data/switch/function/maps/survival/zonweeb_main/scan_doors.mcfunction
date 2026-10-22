
#> switch:maps/survival/zonweeb_main/scan_doors
#
# @within	switch:maps/survival/zonweeb_main/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_zonweeb_main switch.data 1

execute if score #scan_zonweeb_main switch.data matches 1 in minecraft:overworld run forceload add 6000 0 6020 100
execute if score #scan_zonweeb_main switch.data matches 1 in switch:game run forceload add 6000 0 6020 100

execute if score #scan_zonweeb_main switch.data matches 1 in minecraft:overworld run forceload add 6020 0 6040 100
execute if score #scan_zonweeb_main switch.data matches 1 in switch:game run forceload add 6020 0 6040 100

execute if score #scan_zonweeb_main switch.data matches 1 in minecraft:overworld run forceload add 6040 0 6060 100
execute if score #scan_zonweeb_main switch.data matches 1 in switch:game run forceload add 6040 0 6060 100

execute if score #scan_zonweeb_main switch.data matches 1 in minecraft:overworld run forceload add 6060 0 6080 100
execute if score #scan_zonweeb_main switch.data matches 1 in switch:game run forceload add 6060 0 6080 100

execute if score #scan_zonweeb_main switch.data matches 1 in minecraft:overworld run forceload add 6080 0 6100 100
execute if score #scan_zonweeb_main switch.data matches 1 in switch:game run forceload add 6080 0 6100 100

execute if score #scan_zonweeb_main switch.data matches 1 run data modify storage switch:maps to_scan.zonweeb_main set value 2b
execute if score #scan_zonweeb_main switch.data matches 1 run scoreboard players set #start_x_zonweeb_main switch.data 6001
execute if score #scan_zonweeb_main switch.data matches 1 run scoreboard players set #start_y_zonweeb_main switch.data 101
execute if score #scan_zonweeb_main switch.data matches 1 run scoreboard players set #start_z_zonweeb_main switch.data 1
execute if score #scan_zonweeb_main switch.data matches 1 run scoreboard players set #end_x_zonweeb_main switch.data 6099
execute if score #scan_zonweeb_main switch.data matches 1 run scoreboard players set #end_y_zonweeb_main switch.data 143
execute if score #scan_zonweeb_main switch.data matches 1 run scoreboard players set #end_z_zonweeb_main switch.data 99
execute if score #scan_zonweeb_main switch.data matches 1 run scoreboard players operation #curr_x_zonweeb_main switch.data = #start_x_zonweeb_main switch.data
execute if score #scan_zonweeb_main switch.data matches 1 run scoreboard players operation #curr_y_zonweeb_main switch.data = #start_y_zonweeb_main switch.data
execute if score #scan_zonweeb_main switch.data matches 1 run scoreboard players operation #curr_z_zonweeb_main switch.data = #start_z_zonweeb_main switch.data
execute if score #scan_zonweeb_main switch.data matches 1 run data modify storage switch:doors zonweeb_main set value []

execute if score #scan_zonweeb_main switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_zonweeb_main switch.data matches 30.. summon marker run function switch:maps/survival/zonweeb_main/scan_doors_on_marker

execute if score #scan_zonweeb_main switch.data matches 115 in minecraft:overworld run forceload remove 6000 0 6020 100
execute if score #scan_zonweeb_main switch.data matches 115 in switch:game run forceload remove 6000 0 6020 100

execute if score #scan_zonweeb_main switch.data matches 115 in minecraft:overworld run forceload remove 6020 0 6040 100
execute if score #scan_zonweeb_main switch.data matches 115 in switch:game run forceload remove 6020 0 6040 100

execute if score #scan_zonweeb_main switch.data matches 115 in minecraft:overworld run forceload remove 6040 0 6060 100
execute if score #scan_zonweeb_main switch.data matches 115 in switch:game run forceload remove 6040 0 6060 100

execute if score #scan_zonweeb_main switch.data matches 115 in minecraft:overworld run forceload remove 6060 0 6080 100
execute if score #scan_zonweeb_main switch.data matches 115 in switch:game run forceload remove 6060 0 6080 100

execute if score #scan_zonweeb_main switch.data matches 115 in minecraft:overworld run forceload remove 6080 0 6100 100
execute if score #scan_zonweeb_main switch.data matches 115 in switch:game run forceload remove 6080 0 6100 100

execute if score #scan_zonweeb_main switch.data matches 115 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"zonweeb_main","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"5","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_zonweeb_main switch.data matches 115 run data remove storage switch:maps to_scan.zonweeb_main
execute if score #scan_zonweeb_main switch.data matches 115 run scoreboard players reset #scan_zonweeb_main switch.data

execute if score #scan_zonweeb_main switch.data matches 1.. run schedule function switch:maps/survival/zonweeb_main/scan_doors 1t

