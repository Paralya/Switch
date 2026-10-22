
#> switch:maps/survival/stardust_prison/scan_doors
#
# @within	switch:maps/survival/stardust_prison/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_stardust_prison switch.data 1

execute if score #scan_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add -2000 -10000 -1985 -9822
execute if score #scan_stardust_prison switch.data matches 1 in switch:game run forceload add -2000 -10000 -1985 -9822

execute if score #scan_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add -1985 -10000 -1971 -9822
execute if score #scan_stardust_prison switch.data matches 1 in switch:game run forceload add -1985 -10000 -1971 -9822

execute if score #scan_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add -1971 -10000 -1956 -9822
execute if score #scan_stardust_prison switch.data matches 1 in switch:game run forceload add -1971 -10000 -1956 -9822

execute if score #scan_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add -1956 -10000 -1941 -9822
execute if score #scan_stardust_prison switch.data matches 1 in switch:game run forceload add -1956 -10000 -1941 -9822

execute if score #scan_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add -1941 -10000 -1927 -9822
execute if score #scan_stardust_prison switch.data matches 1 in switch:game run forceload add -1941 -10000 -1927 -9822

execute if score #scan_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add -1927 -10000 -1912 -9822
execute if score #scan_stardust_prison switch.data matches 1 in switch:game run forceload add -1927 -10000 -1912 -9822

execute if score #scan_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add -1912 -10000 -1897 -9822
execute if score #scan_stardust_prison switch.data matches 1 in switch:game run forceload add -1912 -10000 -1897 -9822

execute if score #scan_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add -1897 -10000 -1883 -9822
execute if score #scan_stardust_prison switch.data matches 1 in switch:game run forceload add -1897 -10000 -1883 -9822

execute if score #scan_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add -1883 -10000 -1868 -9822
execute if score #scan_stardust_prison switch.data matches 1 in switch:game run forceload add -1883 -10000 -1868 -9822

execute if score #scan_stardust_prison switch.data matches 1 run data modify storage switch:maps to_scan.stardust_prison set value 2b
execute if score #scan_stardust_prison switch.data matches 1 run scoreboard players set #start_x_stardust_prison switch.data -1999
execute if score #scan_stardust_prison switch.data matches 1 run scoreboard players set #start_y_stardust_prison switch.data 101
execute if score #scan_stardust_prison switch.data matches 1 run scoreboard players set #start_z_stardust_prison switch.data -9999
execute if score #scan_stardust_prison switch.data matches 1 run scoreboard players set #end_x_stardust_prison switch.data -1869
execute if score #scan_stardust_prison switch.data matches 1 run scoreboard players set #end_y_stardust_prison switch.data 156
execute if score #scan_stardust_prison switch.data matches 1 run scoreboard players set #end_z_stardust_prison switch.data -9823
execute if score #scan_stardust_prison switch.data matches 1 run scoreboard players operation #curr_x_stardust_prison switch.data = #start_x_stardust_prison switch.data
execute if score #scan_stardust_prison switch.data matches 1 run scoreboard players operation #curr_y_stardust_prison switch.data = #start_y_stardust_prison switch.data
execute if score #scan_stardust_prison switch.data matches 1 run scoreboard players operation #curr_z_stardust_prison switch.data = #start_z_stardust_prison switch.data
execute if score #scan_stardust_prison switch.data matches 1 run data modify storage switch:doors stardust_prison set value []

execute if score #scan_stardust_prison switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_stardust_prison switch.data matches 30.. summon marker run function switch:maps/survival/stardust_prison/scan_doors_on_marker

execute if score #scan_stardust_prison switch.data matches 290 in minecraft:overworld run forceload remove -2000 -10000 -1985 -9822
execute if score #scan_stardust_prison switch.data matches 290 in switch:game run forceload remove -2000 -10000 -1985 -9822

execute if score #scan_stardust_prison switch.data matches 290 in minecraft:overworld run forceload remove -1985 -10000 -1971 -9822
execute if score #scan_stardust_prison switch.data matches 290 in switch:game run forceload remove -1985 -10000 -1971 -9822

execute if score #scan_stardust_prison switch.data matches 290 in minecraft:overworld run forceload remove -1971 -10000 -1956 -9822
execute if score #scan_stardust_prison switch.data matches 290 in switch:game run forceload remove -1971 -10000 -1956 -9822

execute if score #scan_stardust_prison switch.data matches 290 in minecraft:overworld run forceload remove -1956 -10000 -1941 -9822
execute if score #scan_stardust_prison switch.data matches 290 in switch:game run forceload remove -1956 -10000 -1941 -9822

execute if score #scan_stardust_prison switch.data matches 290 in minecraft:overworld run forceload remove -1941 -10000 -1927 -9822
execute if score #scan_stardust_prison switch.data matches 290 in switch:game run forceload remove -1941 -10000 -1927 -9822

execute if score #scan_stardust_prison switch.data matches 290 in minecraft:overworld run forceload remove -1927 -10000 -1912 -9822
execute if score #scan_stardust_prison switch.data matches 290 in switch:game run forceload remove -1927 -10000 -1912 -9822

execute if score #scan_stardust_prison switch.data matches 290 in minecraft:overworld run forceload remove -1912 -10000 -1897 -9822
execute if score #scan_stardust_prison switch.data matches 290 in switch:game run forceload remove -1912 -10000 -1897 -9822

execute if score #scan_stardust_prison switch.data matches 290 in minecraft:overworld run forceload remove -1897 -10000 -1883 -9822
execute if score #scan_stardust_prison switch.data matches 290 in switch:game run forceload remove -1897 -10000 -1883 -9822

execute if score #scan_stardust_prison switch.data matches 290 in minecraft:overworld run forceload remove -1883 -10000 -1868 -9822
execute if score #scan_stardust_prison switch.data matches 290 in switch:game run forceload remove -1883 -10000 -1868 -9822

execute if score #scan_stardust_prison switch.data matches 290 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"stardust_prison","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"14","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_stardust_prison switch.data matches 290 run data remove storage switch:maps to_scan.stardust_prison
execute if score #scan_stardust_prison switch.data matches 290 run scoreboard players reset #scan_stardust_prison switch.data

execute if score #scan_stardust_prison switch.data matches 1.. run schedule function switch:maps/survival/stardust_prison/scan_doors 1t

