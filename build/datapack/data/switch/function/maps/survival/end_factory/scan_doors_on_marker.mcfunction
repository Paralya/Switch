
#> switch:maps/survival/end_factory/scan_doors_on_marker
#
# @within	switch:maps/survival/end_factory/scan_doors
#			switch:maps/survival/end_factory/scan_doors_on_marker
#

execute store result entity @s Pos[0] double 1 run scoreboard players get #curr_x_end_factory switch.data
execute store result entity @s Pos[1] double 1 run scoreboard players get #curr_y_end_factory switch.data
execute store result entity @s Pos[2] double 1 run scoreboard players get #curr_z_end_factory switch.data
scoreboard players add #curr_x_end_factory switch.data 1
execute if score #curr_x_end_factory switch.data > #end_x_end_factory switch.data run scoreboard players add #curr_y_end_factory switch.data 1
execute if score #curr_x_end_factory switch.data > #end_x_end_factory switch.data run scoreboard players operation #curr_x_end_factory switch.data = #start_x_end_factory switch.data
execute if score #curr_y_end_factory switch.data > #end_y_end_factory switch.data run scoreboard players add #curr_z_end_factory switch.data 1
execute if score #curr_y_end_factory switch.data > #end_y_end_factory switch.data run scoreboard players operation #curr_y_end_factory switch.data = #start_y_end_factory switch.data
execute at @s if block ~ ~ ~ #minecraft:doors run function switch:maps/add_door_to_storage {name:"end_factory",additional_height:163}

scoreboard players remove #blocks_in_loop switch.data 1
execute if score #blocks_in_loop switch.data matches 1.. if score #curr_z_end_factory switch.data < #end_z_end_factory switch.data run function switch:maps/survival/end_factory/scan_doors_on_marker
kill @s
