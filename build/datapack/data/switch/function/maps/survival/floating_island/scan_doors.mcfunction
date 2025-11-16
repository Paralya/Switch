
#> switch:maps/survival/floating_island/scan_doors
#
# @within	switch:maps/survival/floating_island/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_floating_island switch.data 1

execute if score #scan_floating_island switch.data matches 1 in minecraft:overworld run forceload add 94000 94000 94025 94076
execute if score #scan_floating_island switch.data matches 1 in switch:game run forceload add 94000 94000 94025 94076

execute if score #scan_floating_island switch.data matches 1 in minecraft:overworld run forceload add 94025 94000 94051 94076
execute if score #scan_floating_island switch.data matches 1 in switch:game run forceload add 94025 94000 94051 94076

execute if score #scan_floating_island switch.data matches 1 in minecraft:overworld run forceload add 94051 94000 94076 94076
execute if score #scan_floating_island switch.data matches 1 in switch:game run forceload add 94051 94000 94076 94076

execute if score #scan_floating_island switch.data matches 1 run data modify storage switch:maps to_scan.floating_island set value 2b
execute if score #scan_floating_island switch.data matches 1 run scoreboard players set #start_x_floating_island switch.data 94001
execute if score #scan_floating_island switch.data matches 1 run scoreboard players set #start_y_floating_island switch.data 101
execute if score #scan_floating_island switch.data matches 1 run scoreboard players set #start_z_floating_island switch.data 94001
execute if score #scan_floating_island switch.data matches 1 run scoreboard players set #end_x_floating_island switch.data 94075
execute if score #scan_floating_island switch.data matches 1 run scoreboard players set #end_y_floating_island switch.data 198
execute if score #scan_floating_island switch.data matches 1 run scoreboard players set #end_z_floating_island switch.data 94075
execute if score #scan_floating_island switch.data matches 1 run scoreboard players operation #curr_x_floating_island switch.data = #start_x_floating_island switch.data
execute if score #scan_floating_island switch.data matches 1 run scoreboard players operation #curr_y_floating_island switch.data = #start_y_floating_island switch.data
execute if score #scan_floating_island switch.data matches 1 run scoreboard players operation #curr_z_floating_island switch.data = #start_z_floating_island switch.data
execute if score #scan_floating_island switch.data matches 1 run data modify storage switch:doors floating_island set value []

execute if score #scan_floating_island switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_floating_island switch.data matches 30.. summon marker run function switch:maps/survival/floating_island/scan_doors_on_marker

execute if score #scan_floating_island switch.data matches 141 in minecraft:overworld run forceload remove 94000 94000 94025 94076
execute if score #scan_floating_island switch.data matches 141 in switch:game run forceload remove 94000 94000 94025 94076

execute if score #scan_floating_island switch.data matches 141 in minecraft:overworld run forceload remove 94025 94000 94051 94076
execute if score #scan_floating_island switch.data matches 141 in switch:game run forceload remove 94025 94000 94051 94076

execute if score #scan_floating_island switch.data matches 141 in minecraft:overworld run forceload remove 94051 94000 94076 94076
execute if score #scan_floating_island switch.data matches 141 in switch:game run forceload remove 94051 94000 94076 94076

execute if score #scan_floating_island switch.data matches 141 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"floating_island","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"7","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_floating_island switch.data matches 141 run data remove storage switch:maps to_scan.floating_island
execute if score #scan_floating_island switch.data matches 141 run scoreboard players reset #scan_floating_island switch.data

execute if score #scan_floating_island switch.data matches 1.. run schedule function switch:maps/survival/floating_island/scan_doors 1t

