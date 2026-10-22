
#> switch:maps/survival/hider_mansion/scan_doors
#
# @within	switch:maps/survival/hider_mansion/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_hider_mansion switch.data 1

execute if score #scan_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add -2000 8000 -1983 8160
execute if score #scan_hider_mansion switch.data matches 1 in switch:game run forceload add -2000 8000 -1983 8160

execute if score #scan_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add -1983 8000 -1966 8160
execute if score #scan_hider_mansion switch.data matches 1 in switch:game run forceload add -1983 8000 -1966 8160

execute if score #scan_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add -1966 8000 -1949 8160
execute if score #scan_hider_mansion switch.data matches 1 in switch:game run forceload add -1966 8000 -1949 8160

execute if score #scan_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add -1949 8000 -1932 8160
execute if score #scan_hider_mansion switch.data matches 1 in switch:game run forceload add -1949 8000 -1932 8160

execute if score #scan_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add -1932 8000 -1915 8160
execute if score #scan_hider_mansion switch.data matches 1 in switch:game run forceload add -1932 8000 -1915 8160

execute if score #scan_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add -1915 8000 -1898 8160
execute if score #scan_hider_mansion switch.data matches 1 in switch:game run forceload add -1915 8000 -1898 8160

execute if score #scan_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add -1898 8000 -1881 8160
execute if score #scan_hider_mansion switch.data matches 1 in switch:game run forceload add -1898 8000 -1881 8160

execute if score #scan_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add -1881 8000 -1864 8160
execute if score #scan_hider_mansion switch.data matches 1 in switch:game run forceload add -1881 8000 -1864 8160

execute if score #scan_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add -1864 8000 -1847 8160
execute if score #scan_hider_mansion switch.data matches 1 in switch:game run forceload add -1864 8000 -1847 8160

execute if score #scan_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add -1847 8000 -1830 8160
execute if score #scan_hider_mansion switch.data matches 1 in switch:game run forceload add -1847 8000 -1830 8160

execute if score #scan_hider_mansion switch.data matches 1 run data modify storage switch:maps to_scan.hider_mansion set value 2b
execute if score #scan_hider_mansion switch.data matches 1 run scoreboard players set #start_x_hider_mansion switch.data -1999
execute if score #scan_hider_mansion switch.data matches 1 run scoreboard players set #start_y_hider_mansion switch.data 101
execute if score #scan_hider_mansion switch.data matches 1 run scoreboard players set #start_z_hider_mansion switch.data 8001
execute if score #scan_hider_mansion switch.data matches 1 run scoreboard players set #end_x_hider_mansion switch.data -1831
execute if score #scan_hider_mansion switch.data matches 1 run scoreboard players set #end_y_hider_mansion switch.data 169
execute if score #scan_hider_mansion switch.data matches 1 run scoreboard players set #end_z_hider_mansion switch.data 8159
execute if score #scan_hider_mansion switch.data matches 1 run scoreboard players operation #curr_x_hider_mansion switch.data = #start_x_hider_mansion switch.data
execute if score #scan_hider_mansion switch.data matches 1 run scoreboard players operation #curr_y_hider_mansion switch.data = #start_y_hider_mansion switch.data
execute if score #scan_hider_mansion switch.data matches 1 run scoreboard players operation #curr_z_hider_mansion switch.data = #start_z_hider_mansion switch.data
execute if score #scan_hider_mansion switch.data matches 1 run data modify storage switch:doors hider_mansion set value []

execute if score #scan_hider_mansion switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_hider_mansion switch.data matches 30.. summon marker run function switch:maps/survival/hider_mansion/scan_doors_on_marker

execute if score #scan_hider_mansion switch.data matches 401 in minecraft:overworld run forceload remove -2000 8000 -1983 8160
execute if score #scan_hider_mansion switch.data matches 401 in switch:game run forceload remove -2000 8000 -1983 8160

execute if score #scan_hider_mansion switch.data matches 401 in minecraft:overworld run forceload remove -1983 8000 -1966 8160
execute if score #scan_hider_mansion switch.data matches 401 in switch:game run forceload remove -1983 8000 -1966 8160

execute if score #scan_hider_mansion switch.data matches 401 in minecraft:overworld run forceload remove -1966 8000 -1949 8160
execute if score #scan_hider_mansion switch.data matches 401 in switch:game run forceload remove -1966 8000 -1949 8160

execute if score #scan_hider_mansion switch.data matches 401 in minecraft:overworld run forceload remove -1949 8000 -1932 8160
execute if score #scan_hider_mansion switch.data matches 401 in switch:game run forceload remove -1949 8000 -1932 8160

execute if score #scan_hider_mansion switch.data matches 401 in minecraft:overworld run forceload remove -1932 8000 -1915 8160
execute if score #scan_hider_mansion switch.data matches 401 in switch:game run forceload remove -1932 8000 -1915 8160

execute if score #scan_hider_mansion switch.data matches 401 in minecraft:overworld run forceload remove -1915 8000 -1898 8160
execute if score #scan_hider_mansion switch.data matches 401 in switch:game run forceload remove -1915 8000 -1898 8160

execute if score #scan_hider_mansion switch.data matches 401 in minecraft:overworld run forceload remove -1898 8000 -1881 8160
execute if score #scan_hider_mansion switch.data matches 401 in switch:game run forceload remove -1898 8000 -1881 8160

execute if score #scan_hider_mansion switch.data matches 401 in minecraft:overworld run forceload remove -1881 8000 -1864 8160
execute if score #scan_hider_mansion switch.data matches 401 in switch:game run forceload remove -1881 8000 -1864 8160

execute if score #scan_hider_mansion switch.data matches 401 in minecraft:overworld run forceload remove -1864 8000 -1847 8160
execute if score #scan_hider_mansion switch.data matches 401 in switch:game run forceload remove -1864 8000 -1847 8160

execute if score #scan_hider_mansion switch.data matches 401 in minecraft:overworld run forceload remove -1847 8000 -1830 8160
execute if score #scan_hider_mansion switch.data matches 401 in switch:game run forceload remove -1847 8000 -1830 8160

execute if score #scan_hider_mansion switch.data matches 401 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"hider_mansion","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"20","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_hider_mansion switch.data matches 401 run data remove storage switch:maps to_scan.hider_mansion
execute if score #scan_hider_mansion switch.data matches 401 run scoreboard players reset #scan_hider_mansion switch.data

execute if score #scan_hider_mansion switch.data matches 1.. run schedule function switch:maps/survival/hider_mansion/scan_doors 1t

