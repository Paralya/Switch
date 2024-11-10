
#> switch:maps/survival/area_51/scan_doors
#
# @within	switch:maps/survival/area_51/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_area_51 switch.data 1

execute if score #scan_area_51 switch.data matches 1 in minecraft:overworld run forceload add 1947 1937 1965 2063
execute if score #scan_area_51 switch.data matches 1 in switch:game run forceload add 1947 1937 1965 2063

execute if score #scan_area_51 switch.data matches 1 in minecraft:overworld run forceload add 1965 1937 1983 2063
execute if score #scan_area_51 switch.data matches 1 in switch:game run forceload add 1965 1937 1983 2063

execute if score #scan_area_51 switch.data matches 1 in minecraft:overworld run forceload add 1983 1937 2001 2063
execute if score #scan_area_51 switch.data matches 1 in switch:game run forceload add 1983 1937 2001 2063

execute if score #scan_area_51 switch.data matches 1 in minecraft:overworld run forceload add 2001 1937 2019 2063
execute if score #scan_area_51 switch.data matches 1 in switch:game run forceload add 2001 1937 2019 2063

execute if score #scan_area_51 switch.data matches 1 in minecraft:overworld run forceload add 2019 1937 2037 2063
execute if score #scan_area_51 switch.data matches 1 in switch:game run forceload add 2019 1937 2037 2063

execute if score #scan_area_51 switch.data matches 1 in minecraft:overworld run forceload add 2037 1937 2055 2063
execute if score #scan_area_51 switch.data matches 1 in switch:game run forceload add 2037 1937 2055 2063

execute if score #scan_area_51 switch.data matches 1 run data modify storage switch:maps to_scan.area_51 set value 2b
execute if score #scan_area_51 switch.data matches 1 run scoreboard players set #start_x_area_51 switch.data 1948
execute if score #scan_area_51 switch.data matches 1 run scoreboard players set #start_y_area_51 switch.data 1
execute if score #scan_area_51 switch.data matches 1 run scoreboard players set #start_z_area_51 switch.data 1938
execute if score #scan_area_51 switch.data matches 1 run scoreboard players set #end_x_area_51 switch.data 2054
execute if score #scan_area_51 switch.data matches 1 run scoreboard players set #end_y_area_51 switch.data 91
execute if score #scan_area_51 switch.data matches 1 run scoreboard players set #end_z_area_51 switch.data 2062
execute if score #scan_area_51 switch.data matches 1 run scoreboard players operation #curr_x_area_51 switch.data = #start_x_area_51 switch.data
execute if score #scan_area_51 switch.data matches 1 run scoreboard players operation #curr_y_area_51 switch.data = #start_y_area_51 switch.data
execute if score #scan_area_51 switch.data matches 1 run scoreboard players operation #curr_z_area_51 switch.data = #start_z_area_51 switch.data
execute if score #scan_area_51 switch.data matches 1 run data modify storage switch:doors area_51 set value []


execute if score #scan_area_51 switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_area_51 switch.data matches 30.. summon marker run function switch:maps/survival/area_51/scan_doors_on_marker

execute if score #scan_area_51 switch.data matches 274 in minecraft:overworld run forceload remove 1947 1937 1965 2063
execute if score #scan_area_51 switch.data matches 274 in switch:game run forceload remove 1947 1937 1965 2063

execute if score #scan_area_51 switch.data matches 274 in minecraft:overworld run forceload remove 1965 1937 1983 2063
execute if score #scan_area_51 switch.data matches 274 in switch:game run forceload remove 1965 1937 1983 2063

execute if score #scan_area_51 switch.data matches 274 in minecraft:overworld run forceload remove 1983 1937 2001 2063
execute if score #scan_area_51 switch.data matches 274 in switch:game run forceload remove 1983 1937 2001 2063

execute if score #scan_area_51 switch.data matches 274 in minecraft:overworld run forceload remove 2001 1937 2019 2063
execute if score #scan_area_51 switch.data matches 274 in switch:game run forceload remove 2001 1937 2019 2063

execute if score #scan_area_51 switch.data matches 274 in minecraft:overworld run forceload remove 2019 1937 2037 2063
execute if score #scan_area_51 switch.data matches 274 in switch:game run forceload remove 2019 1937 2037 2063

execute if score #scan_area_51 switch.data matches 274 in minecraft:overworld run forceload remove 2037 1937 2055 2063
execute if score #scan_area_51 switch.data matches 274 in switch:game run forceload remove 2037 1937 2055 2063

execute if score #scan_area_51 switch.data matches 274 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"area_51","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"13","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_area_51 switch.data matches 274 run data remove storage switch:maps to_scan.area_51
execute if score #scan_area_51 switch.data matches 274 run scoreboard players reset #scan_area_51 switch.data

execute if score #scan_area_51 switch.data matches 1.. run schedule function switch:maps/survival/area_51/scan_doors 1t

