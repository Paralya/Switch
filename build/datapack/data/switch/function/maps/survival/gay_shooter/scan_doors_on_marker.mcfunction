
#> switch:maps/survival/gay_shooter/scan_doors_on_marker
#
# @within	switch:maps/survival/gay_shooter/scan_doors
#			switch:maps/survival/gay_shooter/scan_doors_on_marker
#

execute store result entity @s Pos[0] double 1 run scoreboard players get #curr_x_gay_shooter switch.data
execute store result entity @s Pos[1] double 1 run scoreboard players get #curr_y_gay_shooter switch.data
execute store result entity @s Pos[2] double 1 run scoreboard players get #curr_z_gay_shooter switch.data
scoreboard players add #curr_x_gay_shooter switch.data 1
execute if score #curr_x_gay_shooter switch.data > #end_x_gay_shooter switch.data run scoreboard players add #curr_y_gay_shooter switch.data 1
execute if score #curr_x_gay_shooter switch.data > #end_x_gay_shooter switch.data run scoreboard players operation #curr_x_gay_shooter switch.data = #start_x_gay_shooter switch.data
execute if score #curr_y_gay_shooter switch.data > #end_y_gay_shooter switch.data run scoreboard players add #curr_z_gay_shooter switch.data 1
execute if score #curr_y_gay_shooter switch.data > #end_y_gay_shooter switch.data run scoreboard players operation #curr_y_gay_shooter switch.data = #start_y_gay_shooter switch.data
execute at @s if block ~ ~ ~ #minecraft:doors run function switch:maps/add_door_to_storage {name:"gay_shooter",additional_height:10}

scoreboard players remove #blocks_in_loop switch.data 1
execute if score #blocks_in_loop switch.data matches 1.. if score #curr_z_gay_shooter switch.data < #end_z_gay_shooter switch.data run function switch:maps/survival/gay_shooter/scan_doors_on_marker
kill @s

