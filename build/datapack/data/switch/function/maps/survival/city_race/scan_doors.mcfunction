
#> switch:maps/survival/city_race/scan_doors
#
# @within	switch:maps/survival/city_race/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_city_race switch.data 1

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 19817 19470 19829 19731
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 19817 19470 19829 19731

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 19829 19470 19840 19731
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 19829 19470 19840 19731

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 19840 19470 19852 19731
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 19840 19470 19852 19731

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 19852 19470 19864 19731
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 19852 19470 19864 19731

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 19864 19470 19875 19731
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 19864 19470 19875 19731

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 19875 19470 19887 19731
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 19875 19470 19887 19731

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 19887 19470 19899 19731
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 19887 19470 19899 19731

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 19899 19470 19910 19731
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 19899 19470 19910 19731

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 19910 19470 19922 19731
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 19910 19470 19922 19731

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 19922 19470 19934 19731
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 19922 19470 19934 19731

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 19934 19470 19945 19731
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 19934 19470 19945 19731

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 19945 19470 19957 19731
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 19945 19470 19957 19731

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 19957 19470 19969 19731
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 19957 19470 19969 19731

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 19969 19470 19980 19731
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 19969 19470 19980 19731

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 19980 19470 19992 19731
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 19980 19470 19992 19731

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 19992 19470 20004 19731
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 19992 19470 20004 19731

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 20004 19470 20015 19731
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 20004 19470 20015 19731

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 20015 19470 20027 19731
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 20015 19470 20027 19731

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 20027 19470 20039 19731
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 20027 19470 20039 19731

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 20039 19470 20050 19731
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 20039 19470 20050 19731

execute if score #scan_city_race switch.data matches 1 in minecraft:overworld run forceload add 20050 19470 20062 19731
execute if score #scan_city_race switch.data matches 1 in switch:game run forceload add 20050 19470 20062 19731

execute if score #scan_city_race switch.data matches 1 run data modify storage switch:maps to_scan.city_race set value 2b
execute if score #scan_city_race switch.data matches 1 run scoreboard players set #start_x_city_race switch.data 19818
execute if score #scan_city_race switch.data matches 1 run scoreboard players set #start_y_city_race switch.data 86
execute if score #scan_city_race switch.data matches 1 run scoreboard players set #start_z_city_race switch.data 19471
execute if score #scan_city_race switch.data matches 1 run scoreboard players set #end_x_city_race switch.data 20061
execute if score #scan_city_race switch.data matches 1 run scoreboard players set #end_y_city_race switch.data 203
execute if score #scan_city_race switch.data matches 1 run scoreboard players set #end_z_city_race switch.data 19730
execute if score #scan_city_race switch.data matches 1 run scoreboard players operation #curr_x_city_race switch.data = #start_x_city_race switch.data
execute if score #scan_city_race switch.data matches 1 run scoreboard players operation #curr_y_city_race switch.data = #start_y_city_race switch.data
execute if score #scan_city_race switch.data matches 1 run scoreboard players operation #curr_z_city_race switch.data = #start_z_city_race switch.data
execute if score #scan_city_race switch.data matches 1 run data modify storage switch:doors city_race set value []


execute if score #scan_city_race switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_city_race switch.data matches 30.. summon marker run function switch:maps/survival/city_race/scan_doors_on_marker

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 19817 19470 19829 19731
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 19817 19470 19829 19731

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 19829 19470 19840 19731
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 19829 19470 19840 19731

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 19840 19470 19852 19731
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 19840 19470 19852 19731

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 19852 19470 19864 19731
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 19852 19470 19864 19731

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 19864 19470 19875 19731
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 19864 19470 19875 19731

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 19875 19470 19887 19731
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 19875 19470 19887 19731

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 19887 19470 19899 19731
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 19887 19470 19899 19731

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 19899 19470 19910 19731
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 19899 19470 19910 19731

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 19910 19470 19922 19731
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 19910 19470 19922 19731

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 19922 19470 19934 19731
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 19922 19470 19934 19731

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 19934 19470 19945 19731
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 19934 19470 19945 19731

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 19945 19470 19957 19731
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 19945 19470 19957 19731

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 19957 19470 19969 19731
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 19957 19470 19969 19731

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 19969 19470 19980 19731
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 19969 19470 19980 19731

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 19980 19470 19992 19731
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 19980 19470 19992 19731

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 19992 19470 20004 19731
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 19992 19470 20004 19731

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 20004 19470 20015 19731
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 20004 19470 20015 19731

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 20015 19470 20027 19731
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 20015 19470 20027 19731

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 20027 19470 20039 19731
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 20027 19470 20039 19731

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 20039 19470 20050 19731
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 20039 19470 20050 19731

execute if score #scan_city_race switch.data matches 1528 in minecraft:overworld run forceload remove 20050 19470 20062 19731
execute if score #scan_city_race switch.data matches 1528 in switch:game run forceload remove 20050 19470 20062 19731

execute if score #scan_city_race switch.data matches 1528 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"city_race","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"76","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_city_race switch.data matches 1528 run data remove storage switch:maps to_scan.city_race
execute if score #scan_city_race switch.data matches 1528 run scoreboard players reset #scan_city_race switch.data

execute if score #scan_city_race switch.data matches 1.. run schedule function switch:maps/survival/city_race/scan_doors 1t

