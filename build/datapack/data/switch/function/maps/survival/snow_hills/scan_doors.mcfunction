
#> switch:maps/survival/snow_hills/scan_doors
#
# @within	switch:maps/survival/snow_hills/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_snow_hills switch.data 1

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -8000 -4000 -7984 -3815
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add -8000 -4000 -7984 -3815

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -7984 -4000 -7968 -3815
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add -7984 -4000 -7968 -3815

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -7968 -4000 -7952 -3815
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add -7968 -4000 -7952 -3815

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -7952 -4000 -7936 -3815
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add -7952 -4000 -7936 -3815

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -7936 -4000 -7920 -3815
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add -7936 -4000 -7920 -3815

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -7920 -4000 -7904 -3815
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add -7920 -4000 -7904 -3815

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -7904 -4000 -7888 -3815
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add -7904 -4000 -7888 -3815

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -7888 -4000 -7873 -3815
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add -7888 -4000 -7873 -3815

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -7873 -4000 -7857 -3815
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add -7873 -4000 -7857 -3815

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -7857 -4000 -7841 -3815
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add -7857 -4000 -7841 -3815

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -7841 -4000 -7825 -3815
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add -7841 -4000 -7825 -3815

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -7825 -4000 -7809 -3815
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add -7825 -4000 -7809 -3815

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -7809 -4000 -7793 -3815
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add -7809 -4000 -7793 -3815

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -7793 -4000 -7777 -3815
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add -7793 -4000 -7777 -3815

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -7777 -4000 -7761 -3815
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add -7777 -4000 -7761 -3815

execute if score #scan_snow_hills switch.data matches 1 run data modify storage switch:maps to_scan.snow_hills set value 2b
execute if score #scan_snow_hills switch.data matches 1 run scoreboard players set #start_x_snow_hills switch.data -7999
execute if score #scan_snow_hills switch.data matches 1 run scoreboard players set #start_y_snow_hills switch.data 101
execute if score #scan_snow_hills switch.data matches 1 run scoreboard players set #start_z_snow_hills switch.data -3999
execute if score #scan_snow_hills switch.data matches 1 run scoreboard players set #end_x_snow_hills switch.data -7762
execute if score #scan_snow_hills switch.data matches 1 run scoreboard players set #end_y_snow_hills switch.data 159
execute if score #scan_snow_hills switch.data matches 1 run scoreboard players set #end_z_snow_hills switch.data -3816
execute if score #scan_snow_hills switch.data matches 1 run scoreboard players operation #curr_x_snow_hills switch.data = #start_x_snow_hills switch.data
execute if score #scan_snow_hills switch.data matches 1 run scoreboard players operation #curr_y_snow_hills switch.data = #start_y_snow_hills switch.data
execute if score #scan_snow_hills switch.data matches 1 run scoreboard players operation #curr_z_snow_hills switch.data = #start_z_snow_hills switch.data
execute if score #scan_snow_hills switch.data matches 1 run data modify storage switch:doors snow_hills set value []

execute if score #scan_snow_hills switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_snow_hills switch.data matches 30.. summon marker run function switch:maps/survival/snow_hills/scan_doors_on_marker

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove -8000 -4000 -7984 -3815
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove -8000 -4000 -7984 -3815

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove -7984 -4000 -7968 -3815
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove -7984 -4000 -7968 -3815

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove -7968 -4000 -7952 -3815
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove -7968 -4000 -7952 -3815

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove -7952 -4000 -7936 -3815
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove -7952 -4000 -7936 -3815

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove -7936 -4000 -7920 -3815
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove -7936 -4000 -7920 -3815

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove -7920 -4000 -7904 -3815
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove -7920 -4000 -7904 -3815

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove -7904 -4000 -7888 -3815
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove -7904 -4000 -7888 -3815

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove -7888 -4000 -7873 -3815
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove -7888 -4000 -7873 -3815

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove -7873 -4000 -7857 -3815
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove -7873 -4000 -7857 -3815

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove -7857 -4000 -7841 -3815
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove -7857 -4000 -7841 -3815

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove -7841 -4000 -7825 -3815
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove -7841 -4000 -7825 -3815

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove -7825 -4000 -7809 -3815
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove -7825 -4000 -7809 -3815

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove -7809 -4000 -7793 -3815
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove -7809 -4000 -7793 -3815

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove -7793 -4000 -7777 -3815
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove -7793 -4000 -7777 -3815

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove -7777 -4000 -7761 -3815
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove -7777 -4000 -7761 -3815

execute if score #scan_snow_hills switch.data matches 547 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"snow_hills","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"27","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_snow_hills switch.data matches 547 run data remove storage switch:maps to_scan.snow_hills
execute if score #scan_snow_hills switch.data matches 547 run scoreboard players reset #scan_snow_hills switch.data

execute if score #scan_snow_hills switch.data matches 1.. run schedule function switch:maps/survival/snow_hills/scan_doors 1t

