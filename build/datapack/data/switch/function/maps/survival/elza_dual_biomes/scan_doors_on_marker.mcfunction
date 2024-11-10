
#> switch:maps/survival/elza_dual_biomes/scan_doors_on_marker
#
# @within	switch:maps/survival/elza_dual_biomes/scan_doors
#			switch:maps/survival/elza_dual_biomes/scan_doors_on_marker
#

execute store result entity @s Pos[0] double 1 run scoreboard players get #curr_x_elza_dual_biomes switch.data
execute store result entity @s Pos[1] double 1 run scoreboard players get #curr_y_elza_dual_biomes switch.data
execute store result entity @s Pos[2] double 1 run scoreboard players get #curr_z_elza_dual_biomes switch.data
scoreboard players add #curr_x_elza_dual_biomes switch.data 1
execute if score #curr_x_elza_dual_biomes switch.data > #end_x_elza_dual_biomes switch.data run scoreboard players add #curr_y_elza_dual_biomes switch.data 1
execute if score #curr_x_elza_dual_biomes switch.data > #end_x_elza_dual_biomes switch.data run scoreboard players operation #curr_x_elza_dual_biomes switch.data = #start_x_elza_dual_biomes switch.data
execute if score #curr_y_elza_dual_biomes switch.data > #end_y_elza_dual_biomes switch.data run scoreboard players add #curr_z_elza_dual_biomes switch.data 1
execute if score #curr_y_elza_dual_biomes switch.data > #end_y_elza_dual_biomes switch.data run scoreboard players operation #curr_y_elza_dual_biomes switch.data = #start_y_elza_dual_biomes switch.data
execute at @s if block ~ ~ ~ #minecraft:doors run function switch:maps/add_door_to_storage {name:"elza_dual_biomes",additional_height:100}

scoreboard players remove #blocks_in_loop switch.data 1
execute if score #blocks_in_loop switch.data matches 1.. if score #curr_z_elza_dual_biomes switch.data < #end_z_elza_dual_biomes switch.data run function switch:maps/survival/elza_dual_biomes/scan_doors_on_marker
kill @s

