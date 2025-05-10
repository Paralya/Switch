
#> switch:maps/survival/dark_forest_hills/scan_doors
#
# @within	switch:maps/survival/dark_forest_hills/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_dark_forest_hills switch.data 1

execute if score #scan_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 39000 39000 39013 39221
execute if score #scan_dark_forest_hills switch.data matches 1 in switch:game run forceload add 39000 39000 39013 39221

execute if score #scan_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 39013 39000 39026 39221
execute if score #scan_dark_forest_hills switch.data matches 1 in switch:game run forceload add 39013 39000 39026 39221

execute if score #scan_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 39026 39000 39039 39221
execute if score #scan_dark_forest_hills switch.data matches 1 in switch:game run forceload add 39026 39000 39039 39221

execute if score #scan_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 39039 39000 39052 39221
execute if score #scan_dark_forest_hills switch.data matches 1 in switch:game run forceload add 39039 39000 39052 39221

execute if score #scan_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 39052 39000 39065 39221
execute if score #scan_dark_forest_hills switch.data matches 1 in switch:game run forceload add 39052 39000 39065 39221

execute if score #scan_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 39065 39000 39078 39221
execute if score #scan_dark_forest_hills switch.data matches 1 in switch:game run forceload add 39065 39000 39078 39221

execute if score #scan_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 39078 39000 39091 39221
execute if score #scan_dark_forest_hills switch.data matches 1 in switch:game run forceload add 39078 39000 39091 39221

execute if score #scan_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 39091 39000 39104 39221
execute if score #scan_dark_forest_hills switch.data matches 1 in switch:game run forceload add 39091 39000 39104 39221

execute if score #scan_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 39104 39000 39117 39221
execute if score #scan_dark_forest_hills switch.data matches 1 in switch:game run forceload add 39104 39000 39117 39221

execute if score #scan_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 39117 39000 39130 39221
execute if score #scan_dark_forest_hills switch.data matches 1 in switch:game run forceload add 39117 39000 39130 39221

execute if score #scan_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 39130 39000 39143 39221
execute if score #scan_dark_forest_hills switch.data matches 1 in switch:game run forceload add 39130 39000 39143 39221

execute if score #scan_dark_forest_hills switch.data matches 1 run data modify storage switch:maps to_scan.dark_forest_hills set value 2b
execute if score #scan_dark_forest_hills switch.data matches 1 run scoreboard players set #start_x_dark_forest_hills switch.data 39001
execute if score #scan_dark_forest_hills switch.data matches 1 run scoreboard players set #start_y_dark_forest_hills switch.data 101
execute if score #scan_dark_forest_hills switch.data matches 1 run scoreboard players set #start_z_dark_forest_hills switch.data 39001
execute if score #scan_dark_forest_hills switch.data matches 1 run scoreboard players set #end_x_dark_forest_hills switch.data 39142
execute if score #scan_dark_forest_hills switch.data matches 1 run scoreboard players set #end_y_dark_forest_hills switch.data 169
execute if score #scan_dark_forest_hills switch.data matches 1 run scoreboard players set #end_z_dark_forest_hills switch.data 39220
execute if score #scan_dark_forest_hills switch.data matches 1 run scoreboard players operation #curr_x_dark_forest_hills switch.data = #start_x_dark_forest_hills switch.data
execute if score #scan_dark_forest_hills switch.data matches 1 run scoreboard players operation #curr_y_dark_forest_hills switch.data = #start_y_dark_forest_hills switch.data
execute if score #scan_dark_forest_hills switch.data matches 1 run scoreboard players operation #curr_z_dark_forest_hills switch.data = #start_z_dark_forest_hills switch.data
execute if score #scan_dark_forest_hills switch.data matches 1 run data modify storage switch:doors dark_forest_hills set value []


execute if score #scan_dark_forest_hills switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_dark_forest_hills switch.data matches 30.. summon marker run function switch:maps/survival/dark_forest_hills/scan_doors_on_marker

execute if score #scan_dark_forest_hills switch.data matches 462 in minecraft:overworld run forceload remove 39000 39000 39013 39221
execute if score #scan_dark_forest_hills switch.data matches 462 in switch:game run forceload remove 39000 39000 39013 39221

execute if score #scan_dark_forest_hills switch.data matches 462 in minecraft:overworld run forceload remove 39013 39000 39026 39221
execute if score #scan_dark_forest_hills switch.data matches 462 in switch:game run forceload remove 39013 39000 39026 39221

execute if score #scan_dark_forest_hills switch.data matches 462 in minecraft:overworld run forceload remove 39026 39000 39039 39221
execute if score #scan_dark_forest_hills switch.data matches 462 in switch:game run forceload remove 39026 39000 39039 39221

execute if score #scan_dark_forest_hills switch.data matches 462 in minecraft:overworld run forceload remove 39039 39000 39052 39221
execute if score #scan_dark_forest_hills switch.data matches 462 in switch:game run forceload remove 39039 39000 39052 39221

execute if score #scan_dark_forest_hills switch.data matches 462 in minecraft:overworld run forceload remove 39052 39000 39065 39221
execute if score #scan_dark_forest_hills switch.data matches 462 in switch:game run forceload remove 39052 39000 39065 39221

execute if score #scan_dark_forest_hills switch.data matches 462 in minecraft:overworld run forceload remove 39065 39000 39078 39221
execute if score #scan_dark_forest_hills switch.data matches 462 in switch:game run forceload remove 39065 39000 39078 39221

execute if score #scan_dark_forest_hills switch.data matches 462 in minecraft:overworld run forceload remove 39078 39000 39091 39221
execute if score #scan_dark_forest_hills switch.data matches 462 in switch:game run forceload remove 39078 39000 39091 39221

execute if score #scan_dark_forest_hills switch.data matches 462 in minecraft:overworld run forceload remove 39091 39000 39104 39221
execute if score #scan_dark_forest_hills switch.data matches 462 in switch:game run forceload remove 39091 39000 39104 39221

execute if score #scan_dark_forest_hills switch.data matches 462 in minecraft:overworld run forceload remove 39104 39000 39117 39221
execute if score #scan_dark_forest_hills switch.data matches 462 in switch:game run forceload remove 39104 39000 39117 39221

execute if score #scan_dark_forest_hills switch.data matches 462 in minecraft:overworld run forceload remove 39117 39000 39130 39221
execute if score #scan_dark_forest_hills switch.data matches 462 in switch:game run forceload remove 39117 39000 39130 39221

execute if score #scan_dark_forest_hills switch.data matches 462 in minecraft:overworld run forceload remove 39130 39000 39143 39221
execute if score #scan_dark_forest_hills switch.data matches 462 in switch:game run forceload remove 39130 39000 39143 39221

execute if score #scan_dark_forest_hills switch.data matches 462 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"dark_forest_hills","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"23","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_dark_forest_hills switch.data matches 462 run data remove storage switch:maps to_scan.dark_forest_hills
execute if score #scan_dark_forest_hills switch.data matches 462 run scoreboard players reset #scan_dark_forest_hills switch.data

execute if score #scan_dark_forest_hills switch.data matches 1.. run schedule function switch:maps/survival/dark_forest_hills/scan_doors 1t

