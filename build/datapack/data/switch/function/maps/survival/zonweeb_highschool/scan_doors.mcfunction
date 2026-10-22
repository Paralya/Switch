
#> switch:maps/survival/zonweeb_highschool/scan_doors
#
# @within	switch:maps/survival/zonweeb_highschool/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_zonweeb_highschool switch.data 1

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add -6000 -8000 -5988 -7782
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add -6000 -8000 -5988 -7782

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add -5988 -8000 -5975 -7782
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add -5988 -8000 -5975 -7782

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add -5975 -8000 -5962 -7782
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add -5975 -8000 -5962 -7782

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add -5962 -8000 -5950 -7782
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add -5962 -8000 -5950 -7782

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add -5950 -8000 -5938 -7782
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add -5950 -8000 -5938 -7782

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add -5938 -8000 -5925 -7782
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add -5938 -8000 -5925 -7782

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add -5925 -8000 -5912 -7782
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add -5925 -8000 -5912 -7782

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add -5912 -8000 -5900 -7782
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add -5912 -8000 -5900 -7782

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add -5900 -8000 -5888 -7782
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add -5900 -8000 -5888 -7782

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add -5888 -8000 -5875 -7782
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add -5888 -8000 -5875 -7782

execute if score #scan_zonweeb_highschool switch.data matches 1 run data modify storage switch:maps to_scan.zonweeb_highschool set value 2b
execute if score #scan_zonweeb_highschool switch.data matches 1 run scoreboard players set #start_x_zonweeb_highschool switch.data -5999
execute if score #scan_zonweeb_highschool switch.data matches 1 run scoreboard players set #start_y_zonweeb_highschool switch.data 101
execute if score #scan_zonweeb_highschool switch.data matches 1 run scoreboard players set #start_z_zonweeb_highschool switch.data -7999
execute if score #scan_zonweeb_highschool switch.data matches 1 run scoreboard players set #end_x_zonweeb_highschool switch.data -5876
execute if score #scan_zonweeb_highschool switch.data matches 1 run scoreboard players set #end_y_zonweeb_highschool switch.data 157
execute if score #scan_zonweeb_highschool switch.data matches 1 run scoreboard players set #end_z_zonweeb_highschool switch.data -7783
execute if score #scan_zonweeb_highschool switch.data matches 1 run scoreboard players operation #curr_x_zonweeb_highschool switch.data = #start_x_zonweeb_highschool switch.data
execute if score #scan_zonweeb_highschool switch.data matches 1 run scoreboard players operation #curr_y_zonweeb_highschool switch.data = #start_y_zonweeb_highschool switch.data
execute if score #scan_zonweeb_highschool switch.data matches 1 run scoreboard players operation #curr_z_zonweeb_highschool switch.data = #start_z_zonweeb_highschool switch.data
execute if score #scan_zonweeb_highschool switch.data matches 1 run data modify storage switch:doors zonweeb_highschool set value []

execute if score #scan_zonweeb_highschool switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_zonweeb_highschool switch.data matches 30.. summon marker run function switch:maps/survival/zonweeb_highschool/scan_doors_on_marker

execute if score #scan_zonweeb_highschool switch.data matches 337 in minecraft:overworld run forceload remove -6000 -8000 -5988 -7782
execute if score #scan_zonweeb_highschool switch.data matches 337 in switch:game run forceload remove -6000 -8000 -5988 -7782

execute if score #scan_zonweeb_highschool switch.data matches 337 in minecraft:overworld run forceload remove -5988 -8000 -5975 -7782
execute if score #scan_zonweeb_highschool switch.data matches 337 in switch:game run forceload remove -5988 -8000 -5975 -7782

execute if score #scan_zonweeb_highschool switch.data matches 337 in minecraft:overworld run forceload remove -5975 -8000 -5962 -7782
execute if score #scan_zonweeb_highschool switch.data matches 337 in switch:game run forceload remove -5975 -8000 -5962 -7782

execute if score #scan_zonweeb_highschool switch.data matches 337 in minecraft:overworld run forceload remove -5962 -8000 -5950 -7782
execute if score #scan_zonweeb_highschool switch.data matches 337 in switch:game run forceload remove -5962 -8000 -5950 -7782

execute if score #scan_zonweeb_highschool switch.data matches 337 in minecraft:overworld run forceload remove -5950 -8000 -5938 -7782
execute if score #scan_zonweeb_highschool switch.data matches 337 in switch:game run forceload remove -5950 -8000 -5938 -7782

execute if score #scan_zonweeb_highschool switch.data matches 337 in minecraft:overworld run forceload remove -5938 -8000 -5925 -7782
execute if score #scan_zonweeb_highschool switch.data matches 337 in switch:game run forceload remove -5938 -8000 -5925 -7782

execute if score #scan_zonweeb_highschool switch.data matches 337 in minecraft:overworld run forceload remove -5925 -8000 -5912 -7782
execute if score #scan_zonweeb_highschool switch.data matches 337 in switch:game run forceload remove -5925 -8000 -5912 -7782

execute if score #scan_zonweeb_highschool switch.data matches 337 in minecraft:overworld run forceload remove -5912 -8000 -5900 -7782
execute if score #scan_zonweeb_highschool switch.data matches 337 in switch:game run forceload remove -5912 -8000 -5900 -7782

execute if score #scan_zonweeb_highschool switch.data matches 337 in minecraft:overworld run forceload remove -5900 -8000 -5888 -7782
execute if score #scan_zonweeb_highschool switch.data matches 337 in switch:game run forceload remove -5900 -8000 -5888 -7782

execute if score #scan_zonweeb_highschool switch.data matches 337 in minecraft:overworld run forceload remove -5888 -8000 -5875 -7782
execute if score #scan_zonweeb_highschool switch.data matches 337 in switch:game run forceload remove -5888 -8000 -5875 -7782

execute if score #scan_zonweeb_highschool switch.data matches 337 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"zonweeb_highschool","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"16","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_zonweeb_highschool switch.data matches 337 run data remove storage switch:maps to_scan.zonweeb_highschool
execute if score #scan_zonweeb_highschool switch.data matches 337 run scoreboard players reset #scan_zonweeb_highschool switch.data

execute if score #scan_zonweeb_highschool switch.data matches 1.. run schedule function switch:maps/survival/zonweeb_highschool/scan_doors 1t

