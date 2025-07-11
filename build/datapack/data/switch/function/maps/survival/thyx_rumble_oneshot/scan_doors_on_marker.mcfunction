
#> switch:maps/survival/thyx_rumble_oneshot/scan_doors_on_marker
#
# @within	switch:maps/survival/thyx_rumble_oneshot/scan_doors
#			switch:maps/survival/thyx_rumble_oneshot/scan_doors_on_marker
#

execute store result entity @s Pos[0] double 1 run scoreboard players get #curr_x_thyx_rumble_oneshot switch.data
execute store result entity @s Pos[1] double 1 run scoreboard players get #curr_y_thyx_rumble_oneshot switch.data
execute store result entity @s Pos[2] double 1 run scoreboard players get #curr_z_thyx_rumble_oneshot switch.data
scoreboard players add #curr_x_thyx_rumble_oneshot switch.data 1
execute if score #curr_x_thyx_rumble_oneshot switch.data > #end_x_thyx_rumble_oneshot switch.data run scoreboard players add #curr_y_thyx_rumble_oneshot switch.data 1
execute if score #curr_x_thyx_rumble_oneshot switch.data > #end_x_thyx_rumble_oneshot switch.data run scoreboard players operation #curr_x_thyx_rumble_oneshot switch.data = #start_x_thyx_rumble_oneshot switch.data
execute if score #curr_y_thyx_rumble_oneshot switch.data > #end_y_thyx_rumble_oneshot switch.data run scoreboard players add #curr_z_thyx_rumble_oneshot switch.data 1
execute if score #curr_y_thyx_rumble_oneshot switch.data > #end_y_thyx_rumble_oneshot switch.data run scoreboard players operation #curr_y_thyx_rumble_oneshot switch.data = #start_y_thyx_rumble_oneshot switch.data
execute at @s if block ~ ~ ~ #minecraft:doors run function switch:maps/add_door_to_storage {name:"thyx_rumble_oneshot",additional_height:0}

scoreboard players remove #blocks_in_loop switch.data 1
execute if score #blocks_in_loop switch.data matches 1.. if score #curr_z_thyx_rumble_oneshot switch.data < #end_z_thyx_rumble_oneshot switch.data run function switch:maps/survival/thyx_rumble_oneshot/scan_doors_on_marker
kill @s

