
#> switch:maps/survival/jn_one_in_the_chamber_2/scan_doors
#
# @within	switch:maps/survival/jn_one_in_the_chamber_2/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_jn_one_in_the_chamber_2 switch.data 1

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 in minecraft:overworld run forceload add 138000 138000 138023 138100
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 in switch:game run forceload add 138000 138000 138023 138100

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 in minecraft:overworld run forceload add 138023 138000 138047 138100
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 in switch:game run forceload add 138023 138000 138047 138100

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 in minecraft:overworld run forceload add 138047 138000 138070 138100
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 in switch:game run forceload add 138047 138000 138070 138100

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 in minecraft:overworld run forceload add 138070 138000 138093 138100
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 in switch:game run forceload add 138070 138000 138093 138100

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 in minecraft:overworld run forceload add 138093 138000 138117 138100
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 in switch:game run forceload add 138093 138000 138117 138100

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 in minecraft:overworld run forceload add 138117 138000 138140 138100
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 in switch:game run forceload add 138117 138000 138140 138100

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 run data modify storage switch:maps to_scan.jn_one_in_the_chamber_2 set value 2b
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 run scoreboard players set #start_x_jn_one_in_the_chamber_2 switch.data 138001
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 run scoreboard players set #start_y_jn_one_in_the_chamber_2 switch.data 1
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 run scoreboard players set #start_z_jn_one_in_the_chamber_2 switch.data 138001
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 run scoreboard players set #end_x_jn_one_in_the_chamber_2 switch.data 138139
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 run scoreboard players set #end_y_jn_one_in_the_chamber_2 switch.data 56
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 run scoreboard players set #end_z_jn_one_in_the_chamber_2 switch.data 138099
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 run scoreboard players operation #curr_x_jn_one_in_the_chamber_2 switch.data = #start_x_jn_one_in_the_chamber_2 switch.data
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 run scoreboard players operation #curr_y_jn_one_in_the_chamber_2 switch.data = #start_y_jn_one_in_the_chamber_2 switch.data
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 run scoreboard players operation #curr_z_jn_one_in_the_chamber_2 switch.data = #start_z_jn_one_in_the_chamber_2 switch.data
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1 run data modify storage switch:doors jn_one_in_the_chamber_2 set value []


execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 30.. summon marker run function switch:maps/survival/jn_one_in_the_chamber_2/scan_doors_on_marker

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 in minecraft:overworld run forceload remove 138000 138000 138023 138100
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 in switch:game run forceload remove 138000 138000 138023 138100

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 in minecraft:overworld run forceload remove 138023 138000 138047 138100
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 in switch:game run forceload remove 138023 138000 138047 138100

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 in minecraft:overworld run forceload remove 138047 138000 138070 138100
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 in switch:game run forceload remove 138047 138000 138070 138100

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 in minecraft:overworld run forceload remove 138070 138000 138093 138100
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 in switch:game run forceload remove 138070 138000 138093 138100

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 in minecraft:overworld run forceload remove 138093 138000 138117 138100
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 in switch:game run forceload remove 138093 138000 138117 138100

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 in minecraft:overworld run forceload remove 138117 138000 138140 138100
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 in switch:game run forceload remove 138117 138000 138140 138100

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"jn_one_in_the_chamber_2","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"9","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 run data remove storage switch:maps to_scan.jn_one_in_the_chamber_2
execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 185 run scoreboard players reset #scan_jn_one_in_the_chamber_2 switch.data

execute if score #scan_jn_one_in_the_chamber_2 switch.data matches 1.. run schedule function switch:maps/survival/jn_one_in_the_chamber_2/scan_doors 1t

