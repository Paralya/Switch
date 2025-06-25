
#> switch:maps/survival/nature_house/scan_doors_on_marker
#
# @within	switch:maps/survival/nature_house/scan_doors
#			switch:maps/survival/nature_house/scan_doors_on_marker
#

execute store result entity @s Pos[0] double 1 run scoreboard players get #curr_x_nature_house switch.data
execute store result entity @s Pos[1] double 1 run scoreboard players get #curr_y_nature_house switch.data
execute store result entity @s Pos[2] double 1 run scoreboard players get #curr_z_nature_house switch.data
scoreboard players add #curr_x_nature_house switch.data 1
execute if score #curr_x_nature_house switch.data > #end_x_nature_house switch.data run scoreboard players add #curr_y_nature_house switch.data 1
execute if score #curr_x_nature_house switch.data > #end_x_nature_house switch.data run scoreboard players operation #curr_x_nature_house switch.data = #start_x_nature_house switch.data
execute if score #curr_y_nature_house switch.data > #end_y_nature_house switch.data run scoreboard players add #curr_z_nature_house switch.data 1
execute if score #curr_y_nature_house switch.data > #end_y_nature_house switch.data run scoreboard players operation #curr_y_nature_house switch.data = #start_y_nature_house switch.data
execute at @s if block ~ ~ ~ #minecraft:doors run function switch:maps/add_door_to_storage {name:"nature_house",additional_height:0}

scoreboard players remove #blocks_in_loop switch.data 1
execute if score #blocks_in_loop switch.data matches 1.. if score #curr_z_nature_house switch.data < #end_z_nature_house switch.data run function switch:maps/survival/nature_house/scan_doors_on_marker
kill @s

