
#> switch:maps/survival/ctf_flowers/scan_doors
#
# @within	switch:maps/survival/ctf_flowers/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_ctf_flowers switch.data 1

execute if score #scan_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add -12000 -8000 -11975 -7895
execute if score #scan_ctf_flowers switch.data matches 1 in switch:game run forceload add -12000 -8000 -11975 -7895

execute if score #scan_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add -11975 -8000 -11950 -7895
execute if score #scan_ctf_flowers switch.data matches 1 in switch:game run forceload add -11975 -8000 -11950 -7895

execute if score #scan_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add -11950 -8000 -11924 -7895
execute if score #scan_ctf_flowers switch.data matches 1 in switch:game run forceload add -11950 -8000 -11924 -7895

execute if score #scan_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add -11924 -8000 -11899 -7895
execute if score #scan_ctf_flowers switch.data matches 1 in switch:game run forceload add -11924 -8000 -11899 -7895

execute if score #scan_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add -11899 -8000 -11874 -7895
execute if score #scan_ctf_flowers switch.data matches 1 in switch:game run forceload add -11899 -8000 -11874 -7895

execute if score #scan_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add -11874 -8000 -11848 -7895
execute if score #scan_ctf_flowers switch.data matches 1 in switch:game run forceload add -11874 -8000 -11848 -7895

execute if score #scan_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add -11848 -8000 -11823 -7895
execute if score #scan_ctf_flowers switch.data matches 1 in switch:game run forceload add -11848 -8000 -11823 -7895

execute if score #scan_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add -11823 -8000 -11798 -7895
execute if score #scan_ctf_flowers switch.data matches 1 in switch:game run forceload add -11823 -8000 -11798 -7895

execute if score #scan_ctf_flowers switch.data matches 1 run data modify storage switch:maps to_scan.ctf_flowers set value 2b
execute if score #scan_ctf_flowers switch.data matches 1 run scoreboard players set #start_x_ctf_flowers switch.data -11999
execute if score #scan_ctf_flowers switch.data matches 1 run scoreboard players set #start_y_ctf_flowers switch.data 101
execute if score #scan_ctf_flowers switch.data matches 1 run scoreboard players set #start_z_ctf_flowers switch.data -7999
execute if score #scan_ctf_flowers switch.data matches 1 run scoreboard players set #end_x_ctf_flowers switch.data -11799
execute if score #scan_ctf_flowers switch.data matches 1 run scoreboard players set #end_y_ctf_flowers switch.data 198
execute if score #scan_ctf_flowers switch.data matches 1 run scoreboard players set #end_z_ctf_flowers switch.data -7896
execute if score #scan_ctf_flowers switch.data matches 1 run scoreboard players operation #curr_x_ctf_flowers switch.data = #start_x_ctf_flowers switch.data
execute if score #scan_ctf_flowers switch.data matches 1 run scoreboard players operation #curr_y_ctf_flowers switch.data = #start_y_ctf_flowers switch.data
execute if score #scan_ctf_flowers switch.data matches 1 run scoreboard players operation #curr_z_ctf_flowers switch.data = #start_z_ctf_flowers switch.data
execute if score #scan_ctf_flowers switch.data matches 1 run data modify storage switch:doors ctf_flowers set value []

execute if score #scan_ctf_flowers switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_ctf_flowers switch.data matches 30.. summon marker run function switch:maps/survival/ctf_flowers/scan_doors_on_marker

execute if score #scan_ctf_flowers switch.data matches 440 in minecraft:overworld run forceload remove -12000 -8000 -11975 -7895
execute if score #scan_ctf_flowers switch.data matches 440 in switch:game run forceload remove -12000 -8000 -11975 -7895

execute if score #scan_ctf_flowers switch.data matches 440 in minecraft:overworld run forceload remove -11975 -8000 -11950 -7895
execute if score #scan_ctf_flowers switch.data matches 440 in switch:game run forceload remove -11975 -8000 -11950 -7895

execute if score #scan_ctf_flowers switch.data matches 440 in minecraft:overworld run forceload remove -11950 -8000 -11924 -7895
execute if score #scan_ctf_flowers switch.data matches 440 in switch:game run forceload remove -11950 -8000 -11924 -7895

execute if score #scan_ctf_flowers switch.data matches 440 in minecraft:overworld run forceload remove -11924 -8000 -11899 -7895
execute if score #scan_ctf_flowers switch.data matches 440 in switch:game run forceload remove -11924 -8000 -11899 -7895

execute if score #scan_ctf_flowers switch.data matches 440 in minecraft:overworld run forceload remove -11899 -8000 -11874 -7895
execute if score #scan_ctf_flowers switch.data matches 440 in switch:game run forceload remove -11899 -8000 -11874 -7895

execute if score #scan_ctf_flowers switch.data matches 440 in minecraft:overworld run forceload remove -11874 -8000 -11848 -7895
execute if score #scan_ctf_flowers switch.data matches 440 in switch:game run forceload remove -11874 -8000 -11848 -7895

execute if score #scan_ctf_flowers switch.data matches 440 in minecraft:overworld run forceload remove -11848 -8000 -11823 -7895
execute if score #scan_ctf_flowers switch.data matches 440 in switch:game run forceload remove -11848 -8000 -11823 -7895

execute if score #scan_ctf_flowers switch.data matches 440 in minecraft:overworld run forceload remove -11823 -8000 -11798 -7895
execute if score #scan_ctf_flowers switch.data matches 440 in switch:game run forceload remove -11823 -8000 -11798 -7895

execute if score #scan_ctf_flowers switch.data matches 440 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"ctf_flowers","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"22","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_ctf_flowers switch.data matches 440 run data remove storage switch:maps to_scan.ctf_flowers
execute if score #scan_ctf_flowers switch.data matches 440 run scoreboard players reset #scan_ctf_flowers switch.data

execute if score #scan_ctf_flowers switch.data matches 1.. run schedule function switch:maps/survival/ctf_flowers/scan_doors 1t

