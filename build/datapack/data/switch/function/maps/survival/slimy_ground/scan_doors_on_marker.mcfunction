
#> switch:maps/survival/slimy_ground/scan_doors_on_marker
#
# @within	switch:maps/survival/slimy_ground/scan_doors
#			switch:maps/survival/slimy_ground/scan_doors_on_marker
#

execute store result entity @s Pos[0] double 1 run scoreboard players get #curr_x_slimy_ground switch.data
execute store result entity @s Pos[1] double 1 run scoreboard players get #curr_y_slimy_ground switch.data
execute store result entity @s Pos[2] double 1 run scoreboard players get #curr_z_slimy_ground switch.data
scoreboard players add #curr_x_slimy_ground switch.data 1
execute if score #curr_x_slimy_ground switch.data > #end_x_slimy_ground switch.data run scoreboard players add #curr_y_slimy_ground switch.data 1
execute if score #curr_x_slimy_ground switch.data > #end_x_slimy_ground switch.data run scoreboard players operation #curr_x_slimy_ground switch.data = #start_x_slimy_ground switch.data
execute if score #curr_y_slimy_ground switch.data > #end_y_slimy_ground switch.data run scoreboard players add #curr_z_slimy_ground switch.data 1
execute if score #curr_y_slimy_ground switch.data > #end_y_slimy_ground switch.data run scoreboard players operation #curr_y_slimy_ground switch.data = #start_y_slimy_ground switch.data
execute at @s if block ~ ~ ~ #minecraft:doors run function switch:maps/add_door_to_storage {name:"slimy_ground",additional_height:0}

scoreboard players remove #blocks_in_loop switch.data 1
execute if score #blocks_in_loop switch.data matches 1.. if score #curr_z_slimy_ground switch.data < #end_z_slimy_ground switch.data run function switch:maps/survival/slimy_ground/scan_doors_on_marker
kill @s

