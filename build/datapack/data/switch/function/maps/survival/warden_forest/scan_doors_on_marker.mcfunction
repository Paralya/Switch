
#> switch:maps/survival/warden_forest/scan_doors_on_marker
#
# @within	switch:maps/survival/warden_forest/scan_doors
#			switch:maps/survival/warden_forest/scan_doors_on_marker
#

execute store result entity @s Pos[0] double 1 run scoreboard players get #curr_x_warden_forest switch.data
execute store result entity @s Pos[1] double 1 run scoreboard players get #curr_y_warden_forest switch.data
execute store result entity @s Pos[2] double 1 run scoreboard players get #curr_z_warden_forest switch.data
scoreboard players add #curr_x_warden_forest switch.data 1
execute if score #curr_x_warden_forest switch.data > #end_x_warden_forest switch.data run scoreboard players add #curr_y_warden_forest switch.data 1
execute if score #curr_x_warden_forest switch.data > #end_x_warden_forest switch.data run scoreboard players operation #curr_x_warden_forest switch.data = #start_x_warden_forest switch.data
execute if score #curr_y_warden_forest switch.data > #end_y_warden_forest switch.data run scoreboard players add #curr_z_warden_forest switch.data 1
execute if score #curr_y_warden_forest switch.data > #end_y_warden_forest switch.data run scoreboard players operation #curr_y_warden_forest switch.data = #start_y_warden_forest switch.data
execute at @s if block ~ ~ ~ #minecraft:doors run function switch:maps/add_door_to_storage {name:"warden_forest",additional_height:100}

scoreboard players remove #blocks_in_loop switch.data 1
execute if score #blocks_in_loop switch.data matches 1.. if score #curr_z_warden_forest switch.data < #end_z_warden_forest switch.data run function switch:maps/survival/warden_forest/scan_doors_on_marker
kill @s

