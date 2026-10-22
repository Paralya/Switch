
#> switch:maps/survival/vilarles_castillo/scan_doors
#
# @within	switch:maps/survival/vilarles_castillo/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_vilarles_castillo switch.data 1

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add -8000 -8000 -7984 -7827
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add -8000 -8000 -7984 -7827

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add -7984 -8000 -7968 -7827
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add -7984 -8000 -7968 -7827

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add -7968 -8000 -7952 -7827
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add -7968 -8000 -7952 -7827

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add -7952 -8000 -7936 -7827
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add -7952 -8000 -7936 -7827

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add -7936 -8000 -7920 -7827
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add -7936 -8000 -7920 -7827

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add -7920 -8000 -7903 -7827
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add -7920 -8000 -7903 -7827

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add -7903 -8000 -7887 -7827
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add -7903 -8000 -7887 -7827

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add -7887 -8000 -7871 -7827
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add -7887 -8000 -7871 -7827

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add -7871 -8000 -7855 -7827
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add -7871 -8000 -7855 -7827

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add -7855 -8000 -7839 -7827
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add -7855 -8000 -7839 -7827

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add -7839 -8000 -7823 -7827
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add -7839 -8000 -7823 -7827

execute if score #scan_vilarles_castillo switch.data matches 1 run data modify storage switch:maps to_scan.vilarles_castillo set value 2b
execute if score #scan_vilarles_castillo switch.data matches 1 run scoreboard players set #start_x_vilarles_castillo switch.data -7999
execute if score #scan_vilarles_castillo switch.data matches 1 run scoreboard players set #start_y_vilarles_castillo switch.data 101
execute if score #scan_vilarles_castillo switch.data matches 1 run scoreboard players set #start_z_vilarles_castillo switch.data -7999
execute if score #scan_vilarles_castillo switch.data matches 1 run scoreboard players set #end_x_vilarles_castillo switch.data -7824
execute if score #scan_vilarles_castillo switch.data matches 1 run scoreboard players set #end_y_vilarles_castillo switch.data 255
execute if score #scan_vilarles_castillo switch.data matches 1 run scoreboard players set #end_z_vilarles_castillo switch.data -7828
execute if score #scan_vilarles_castillo switch.data matches 1 run scoreboard players operation #curr_x_vilarles_castillo switch.data = #start_x_vilarles_castillo switch.data
execute if score #scan_vilarles_castillo switch.data matches 1 run scoreboard players operation #curr_y_vilarles_castillo switch.data = #start_y_vilarles_castillo switch.data
execute if score #scan_vilarles_castillo switch.data matches 1 run scoreboard players operation #curr_z_vilarles_castillo switch.data = #start_z_vilarles_castillo switch.data
execute if score #scan_vilarles_castillo switch.data matches 1 run data modify storage switch:doors vilarles_castillo set value []

execute if score #scan_vilarles_castillo switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_vilarles_castillo switch.data matches 30.. summon marker run function switch:maps/survival/vilarles_castillo/scan_doors_on_marker

execute if score #scan_vilarles_castillo switch.data matches 969 in minecraft:overworld run forceload remove -8000 -8000 -7984 -7827
execute if score #scan_vilarles_castillo switch.data matches 969 in switch:game run forceload remove -8000 -8000 -7984 -7827

execute if score #scan_vilarles_castillo switch.data matches 969 in minecraft:overworld run forceload remove -7984 -8000 -7968 -7827
execute if score #scan_vilarles_castillo switch.data matches 969 in switch:game run forceload remove -7984 -8000 -7968 -7827

execute if score #scan_vilarles_castillo switch.data matches 969 in minecraft:overworld run forceload remove -7968 -8000 -7952 -7827
execute if score #scan_vilarles_castillo switch.data matches 969 in switch:game run forceload remove -7968 -8000 -7952 -7827

execute if score #scan_vilarles_castillo switch.data matches 969 in minecraft:overworld run forceload remove -7952 -8000 -7936 -7827
execute if score #scan_vilarles_castillo switch.data matches 969 in switch:game run forceload remove -7952 -8000 -7936 -7827

execute if score #scan_vilarles_castillo switch.data matches 969 in minecraft:overworld run forceload remove -7936 -8000 -7920 -7827
execute if score #scan_vilarles_castillo switch.data matches 969 in switch:game run forceload remove -7936 -8000 -7920 -7827

execute if score #scan_vilarles_castillo switch.data matches 969 in minecraft:overworld run forceload remove -7920 -8000 -7903 -7827
execute if score #scan_vilarles_castillo switch.data matches 969 in switch:game run forceload remove -7920 -8000 -7903 -7827

execute if score #scan_vilarles_castillo switch.data matches 969 in minecraft:overworld run forceload remove -7903 -8000 -7887 -7827
execute if score #scan_vilarles_castillo switch.data matches 969 in switch:game run forceload remove -7903 -8000 -7887 -7827

execute if score #scan_vilarles_castillo switch.data matches 969 in minecraft:overworld run forceload remove -7887 -8000 -7871 -7827
execute if score #scan_vilarles_castillo switch.data matches 969 in switch:game run forceload remove -7887 -8000 -7871 -7827

execute if score #scan_vilarles_castillo switch.data matches 969 in minecraft:overworld run forceload remove -7871 -8000 -7855 -7827
execute if score #scan_vilarles_castillo switch.data matches 969 in switch:game run forceload remove -7871 -8000 -7855 -7827

execute if score #scan_vilarles_castillo switch.data matches 969 in minecraft:overworld run forceload remove -7855 -8000 -7839 -7827
execute if score #scan_vilarles_castillo switch.data matches 969 in switch:game run forceload remove -7855 -8000 -7839 -7827

execute if score #scan_vilarles_castillo switch.data matches 969 in minecraft:overworld run forceload remove -7839 -8000 -7823 -7827
execute if score #scan_vilarles_castillo switch.data matches 969 in switch:game run forceload remove -7839 -8000 -7823 -7827

execute if score #scan_vilarles_castillo switch.data matches 969 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"vilarles_castillo","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"48","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_vilarles_castillo switch.data matches 969 run data remove storage switch:maps to_scan.vilarles_castillo
execute if score #scan_vilarles_castillo switch.data matches 969 run scoreboard players reset #scan_vilarles_castillo switch.data

execute if score #scan_vilarles_castillo switch.data matches 1.. run schedule function switch:maps/survival/vilarles_castillo/scan_doors 1t

