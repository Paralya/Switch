
#> switch:maps/survival/coupdetat/scan_doors
#
# @within	switch:maps/survival/coupdetat/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_coupdetat switch.data 1

execute if score #scan_coupdetat switch.data matches 1 in minecraft:overworld run forceload add 18000 18000 18012 18022
execute if score #scan_coupdetat switch.data matches 1 in switch:game run forceload add 18000 18000 18012 18022

execute if score #scan_coupdetat switch.data matches 1 in minecraft:overworld run forceload add 18012 18000 18023 18022
execute if score #scan_coupdetat switch.data matches 1 in switch:game run forceload add 18012 18000 18023 18022

execute if score #scan_coupdetat switch.data matches 1 run data modify storage switch:maps to_scan.coupdetat set value 2b
execute if score #scan_coupdetat switch.data matches 1 run scoreboard players set #start_x_coupdetat switch.data 18001
execute if score #scan_coupdetat switch.data matches 1 run scoreboard players set #start_y_coupdetat switch.data 101
execute if score #scan_coupdetat switch.data matches 1 run scoreboard players set #start_z_coupdetat switch.data 18001
execute if score #scan_coupdetat switch.data matches 1 run scoreboard players set #end_x_coupdetat switch.data 18022
execute if score #scan_coupdetat switch.data matches 1 run scoreboard players set #end_y_coupdetat switch.data 122
execute if score #scan_coupdetat switch.data matches 1 run scoreboard players set #end_z_coupdetat switch.data 18021
execute if score #scan_coupdetat switch.data matches 1 run scoreboard players operation #curr_x_coupdetat switch.data = #start_x_coupdetat switch.data
execute if score #scan_coupdetat switch.data matches 1 run scoreboard players operation #curr_y_coupdetat switch.data = #start_y_coupdetat switch.data
execute if score #scan_coupdetat switch.data matches 1 run scoreboard players operation #curr_z_coupdetat switch.data = #start_z_coupdetat switch.data
execute if score #scan_coupdetat switch.data matches 1 run data modify storage switch:doors coupdetat set value []

execute if score #scan_coupdetat switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_coupdetat switch.data matches 30.. summon marker run function switch:maps/survival/coupdetat/scan_doors_on_marker

execute if score #scan_coupdetat switch.data matches 33 in minecraft:overworld run forceload remove 18000 18000 18012 18022
execute if score #scan_coupdetat switch.data matches 33 in switch:game run forceload remove 18000 18000 18012 18022

execute if score #scan_coupdetat switch.data matches 33 in minecraft:overworld run forceload remove 18012 18000 18023 18022
execute if score #scan_coupdetat switch.data matches 33 in switch:game run forceload remove 18012 18000 18023 18022

execute if score #scan_coupdetat switch.data matches 33 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"coupdetat","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_coupdetat switch.data matches 33 run data remove storage switch:maps to_scan.coupdetat
execute if score #scan_coupdetat switch.data matches 33 run scoreboard players reset #scan_coupdetat switch.data

execute if score #scan_coupdetat switch.data matches 1.. run schedule function switch:maps/survival/coupdetat/scan_doors 1t

