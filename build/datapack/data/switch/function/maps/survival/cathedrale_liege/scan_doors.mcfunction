
#> switch:maps/survival/cathedrale_liege/scan_doors
#
# @within	switch:maps/survival/cathedrale_liege/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_cathedrale_liege switch.data 1

execute if score #scan_cathedrale_liege switch.data matches 1 in minecraft:overworld run forceload add -2000 -6000 -1972 -5916
execute if score #scan_cathedrale_liege switch.data matches 1 in switch:game run forceload add -2000 -6000 -1972 -5916

execute if score #scan_cathedrale_liege switch.data matches 1 in minecraft:overworld run forceload add -1972 -6000 -1945 -5916
execute if score #scan_cathedrale_liege switch.data matches 1 in switch:game run forceload add -1972 -6000 -1945 -5916

execute if score #scan_cathedrale_liege switch.data matches 1 in minecraft:overworld run forceload add -1945 -6000 -1917 -5916
execute if score #scan_cathedrale_liege switch.data matches 1 in switch:game run forceload add -1945 -6000 -1917 -5916

execute if score #scan_cathedrale_liege switch.data matches 1 in minecraft:overworld run forceload add -1917 -6000 -1890 -5916
execute if score #scan_cathedrale_liege switch.data matches 1 in switch:game run forceload add -1917 -6000 -1890 -5916

execute if score #scan_cathedrale_liege switch.data matches 1 in minecraft:overworld run forceload add -1890 -6000 -1862 -5916
execute if score #scan_cathedrale_liege switch.data matches 1 in switch:game run forceload add -1890 -6000 -1862 -5916

execute if score #scan_cathedrale_liege switch.data matches 1 run data modify storage switch:maps to_scan.cathedrale_liege set value 2b
execute if score #scan_cathedrale_liege switch.data matches 1 run scoreboard players set #start_x_cathedrale_liege switch.data -1999
execute if score #scan_cathedrale_liege switch.data matches 1 run scoreboard players set #start_y_cathedrale_liege switch.data 101
execute if score #scan_cathedrale_liege switch.data matches 1 run scoreboard players set #start_z_cathedrale_liege switch.data -5999
execute if score #scan_cathedrale_liege switch.data matches 1 run scoreboard players set #end_x_cathedrale_liege switch.data -1863
execute if score #scan_cathedrale_liege switch.data matches 1 run scoreboard players set #end_y_cathedrale_liege switch.data 264
execute if score #scan_cathedrale_liege switch.data matches 1 run scoreboard players set #end_z_cathedrale_liege switch.data -5917
execute if score #scan_cathedrale_liege switch.data matches 1 run scoreboard players operation #curr_x_cathedrale_liege switch.data = #start_x_cathedrale_liege switch.data
execute if score #scan_cathedrale_liege switch.data matches 1 run scoreboard players operation #curr_y_cathedrale_liege switch.data = #start_y_cathedrale_liege switch.data
execute if score #scan_cathedrale_liege switch.data matches 1 run scoreboard players operation #curr_z_cathedrale_liege switch.data = #start_z_cathedrale_liege switch.data
execute if score #scan_cathedrale_liege switch.data matches 1 run data modify storage switch:doors cathedrale_liege set value []

execute if score #scan_cathedrale_liege switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_cathedrale_liege switch.data matches 30.. summon marker run function switch:maps/survival/cathedrale_liege/scan_doors_on_marker

execute if score #scan_cathedrale_liege switch.data matches 403 in minecraft:overworld run forceload remove -2000 -6000 -1972 -5916
execute if score #scan_cathedrale_liege switch.data matches 403 in switch:game run forceload remove -2000 -6000 -1972 -5916

execute if score #scan_cathedrale_liege switch.data matches 403 in minecraft:overworld run forceload remove -1972 -6000 -1945 -5916
execute if score #scan_cathedrale_liege switch.data matches 403 in switch:game run forceload remove -1972 -6000 -1945 -5916

execute if score #scan_cathedrale_liege switch.data matches 403 in minecraft:overworld run forceload remove -1945 -6000 -1917 -5916
execute if score #scan_cathedrale_liege switch.data matches 403 in switch:game run forceload remove -1945 -6000 -1917 -5916

execute if score #scan_cathedrale_liege switch.data matches 403 in minecraft:overworld run forceload remove -1917 -6000 -1890 -5916
execute if score #scan_cathedrale_liege switch.data matches 403 in switch:game run forceload remove -1917 -6000 -1890 -5916

execute if score #scan_cathedrale_liege switch.data matches 403 in minecraft:overworld run forceload remove -1890 -6000 -1862 -5916
execute if score #scan_cathedrale_liege switch.data matches 403 in switch:game run forceload remove -1890 -6000 -1862 -5916

execute if score #scan_cathedrale_liege switch.data matches 403 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"cathedrale_liege","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"20","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_cathedrale_liege switch.data matches 403 run data remove storage switch:maps to_scan.cathedrale_liege
execute if score #scan_cathedrale_liege switch.data matches 403 run scoreboard players reset #scan_cathedrale_liege switch.data

execute if score #scan_cathedrale_liege switch.data matches 1.. run schedule function switch:maps/survival/cathedrale_liege/scan_doors 1t

