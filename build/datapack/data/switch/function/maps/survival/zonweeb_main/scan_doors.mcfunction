
#> switch:maps/survival/zonweeb_main/scan_doors
#
# @within	switch:maps/survival/zonweeb_main/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_zonweeb_main switch.data 1

execute if score #scan_zonweeb_main switch.data matches 1 in minecraft:overworld run forceload add 31950 31950 31970 32050
execute if score #scan_zonweeb_main switch.data matches 1 in switch:game run forceload add 31950 31950 31970 32050

execute if score #scan_zonweeb_main switch.data matches 1 in minecraft:overworld run forceload add 31970 31950 31990 32050
execute if score #scan_zonweeb_main switch.data matches 1 in switch:game run forceload add 31970 31950 31990 32050

execute if score #scan_zonweeb_main switch.data matches 1 in minecraft:overworld run forceload add 31990 31950 32010 32050
execute if score #scan_zonweeb_main switch.data matches 1 in switch:game run forceload add 31990 31950 32010 32050

execute if score #scan_zonweeb_main switch.data matches 1 in minecraft:overworld run forceload add 32010 31950 32030 32050
execute if score #scan_zonweeb_main switch.data matches 1 in switch:game run forceload add 32010 31950 32030 32050

execute if score #scan_zonweeb_main switch.data matches 1 in minecraft:overworld run forceload add 32030 31950 32050 32050
execute if score #scan_zonweeb_main switch.data matches 1 in switch:game run forceload add 32030 31950 32050 32050

execute if score #scan_zonweeb_main switch.data matches 1 run data modify storage switch:maps to_scan.zonweeb_main set value 2b
execute if score #scan_zonweeb_main switch.data matches 1 run scoreboard players set #start_x_zonweeb_main switch.data 31951
execute if score #scan_zonweeb_main switch.data matches 1 run scoreboard players set #start_y_zonweeb_main switch.data 1
execute if score #scan_zonweeb_main switch.data matches 1 run scoreboard players set #start_z_zonweeb_main switch.data 31951
execute if score #scan_zonweeb_main switch.data matches 1 run scoreboard players set #end_x_zonweeb_main switch.data 32049
execute if score #scan_zonweeb_main switch.data matches 1 run scoreboard players set #end_y_zonweeb_main switch.data 43
execute if score #scan_zonweeb_main switch.data matches 1 run scoreboard players set #end_z_zonweeb_main switch.data 32049
execute if score #scan_zonweeb_main switch.data matches 1 run scoreboard players operation #curr_x_zonweeb_main switch.data = #start_x_zonweeb_main switch.data
execute if score #scan_zonweeb_main switch.data matches 1 run scoreboard players operation #curr_y_zonweeb_main switch.data = #start_y_zonweeb_main switch.data
execute if score #scan_zonweeb_main switch.data matches 1 run scoreboard players operation #curr_z_zonweeb_main switch.data = #start_z_zonweeb_main switch.data
execute if score #scan_zonweeb_main switch.data matches 1 run data modify storage switch:doors zonweeb_main set value []


execute if score #scan_zonweeb_main switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_zonweeb_main switch.data matches 30.. summon marker run function switch:maps/survival/zonweeb_main/scan_doors_on_marker

execute if score #scan_zonweeb_main switch.data matches 115 in minecraft:overworld run forceload remove 31950 31950 31970 32050
execute if score #scan_zonweeb_main switch.data matches 115 in switch:game run forceload remove 31950 31950 31970 32050

execute if score #scan_zonweeb_main switch.data matches 115 in minecraft:overworld run forceload remove 31970 31950 31990 32050
execute if score #scan_zonweeb_main switch.data matches 115 in switch:game run forceload remove 31970 31950 31990 32050

execute if score #scan_zonweeb_main switch.data matches 115 in minecraft:overworld run forceload remove 31990 31950 32010 32050
execute if score #scan_zonweeb_main switch.data matches 115 in switch:game run forceload remove 31990 31950 32010 32050

execute if score #scan_zonweeb_main switch.data matches 115 in minecraft:overworld run forceload remove 32010 31950 32030 32050
execute if score #scan_zonweeb_main switch.data matches 115 in switch:game run forceload remove 32010 31950 32030 32050

execute if score #scan_zonweeb_main switch.data matches 115 in minecraft:overworld run forceload remove 32030 31950 32050 32050
execute if score #scan_zonweeb_main switch.data matches 115 in switch:game run forceload remove 32030 31950 32050 32050

execute if score #scan_zonweeb_main switch.data matches 115 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"zonweeb_main","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"5","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_zonweeb_main switch.data matches 115 run data remove storage switch:maps to_scan.zonweeb_main
execute if score #scan_zonweeb_main switch.data matches 115 run scoreboard players reset #scan_zonweeb_main switch.data

execute if score #scan_zonweeb_main switch.data matches 1.. run schedule function switch:maps/survival/zonweeb_main/scan_doors 1t

