
#> switch:maps/survival/arti_box/scan_doors
#
# @within	switch:maps/survival/arti_box/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_arti_box switch.data 1

execute if score #scan_arti_box switch.data matches 1 in minecraft:overworld run forceload add 119000 119000 119024 119047
execute if score #scan_arti_box switch.data matches 1 in switch:game run forceload add 119000 119000 119024 119047

execute if score #scan_arti_box switch.data matches 1 in minecraft:overworld run forceload add 119024 119000 119047 119047
execute if score #scan_arti_box switch.data matches 1 in switch:game run forceload add 119024 119000 119047 119047

execute if score #scan_arti_box switch.data matches 1 run data modify storage switch:maps to_scan.arti_box set value 2b
execute if score #scan_arti_box switch.data matches 1 run scoreboard players set #start_x_arti_box switch.data 119001
execute if score #scan_arti_box switch.data matches 1 run scoreboard players set #start_y_arti_box switch.data 1
execute if score #scan_arti_box switch.data matches 1 run scoreboard players set #start_z_arti_box switch.data 119001
execute if score #scan_arti_box switch.data matches 1 run scoreboard players set #end_x_arti_box switch.data 119046
execute if score #scan_arti_box switch.data matches 1 run scoreboard players set #end_y_arti_box switch.data 33
execute if score #scan_arti_box switch.data matches 1 run scoreboard players set #end_z_arti_box switch.data 119046
execute if score #scan_arti_box switch.data matches 1 run scoreboard players operation #curr_x_arti_box switch.data = #start_x_arti_box switch.data
execute if score #scan_arti_box switch.data matches 1 run scoreboard players operation #curr_y_arti_box switch.data = #start_y_arti_box switch.data
execute if score #scan_arti_box switch.data matches 1 run scoreboard players operation #curr_z_arti_box switch.data = #start_z_arti_box switch.data
execute if score #scan_arti_box switch.data matches 1 run data modify storage switch:doors arti_box set value []

execute if score #scan_arti_box switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_arti_box switch.data matches 30.. summon marker run function switch:maps/survival/arti_box/scan_doors_on_marker

execute if score #scan_arti_box switch.data matches 44 in minecraft:overworld run forceload remove 119000 119000 119024 119047
execute if score #scan_arti_box switch.data matches 44 in switch:game run forceload remove 119000 119000 119024 119047

execute if score #scan_arti_box switch.data matches 44 in minecraft:overworld run forceload remove 119024 119000 119047 119047
execute if score #scan_arti_box switch.data matches 44 in switch:game run forceload remove 119024 119000 119047 119047

execute if score #scan_arti_box switch.data matches 44 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"arti_box","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"2","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_arti_box switch.data matches 44 run data remove storage switch:maps to_scan.arti_box
execute if score #scan_arti_box switch.data matches 44 run scoreboard players reset #scan_arti_box switch.data

execute if score #scan_arti_box switch.data matches 1.. run schedule function switch:maps/survival/arti_box/scan_doors 1t

