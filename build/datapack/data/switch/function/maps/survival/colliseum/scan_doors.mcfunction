
#> switch:maps/survival/colliseum/scan_doors
#
# @within	switch:maps/survival/colliseum/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_colliseum switch.data 1

execute if score #scan_colliseum switch.data matches 1 in minecraft:overworld run forceload add 59000 59000 59020 59124
execute if score #scan_colliseum switch.data matches 1 in switch:game run forceload add 59000 59000 59020 59124

execute if score #scan_colliseum switch.data matches 1 in minecraft:overworld run forceload add 59020 59000 59040 59124
execute if score #scan_colliseum switch.data matches 1 in switch:game run forceload add 59020 59000 59040 59124

execute if score #scan_colliseum switch.data matches 1 in minecraft:overworld run forceload add 59040 59000 59060 59124
execute if score #scan_colliseum switch.data matches 1 in switch:game run forceload add 59040 59000 59060 59124

execute if score #scan_colliseum switch.data matches 1 in minecraft:overworld run forceload add 59060 59000 59080 59124
execute if score #scan_colliseum switch.data matches 1 in switch:game run forceload add 59060 59000 59080 59124

execute if score #scan_colliseum switch.data matches 1 in minecraft:overworld run forceload add 59080 59000 59100 59124
execute if score #scan_colliseum switch.data matches 1 in switch:game run forceload add 59080 59000 59100 59124

execute if score #scan_colliseum switch.data matches 1 in minecraft:overworld run forceload add 59100 59000 59120 59124
execute if score #scan_colliseum switch.data matches 1 in switch:game run forceload add 59100 59000 59120 59124

execute if score #scan_colliseum switch.data matches 1 in minecraft:overworld run forceload add 59120 59000 59140 59124
execute if score #scan_colliseum switch.data matches 1 in switch:game run forceload add 59120 59000 59140 59124

execute if score #scan_colliseum switch.data matches 1 in minecraft:overworld run forceload add 59140 59000 59160 59124
execute if score #scan_colliseum switch.data matches 1 in switch:game run forceload add 59140 59000 59160 59124

execute if score #scan_colliseum switch.data matches 1 run data modify storage switch:maps to_scan.colliseum set value 2b
execute if score #scan_colliseum switch.data matches 1 run scoreboard players set #start_x_colliseum switch.data 59001
execute if score #scan_colliseum switch.data matches 1 run scoreboard players set #start_y_colliseum switch.data 1
execute if score #scan_colliseum switch.data matches 1 run scoreboard players set #start_z_colliseum switch.data 59001
execute if score #scan_colliseum switch.data matches 1 run scoreboard players set #end_x_colliseum switch.data 59159
execute if score #scan_colliseum switch.data matches 1 run scoreboard players set #end_y_colliseum switch.data 46
execute if score #scan_colliseum switch.data matches 1 run scoreboard players set #end_z_colliseum switch.data 59123
execute if score #scan_colliseum switch.data matches 1 run scoreboard players operation #curr_x_colliseum switch.data = #start_x_colliseum switch.data
execute if score #scan_colliseum switch.data matches 1 run scoreboard players operation #curr_y_colliseum switch.data = #start_y_colliseum switch.data
execute if score #scan_colliseum switch.data matches 1 run scoreboard players operation #curr_z_colliseum switch.data = #start_z_colliseum switch.data
execute if score #scan_colliseum switch.data matches 1 run data modify storage switch:doors colliseum set value []

execute if score #scan_colliseum switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_colliseum switch.data matches 30.. summon marker run function switch:maps/survival/colliseum/scan_doors_on_marker

execute if score #scan_colliseum switch.data matches 210 in minecraft:overworld run forceload remove 59000 59000 59020 59124
execute if score #scan_colliseum switch.data matches 210 in switch:game run forceload remove 59000 59000 59020 59124

execute if score #scan_colliseum switch.data matches 210 in minecraft:overworld run forceload remove 59020 59000 59040 59124
execute if score #scan_colliseum switch.data matches 210 in switch:game run forceload remove 59020 59000 59040 59124

execute if score #scan_colliseum switch.data matches 210 in minecraft:overworld run forceload remove 59040 59000 59060 59124
execute if score #scan_colliseum switch.data matches 210 in switch:game run forceload remove 59040 59000 59060 59124

execute if score #scan_colliseum switch.data matches 210 in minecraft:overworld run forceload remove 59060 59000 59080 59124
execute if score #scan_colliseum switch.data matches 210 in switch:game run forceload remove 59060 59000 59080 59124

execute if score #scan_colliseum switch.data matches 210 in minecraft:overworld run forceload remove 59080 59000 59100 59124
execute if score #scan_colliseum switch.data matches 210 in switch:game run forceload remove 59080 59000 59100 59124

execute if score #scan_colliseum switch.data matches 210 in minecraft:overworld run forceload remove 59100 59000 59120 59124
execute if score #scan_colliseum switch.data matches 210 in switch:game run forceload remove 59100 59000 59120 59124

execute if score #scan_colliseum switch.data matches 210 in minecraft:overworld run forceload remove 59120 59000 59140 59124
execute if score #scan_colliseum switch.data matches 210 in switch:game run forceload remove 59120 59000 59140 59124

execute if score #scan_colliseum switch.data matches 210 in minecraft:overworld run forceload remove 59140 59000 59160 59124
execute if score #scan_colliseum switch.data matches 210 in switch:game run forceload remove 59140 59000 59160 59124

execute if score #scan_colliseum switch.data matches 210 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"colliseum","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"10","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_colliseum switch.data matches 210 run data remove storage switch:maps to_scan.colliseum
execute if score #scan_colliseum switch.data matches 210 run scoreboard players reset #scan_colliseum switch.data

execute if score #scan_colliseum switch.data matches 1.. run schedule function switch:maps/survival/colliseum/scan_doors 1t

