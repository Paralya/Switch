
#> switch:maps/survival/baby_park/scan_doors
#
# @within	switch:maps/survival/baby_park/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_baby_park switch.data 1

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add -4000 0 -3985 191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add -4000 0 -3985 191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3985 0 -3970 191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add -3985 0 -3970 191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3970 0 -3955 191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add -3970 0 -3955 191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3955 0 -3940 191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add -3955 0 -3940 191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3940 0 -3925 191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add -3940 0 -3925 191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3925 0 -3910 191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add -3925 0 -3910 191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3910 0 -3895 191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add -3910 0 -3895 191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3895 0 -3880 191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add -3895 0 -3880 191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3880 0 -3865 191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add -3880 0 -3865 191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3865 0 -3850 191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add -3865 0 -3850 191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3850 0 -3835 191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add -3850 0 -3835 191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3835 0 -3820 191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add -3835 0 -3820 191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3820 0 -3805 191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add -3820 0 -3805 191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3805 0 -3790 191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add -3805 0 -3790 191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3790 0 -3775 191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add -3790 0 -3775 191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3775 0 -3760 191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add -3775 0 -3760 191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3760 0 -3745 191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add -3760 0 -3745 191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3745 0 -3730 191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add -3745 0 -3730 191

execute if score #scan_baby_park switch.data matches 1 run data modify storage switch:maps to_scan.baby_park set value 2b
execute if score #scan_baby_park switch.data matches 1 run scoreboard players set #start_x_baby_park switch.data -3999
execute if score #scan_baby_park switch.data matches 1 run scoreboard players set #start_y_baby_park switch.data 101
execute if score #scan_baby_park switch.data matches 1 run scoreboard players set #start_z_baby_park switch.data 1
execute if score #scan_baby_park switch.data matches 1 run scoreboard players set #end_x_baby_park switch.data -3731
execute if score #scan_baby_park switch.data matches 1 run scoreboard players set #end_y_baby_park switch.data 194
execute if score #scan_baby_park switch.data matches 1 run scoreboard players set #end_z_baby_park switch.data 190
execute if score #scan_baby_park switch.data matches 1 run scoreboard players operation #curr_x_baby_park switch.data = #start_x_baby_park switch.data
execute if score #scan_baby_park switch.data matches 1 run scoreboard players operation #curr_y_baby_park switch.data = #start_y_baby_park switch.data
execute if score #scan_baby_park switch.data matches 1 run scoreboard players operation #curr_z_baby_park switch.data = #start_z_baby_park switch.data
execute if score #scan_baby_park switch.data matches 1 run data modify storage switch:doors baby_park set value []

execute if score #scan_baby_park switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_baby_park switch.data matches 30.. summon marker run function switch:maps/survival/baby_park/scan_doors_on_marker

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove -4000 0 -3985 191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove -4000 0 -3985 191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove -3985 0 -3970 191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove -3985 0 -3970 191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove -3970 0 -3955 191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove -3970 0 -3955 191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove -3955 0 -3940 191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove -3955 0 -3940 191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove -3940 0 -3925 191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove -3940 0 -3925 191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove -3925 0 -3910 191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove -3925 0 -3910 191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove -3910 0 -3895 191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove -3910 0 -3895 191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove -3895 0 -3880 191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove -3895 0 -3880 191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove -3880 0 -3865 191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove -3880 0 -3865 191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove -3865 0 -3850 191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove -3865 0 -3850 191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove -3850 0 -3835 191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove -3850 0 -3835 191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove -3835 0 -3820 191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove -3835 0 -3820 191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove -3820 0 -3805 191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove -3820 0 -3805 191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove -3805 0 -3790 191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove -3805 0 -3790 191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove -3790 0 -3775 191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove -3790 0 -3775 191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove -3775 0 -3760 191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove -3775 0 -3760 191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove -3760 0 -3745 191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove -3760 0 -3745 191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove -3745 0 -3730 191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove -3745 0 -3730 191

execute if score #scan_baby_park switch.data matches 991 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"baby_park","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"49","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_baby_park switch.data matches 991 run data remove storage switch:maps to_scan.baby_park
execute if score #scan_baby_park switch.data matches 991 run scoreboard players reset #scan_baby_park switch.data

execute if score #scan_baby_park switch.data matches 1.. run schedule function switch:maps/survival/baby_park/scan_doors 1t

