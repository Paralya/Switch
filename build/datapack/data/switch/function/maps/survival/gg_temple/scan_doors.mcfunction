
#> switch:maps/survival/gg_temple/scan_doors
#
# @within	switch:maps/survival/gg_temple/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_gg_temple switch.data 1

execute if score #scan_gg_temple switch.data matches 1 in minecraft:overworld run forceload add 124083 124001 124103 124046
execute if score #scan_gg_temple switch.data matches 1 in switch:game run forceload add 124083 124001 124103 124046

execute if score #scan_gg_temple switch.data matches 1 in minecraft:overworld run forceload add 124103 124001 124123 124046
execute if score #scan_gg_temple switch.data matches 1 in switch:game run forceload add 124103 124001 124123 124046

execute if score #scan_gg_temple switch.data matches 1 run data modify storage switch:maps to_scan.gg_temple set value 2b
execute if score #scan_gg_temple switch.data matches 1 run scoreboard players set #start_x_gg_temple switch.data 124084
execute if score #scan_gg_temple switch.data matches 1 run scoreboard players set #start_y_gg_temple switch.data 85
execute if score #scan_gg_temple switch.data matches 1 run scoreboard players set #start_z_gg_temple switch.data 124002
execute if score #scan_gg_temple switch.data matches 1 run scoreboard players set #end_x_gg_temple switch.data 124122
execute if score #scan_gg_temple switch.data matches 1 run scoreboard players set #end_y_gg_temple switch.data 135
execute if score #scan_gg_temple switch.data matches 1 run scoreboard players set #end_z_gg_temple switch.data 124045
execute if score #scan_gg_temple switch.data matches 1 run scoreboard players operation #curr_x_gg_temple switch.data = #start_x_gg_temple switch.data
execute if score #scan_gg_temple switch.data matches 1 run scoreboard players operation #curr_y_gg_temple switch.data = #start_y_gg_temple switch.data
execute if score #scan_gg_temple switch.data matches 1 run scoreboard players operation #curr_z_gg_temple switch.data = #start_z_gg_temple switch.data
execute if score #scan_gg_temple switch.data matches 1 run data modify storage switch:doors gg_temple set value []

execute if score #scan_gg_temple switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_gg_temple switch.data matches 30.. summon marker run function switch:maps/survival/gg_temple/scan_doors_on_marker

execute if score #scan_gg_temple switch.data matches 48 in minecraft:overworld run forceload remove 124083 124001 124103 124046
execute if score #scan_gg_temple switch.data matches 48 in switch:game run forceload remove 124083 124001 124103 124046

execute if score #scan_gg_temple switch.data matches 48 in minecraft:overworld run forceload remove 124103 124001 124123 124046
execute if score #scan_gg_temple switch.data matches 48 in switch:game run forceload remove 124103 124001 124123 124046

execute if score #scan_gg_temple switch.data matches 48 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"gg_temple","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"2","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_gg_temple switch.data matches 48 run data remove storage switch:maps to_scan.gg_temple
execute if score #scan_gg_temple switch.data matches 48 run scoreboard players reset #scan_gg_temple switch.data

execute if score #scan_gg_temple switch.data matches 1.. run schedule function switch:maps/survival/gg_temple/scan_doors 1t

