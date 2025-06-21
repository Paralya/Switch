
#> switch:maps/survival/plucky_penguins/scan_doors
#
# @within	switch:maps/survival/plucky_penguins/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_plucky_penguins switch.data 1

execute if score #scan_plucky_penguins switch.data matches 1 in minecraft:overworld run forceload add 68000 68000 68012 68031
execute if score #scan_plucky_penguins switch.data matches 1 in switch:game run forceload add 68000 68000 68012 68031

execute if score #scan_plucky_penguins switch.data matches 1 in minecraft:overworld run forceload add 68012 68000 68024 68031
execute if score #scan_plucky_penguins switch.data matches 1 in switch:game run forceload add 68012 68000 68024 68031

execute if score #scan_plucky_penguins switch.data matches 1 run data modify storage switch:maps to_scan.plucky_penguins set value 2b
execute if score #scan_plucky_penguins switch.data matches 1 run scoreboard players set #start_x_plucky_penguins switch.data 68001
execute if score #scan_plucky_penguins switch.data matches 1 run scoreboard players set #start_y_plucky_penguins switch.data 1
execute if score #scan_plucky_penguins switch.data matches 1 run scoreboard players set #start_z_plucky_penguins switch.data 68001
execute if score #scan_plucky_penguins switch.data matches 1 run scoreboard players set #end_x_plucky_penguins switch.data 68023
execute if score #scan_plucky_penguins switch.data matches 1 run scoreboard players set #end_y_plucky_penguins switch.data 19
execute if score #scan_plucky_penguins switch.data matches 1 run scoreboard players set #end_z_plucky_penguins switch.data 68030
execute if score #scan_plucky_penguins switch.data matches 1 run scoreboard players operation #curr_x_plucky_penguins switch.data = #start_x_plucky_penguins switch.data
execute if score #scan_plucky_penguins switch.data matches 1 run scoreboard players operation #curr_y_plucky_penguins switch.data = #start_y_plucky_penguins switch.data
execute if score #scan_plucky_penguins switch.data matches 1 run scoreboard players operation #curr_z_plucky_penguins switch.data = #start_z_plucky_penguins switch.data
execute if score #scan_plucky_penguins switch.data matches 1 run data modify storage switch:doors plucky_penguins set value []

execute if score #scan_plucky_penguins switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_plucky_penguins switch.data matches 30.. summon marker run function switch:maps/survival/plucky_penguins/scan_doors_on_marker

execute if score #scan_plucky_penguins switch.data matches 33 in minecraft:overworld run forceload remove 68000 68000 68012 68031
execute if score #scan_plucky_penguins switch.data matches 33 in switch:game run forceload remove 68000 68000 68012 68031

execute if score #scan_plucky_penguins switch.data matches 33 in minecraft:overworld run forceload remove 68012 68000 68024 68031
execute if score #scan_plucky_penguins switch.data matches 33 in switch:game run forceload remove 68012 68000 68024 68031

execute if score #scan_plucky_penguins switch.data matches 33 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"plucky_penguins","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_plucky_penguins switch.data matches 33 run data remove storage switch:maps to_scan.plucky_penguins
execute if score #scan_plucky_penguins switch.data matches 33 run scoreboard players reset #scan_plucky_penguins switch.data

execute if score #scan_plucky_penguins switch.data matches 1.. run schedule function switch:maps/survival/plucky_penguins/scan_doors 1t

