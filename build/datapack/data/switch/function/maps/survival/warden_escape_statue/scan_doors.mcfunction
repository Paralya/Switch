
#> switch:maps/survival/warden_escape_statue/scan_doors
#
# @within	switch:maps/survival/warden_escape_statue/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_warden_escape_statue switch.data 1

execute if score #scan_warden_escape_statue switch.data matches 1 in minecraft:overworld run forceload add 0 8000 25 8106
execute if score #scan_warden_escape_statue switch.data matches 1 in switch:game run forceload add 0 8000 25 8106

execute if score #scan_warden_escape_statue switch.data matches 1 in minecraft:overworld run forceload add 25 8000 49 8106
execute if score #scan_warden_escape_statue switch.data matches 1 in switch:game run forceload add 25 8000 49 8106

execute if score #scan_warden_escape_statue switch.data matches 1 in minecraft:overworld run forceload add 49 8000 74 8106
execute if score #scan_warden_escape_statue switch.data matches 1 in switch:game run forceload add 49 8000 74 8106

execute if score #scan_warden_escape_statue switch.data matches 1 in minecraft:overworld run forceload add 74 8000 99 8106
execute if score #scan_warden_escape_statue switch.data matches 1 in switch:game run forceload add 74 8000 99 8106

execute if score #scan_warden_escape_statue switch.data matches 1 in minecraft:overworld run forceload add 99 8000 123 8106
execute if score #scan_warden_escape_statue switch.data matches 1 in switch:game run forceload add 99 8000 123 8106

execute if score #scan_warden_escape_statue switch.data matches 1 in minecraft:overworld run forceload add 123 8000 148 8106
execute if score #scan_warden_escape_statue switch.data matches 1 in switch:game run forceload add 123 8000 148 8106

execute if score #scan_warden_escape_statue switch.data matches 1 run data modify storage switch:maps to_scan.warden_escape_statue set value 2b
execute if score #scan_warden_escape_statue switch.data matches 1 run scoreboard players set #start_x_warden_escape_statue switch.data 1
execute if score #scan_warden_escape_statue switch.data matches 1 run scoreboard players set #start_y_warden_escape_statue switch.data 101
execute if score #scan_warden_escape_statue switch.data matches 1 run scoreboard players set #start_z_warden_escape_statue switch.data 8001
execute if score #scan_warden_escape_statue switch.data matches 1 run scoreboard players set #end_x_warden_escape_statue switch.data 147
execute if score #scan_warden_escape_statue switch.data matches 1 run scoreboard players set #end_y_warden_escape_statue switch.data 222
execute if score #scan_warden_escape_statue switch.data matches 1 run scoreboard players set #end_z_warden_escape_statue switch.data 8105
execute if score #scan_warden_escape_statue switch.data matches 1 run scoreboard players operation #curr_x_warden_escape_statue switch.data = #start_x_warden_escape_statue switch.data
execute if score #scan_warden_escape_statue switch.data matches 1 run scoreboard players operation #curr_y_warden_escape_statue switch.data = #start_y_warden_escape_statue switch.data
execute if score #scan_warden_escape_statue switch.data matches 1 run scoreboard players operation #curr_z_warden_escape_statue switch.data = #start_z_warden_escape_statue switch.data
execute if score #scan_warden_escape_statue switch.data matches 1 run data modify storage switch:doors warden_escape_statue set value []

execute if score #scan_warden_escape_statue switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_warden_escape_statue switch.data matches 30.. summon marker run function switch:maps/survival/warden_escape_statue/scan_doors_on_marker

execute if score #scan_warden_escape_statue switch.data matches 407 in minecraft:overworld run forceload remove 0 8000 25 8106
execute if score #scan_warden_escape_statue switch.data matches 407 in switch:game run forceload remove 0 8000 25 8106

execute if score #scan_warden_escape_statue switch.data matches 407 in minecraft:overworld run forceload remove 25 8000 49 8106
execute if score #scan_warden_escape_statue switch.data matches 407 in switch:game run forceload remove 25 8000 49 8106

execute if score #scan_warden_escape_statue switch.data matches 407 in minecraft:overworld run forceload remove 49 8000 74 8106
execute if score #scan_warden_escape_statue switch.data matches 407 in switch:game run forceload remove 49 8000 74 8106

execute if score #scan_warden_escape_statue switch.data matches 407 in minecraft:overworld run forceload remove 74 8000 99 8106
execute if score #scan_warden_escape_statue switch.data matches 407 in switch:game run forceload remove 74 8000 99 8106

execute if score #scan_warden_escape_statue switch.data matches 407 in minecraft:overworld run forceload remove 99 8000 123 8106
execute if score #scan_warden_escape_statue switch.data matches 407 in switch:game run forceload remove 99 8000 123 8106

execute if score #scan_warden_escape_statue switch.data matches 407 in minecraft:overworld run forceload remove 123 8000 148 8106
execute if score #scan_warden_escape_statue switch.data matches 407 in switch:game run forceload remove 123 8000 148 8106

execute if score #scan_warden_escape_statue switch.data matches 407 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"warden_escape_statue","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"20","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_warden_escape_statue switch.data matches 407 run data remove storage switch:maps to_scan.warden_escape_statue
execute if score #scan_warden_escape_statue switch.data matches 407 run scoreboard players reset #scan_warden_escape_statue switch.data

execute if score #scan_warden_escape_statue switch.data matches 1.. run schedule function switch:maps/survival/warden_escape_statue/scan_doors 1t

