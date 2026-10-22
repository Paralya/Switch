
#> switch:maps/survival/nuketown/scan_doors
#
# @within	switch:maps/survival/nuketown/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_nuketown switch.data 1

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add -4000 8000 -3987 8220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add -4000 8000 -3987 8220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3987 8000 -3974 8220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add -3987 8000 -3974 8220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3974 8000 -3961 8220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add -3974 8000 -3961 8220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3961 8000 -3948 8220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add -3961 8000 -3948 8220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3948 8000 -3935 8220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add -3948 8000 -3935 8220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3935 8000 -3922 8220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add -3935 8000 -3922 8220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3922 8000 -3909 8220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add -3922 8000 -3909 8220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3909 8000 -3896 8220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add -3909 8000 -3896 8220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3896 8000 -3884 8220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add -3896 8000 -3884 8220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3884 8000 -3871 8220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add -3884 8000 -3871 8220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3871 8000 -3858 8220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add -3871 8000 -3858 8220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3858 8000 -3845 8220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add -3858 8000 -3845 8220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3845 8000 -3832 8220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add -3845 8000 -3832 8220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3832 8000 -3819 8220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add -3832 8000 -3819 8220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3819 8000 -3806 8220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add -3819 8000 -3806 8220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3806 8000 -3793 8220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add -3806 8000 -3793 8220

execute if score #scan_nuketown switch.data matches 1 run data modify storage switch:maps to_scan.nuketown set value 2b
execute if score #scan_nuketown switch.data matches 1 run scoreboard players set #start_x_nuketown switch.data -3999
execute if score #scan_nuketown switch.data matches 1 run scoreboard players set #start_y_nuketown switch.data 101
execute if score #scan_nuketown switch.data matches 1 run scoreboard players set #start_z_nuketown switch.data 8001
execute if score #scan_nuketown switch.data matches 1 run scoreboard players set #end_x_nuketown switch.data -3794
execute if score #scan_nuketown switch.data matches 1 run scoreboard players set #end_y_nuketown switch.data 150
execute if score #scan_nuketown switch.data matches 1 run scoreboard players set #end_z_nuketown switch.data 8219
execute if score #scan_nuketown switch.data matches 1 run scoreboard players operation #curr_x_nuketown switch.data = #start_x_nuketown switch.data
execute if score #scan_nuketown switch.data matches 1 run scoreboard players operation #curr_y_nuketown switch.data = #start_y_nuketown switch.data
execute if score #scan_nuketown switch.data matches 1 run scoreboard players operation #curr_z_nuketown switch.data = #start_z_nuketown switch.data
execute if score #scan_nuketown switch.data matches 1 run data modify storage switch:doors nuketown set value []

execute if score #scan_nuketown switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_nuketown switch.data matches 30.. summon marker run function switch:maps/survival/nuketown/scan_doors_on_marker

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove -4000 8000 -3987 8220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove -4000 8000 -3987 8220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove -3987 8000 -3974 8220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove -3987 8000 -3974 8220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove -3974 8000 -3961 8220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove -3974 8000 -3961 8220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove -3961 8000 -3948 8220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove -3961 8000 -3948 8220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove -3948 8000 -3935 8220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove -3948 8000 -3935 8220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove -3935 8000 -3922 8220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove -3935 8000 -3922 8220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove -3922 8000 -3909 8220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove -3922 8000 -3909 8220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove -3909 8000 -3896 8220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove -3909 8000 -3896 8220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove -3896 8000 -3884 8220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove -3896 8000 -3884 8220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove -3884 8000 -3871 8220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove -3884 8000 -3871 8220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove -3871 8000 -3858 8220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove -3871 8000 -3858 8220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove -3858 8000 -3845 8220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove -3858 8000 -3845 8220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove -3845 8000 -3832 8220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove -3845 8000 -3832 8220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove -3832 8000 -3819 8220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove -3832 8000 -3819 8220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove -3819 8000 -3806 8220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove -3819 8000 -3806 8220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove -3806 8000 -3793 8220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove -3806 8000 -3793 8220

execute if score #scan_nuketown switch.data matches 482 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"nuketown","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"24","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_nuketown switch.data matches 482 run data remove storage switch:maps to_scan.nuketown
execute if score #scan_nuketown switch.data matches 482 run scoreboard players reset #scan_nuketown switch.data

execute if score #scan_nuketown switch.data matches 1.. run schedule function switch:maps/survival/nuketown/scan_doors 1t

