
#> switch:maps/survival/sumo_lawef/scan_doors
#
# @within	switch:maps/survival/sumo_lawef/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_sumo_lawef switch.data 1

execute if score #scan_sumo_lawef switch.data matches 1 in minecraft:overworld run forceload add 54979 54996 55000 55037
execute if score #scan_sumo_lawef switch.data matches 1 in switch:game run forceload add 54979 54996 55000 55037

execute if score #scan_sumo_lawef switch.data matches 1 in minecraft:overworld run forceload add 55000 54996 55020 55037
execute if score #scan_sumo_lawef switch.data matches 1 in switch:game run forceload add 55000 54996 55020 55037

execute if score #scan_sumo_lawef switch.data matches 1 run data modify storage switch:maps to_scan.sumo_lawef set value 2b
execute if score #scan_sumo_lawef switch.data matches 1 run scoreboard players set #start_x_sumo_lawef switch.data 54980
execute if score #scan_sumo_lawef switch.data matches 1 run scoreboard players set #start_y_sumo_lawef switch.data 1
execute if score #scan_sumo_lawef switch.data matches 1 run scoreboard players set #start_z_sumo_lawef switch.data 54997
execute if score #scan_sumo_lawef switch.data matches 1 run scoreboard players set #end_x_sumo_lawef switch.data 55019
execute if score #scan_sumo_lawef switch.data matches 1 run scoreboard players set #end_y_sumo_lawef switch.data 38
execute if score #scan_sumo_lawef switch.data matches 1 run scoreboard players set #end_z_sumo_lawef switch.data 55036
execute if score #scan_sumo_lawef switch.data matches 1 run scoreboard players operation #curr_x_sumo_lawef switch.data = #start_x_sumo_lawef switch.data
execute if score #scan_sumo_lawef switch.data matches 1 run scoreboard players operation #curr_y_sumo_lawef switch.data = #start_y_sumo_lawef switch.data
execute if score #scan_sumo_lawef switch.data matches 1 run scoreboard players operation #curr_z_sumo_lawef switch.data = #start_z_sumo_lawef switch.data
execute if score #scan_sumo_lawef switch.data matches 1 run data modify storage switch:doors sumo_lawef set value []


execute if score #scan_sumo_lawef switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_sumo_lawef switch.data matches 30.. summon marker run function switch:maps/survival/sumo_lawef/scan_doors_on_marker

execute if score #scan_sumo_lawef switch.data matches 43 in minecraft:overworld run forceload remove 54979 54996 55000 55037
execute if score #scan_sumo_lawef switch.data matches 43 in switch:game run forceload remove 54979 54996 55000 55037

execute if score #scan_sumo_lawef switch.data matches 43 in minecraft:overworld run forceload remove 55000 54996 55020 55037
execute if score #scan_sumo_lawef switch.data matches 43 in switch:game run forceload remove 55000 54996 55020 55037

execute if score #scan_sumo_lawef switch.data matches 43 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"sumo_lawef","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"2","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_sumo_lawef switch.data matches 43 run data remove storage switch:maps to_scan.sumo_lawef
execute if score #scan_sumo_lawef switch.data matches 43 run scoreboard players reset #scan_sumo_lawef switch.data

execute if score #scan_sumo_lawef switch.data matches 1.. run schedule function switch:maps/survival/sumo_lawef/scan_doors 1t

