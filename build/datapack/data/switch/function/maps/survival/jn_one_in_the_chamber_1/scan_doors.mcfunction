
#> switch:maps/survival/jn_one_in_the_chamber_1/scan_doors
#
# @within	switch:maps/survival/jn_one_in_the_chamber_1/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_jn_one_in_the_chamber_1 switch.data 1

execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 1 in minecraft:overworld run forceload add 137000 137000 137020 137120
execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 1 in switch:game run forceload add 137000 137000 137020 137120

execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 1 in minecraft:overworld run forceload add 137020 137000 137039 137120
execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 1 in switch:game run forceload add 137020 137000 137039 137120

execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 1 in minecraft:overworld run forceload add 137039 137000 137058 137120
execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 1 in switch:game run forceload add 137039 137000 137058 137120

execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 1 in minecraft:overworld run forceload add 137058 137000 137078 137120
execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 1 in switch:game run forceload add 137058 137000 137078 137120

execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 1 run data modify storage switch:maps to_scan.jn_one_in_the_chamber_1 set value 2b
execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 1 run scoreboard players set #start_x_jn_one_in_the_chamber_1 switch.data 137001
execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 1 run scoreboard players set #start_y_jn_one_in_the_chamber_1 switch.data 101
execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 1 run scoreboard players set #start_z_jn_one_in_the_chamber_1 switch.data 137001
execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 1 run scoreboard players set #end_x_jn_one_in_the_chamber_1 switch.data 137077
execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 1 run scoreboard players set #end_y_jn_one_in_the_chamber_1 switch.data 121
execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 1 run scoreboard players set #end_z_jn_one_in_the_chamber_1 switch.data 137119
execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 1 run scoreboard players operation #curr_x_jn_one_in_the_chamber_1 switch.data = #start_x_jn_one_in_the_chamber_1 switch.data
execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 1 run scoreboard players operation #curr_y_jn_one_in_the_chamber_1 switch.data = #start_y_jn_one_in_the_chamber_1 switch.data
execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 1 run scoreboard players operation #curr_z_jn_one_in_the_chamber_1 switch.data = #start_z_jn_one_in_the_chamber_1 switch.data
execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 1 run data modify storage switch:doors jn_one_in_the_chamber_1 set value []

execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 30.. summon marker run function switch:maps/survival/jn_one_in_the_chamber_1/scan_doors_on_marker

execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 69 in minecraft:overworld run forceload remove 137000 137000 137020 137120
execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 69 in switch:game run forceload remove 137000 137000 137020 137120

execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 69 in minecraft:overworld run forceload remove 137020 137000 137039 137120
execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 69 in switch:game run forceload remove 137020 137000 137039 137120

execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 69 in minecraft:overworld run forceload remove 137039 137000 137058 137120
execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 69 in switch:game run forceload remove 137039 137000 137058 137120

execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 69 in minecraft:overworld run forceload remove 137058 137000 137078 137120
execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 69 in switch:game run forceload remove 137058 137000 137078 137120

execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 69 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"jn_one_in_the_chamber_1","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"3","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 69 run data remove storage switch:maps to_scan.jn_one_in_the_chamber_1
execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 69 run scoreboard players reset #scan_jn_one_in_the_chamber_1 switch.data

execute if score #scan_jn_one_in_the_chamber_1 switch.data matches 1.. run schedule function switch:maps/survival/jn_one_in_the_chamber_1/scan_doors 1t

