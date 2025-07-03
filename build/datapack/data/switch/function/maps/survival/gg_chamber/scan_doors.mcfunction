
#> switch:maps/survival/gg_chamber/scan_doors
#
# @within	switch:maps/survival/gg_chamber/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_gg_chamber switch.data 1

execute if score #scan_gg_chamber switch.data matches 1 in minecraft:overworld run forceload add 124042 124094 124062 124138
execute if score #scan_gg_chamber switch.data matches 1 in switch:game run forceload add 124042 124094 124062 124138

execute if score #scan_gg_chamber switch.data matches 1 in minecraft:overworld run forceload add 124062 124094 124081 124138
execute if score #scan_gg_chamber switch.data matches 1 in switch:game run forceload add 124062 124094 124081 124138

execute if score #scan_gg_chamber switch.data matches 1 run data modify storage switch:maps to_scan.gg_chamber set value 2b
execute if score #scan_gg_chamber switch.data matches 1 run scoreboard players set #start_x_gg_chamber switch.data 124043
execute if score #scan_gg_chamber switch.data matches 1 run scoreboard players set #start_y_gg_chamber switch.data 85
execute if score #scan_gg_chamber switch.data matches 1 run scoreboard players set #start_z_gg_chamber switch.data 124095
execute if score #scan_gg_chamber switch.data matches 1 run scoreboard players set #end_x_gg_chamber switch.data 124080
execute if score #scan_gg_chamber switch.data matches 1 run scoreboard players set #end_y_gg_chamber switch.data 135
execute if score #scan_gg_chamber switch.data matches 1 run scoreboard players set #end_z_gg_chamber switch.data 124137
execute if score #scan_gg_chamber switch.data matches 1 run scoreboard players operation #curr_x_gg_chamber switch.data = #start_x_gg_chamber switch.data
execute if score #scan_gg_chamber switch.data matches 1 run scoreboard players operation #curr_y_gg_chamber switch.data = #start_y_gg_chamber switch.data
execute if score #scan_gg_chamber switch.data matches 1 run scoreboard players operation #curr_z_gg_chamber switch.data = #start_z_gg_chamber switch.data
execute if score #scan_gg_chamber switch.data matches 1 run data modify storage switch:doors gg_chamber set value []

execute if score #scan_gg_chamber switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_gg_chamber switch.data matches 30.. summon marker run function switch:maps/survival/gg_chamber/scan_doors_on_marker

execute if score #scan_gg_chamber switch.data matches 47 in minecraft:overworld run forceload remove 124042 124094 124062 124138
execute if score #scan_gg_chamber switch.data matches 47 in switch:game run forceload remove 124042 124094 124062 124138

execute if score #scan_gg_chamber switch.data matches 47 in minecraft:overworld run forceload remove 124062 124094 124081 124138
execute if score #scan_gg_chamber switch.data matches 47 in switch:game run forceload remove 124062 124094 124081 124138

execute if score #scan_gg_chamber switch.data matches 47 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"gg_chamber","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"2","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_gg_chamber switch.data matches 47 run data remove storage switch:maps to_scan.gg_chamber
execute if score #scan_gg_chamber switch.data matches 47 run scoreboard players reset #scan_gg_chamber switch.data

execute if score #scan_gg_chamber switch.data matches 1.. run schedule function switch:maps/survival/gg_chamber/scan_doors 1t

