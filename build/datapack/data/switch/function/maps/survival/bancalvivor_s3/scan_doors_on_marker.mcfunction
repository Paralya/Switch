
#> switch:maps/survival/bancalvivor_s3/scan_doors_on_marker
#
# @within	switch:maps/survival/bancalvivor_s3/scan_doors
#			switch:maps/survival/bancalvivor_s3/scan_doors_on_marker
#

execute store result entity @s Pos[0] double 1 run scoreboard players get #curr_x_bancalvivor_s3 switch.data
execute store result entity @s Pos[1] double 1 run scoreboard players get #curr_y_bancalvivor_s3 switch.data
execute store result entity @s Pos[2] double 1 run scoreboard players get #curr_z_bancalvivor_s3 switch.data
scoreboard players add #curr_x_bancalvivor_s3 switch.data 1
execute if score #curr_x_bancalvivor_s3 switch.data > #end_x_bancalvivor_s3 switch.data run scoreboard players add #curr_y_bancalvivor_s3 switch.data 1
execute if score #curr_x_bancalvivor_s3 switch.data > #end_x_bancalvivor_s3 switch.data run scoreboard players operation #curr_x_bancalvivor_s3 switch.data = #start_x_bancalvivor_s3 switch.data
execute if score #curr_y_bancalvivor_s3 switch.data > #end_y_bancalvivor_s3 switch.data run scoreboard players add #curr_z_bancalvivor_s3 switch.data 1
execute if score #curr_y_bancalvivor_s3 switch.data > #end_y_bancalvivor_s3 switch.data run scoreboard players operation #curr_y_bancalvivor_s3 switch.data = #start_y_bancalvivor_s3 switch.data
execute at @s if block ~ ~ ~ #minecraft:doors run function switch:maps/add_door_to_storage {name:"bancalvivor_s3",additional_height:0}

scoreboard players remove #blocks_in_loop switch.data 1
execute if score #blocks_in_loop switch.data matches 1.. if score #curr_z_bancalvivor_s3 switch.data < #end_z_bancalvivor_s3 switch.data run function switch:maps/survival/bancalvivor_s3/scan_doors_on_marker
kill @s

