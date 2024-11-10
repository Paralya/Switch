
#> switch:maps/survival/vilarles_castillo/scan_doors
#
# @within	switch:maps/survival/vilarles_castillo/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_vilarles_castillo switch.data 1

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 51899 51853 51912 52071
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add 51899 51853 51912 52071

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 51912 51853 51924 52071
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add 51912 51853 51924 52071

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 51924 51853 51937 52071
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add 51924 51853 51937 52071

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 51937 51853 51950 52071
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add 51937 51853 51950 52071

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 51950 51853 51962 52071
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add 51950 51853 51962 52071

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 51962 51853 51975 52071
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add 51962 51853 51975 52071

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 51975 51853 51988 52071
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add 51975 51853 51988 52071

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 51988 51853 52000 52071
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add 51988 51853 52000 52071

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52000 51853 52013 52071
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52000 51853 52013 52071

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52013 51853 52025 52071
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52013 51853 52025 52071

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52025 51853 52038 52071
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52025 51853 52038 52071

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52038 51853 52051 52071
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52038 51853 52051 52071

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52051 51853 52063 52071
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52051 51853 52063 52071

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52063 51853 52076 52071
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52063 51853 52076 52071

execute if score #scan_vilarles_castillo switch.data matches 1 run data modify storage switch:maps to_scan.vilarles_castillo set value 2b
execute if score #scan_vilarles_castillo switch.data matches 1 run scoreboard players set #start_x_vilarles_castillo switch.data 51900
execute if score #scan_vilarles_castillo switch.data matches 1 run scoreboard players set #start_y_vilarles_castillo switch.data -63
execute if score #scan_vilarles_castillo switch.data matches 1 run scoreboard players set #start_z_vilarles_castillo switch.data 51854
execute if score #scan_vilarles_castillo switch.data matches 1 run scoreboard players set #end_x_vilarles_castillo switch.data 52075
execute if score #scan_vilarles_castillo switch.data matches 1 run scoreboard players set #end_y_vilarles_castillo switch.data 91
execute if score #scan_vilarles_castillo switch.data matches 1 run scoreboard players set #end_z_vilarles_castillo switch.data 52070
execute if score #scan_vilarles_castillo switch.data matches 1 run scoreboard players operation #curr_x_vilarles_castillo switch.data = #start_x_vilarles_castillo switch.data
execute if score #scan_vilarles_castillo switch.data matches 1 run scoreboard players operation #curr_y_vilarles_castillo switch.data = #start_y_vilarles_castillo switch.data
execute if score #scan_vilarles_castillo switch.data matches 1 run scoreboard players operation #curr_z_vilarles_castillo switch.data = #start_z_vilarles_castillo switch.data
execute if score #scan_vilarles_castillo switch.data matches 1 run data modify storage switch:doors vilarles_castillo set value []


execute if score #scan_vilarles_castillo switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_vilarles_castillo switch.data matches 30.. summon marker run function switch:maps/survival/vilarles_castillo/scan_doors_on_marker

execute if score #scan_vilarles_castillo switch.data matches 1214 in minecraft:overworld run forceload remove 51899 51853 51912 52071
execute if score #scan_vilarles_castillo switch.data matches 1214 in switch:game run forceload remove 51899 51853 51912 52071

execute if score #scan_vilarles_castillo switch.data matches 1214 in minecraft:overworld run forceload remove 51912 51853 51924 52071
execute if score #scan_vilarles_castillo switch.data matches 1214 in switch:game run forceload remove 51912 51853 51924 52071

execute if score #scan_vilarles_castillo switch.data matches 1214 in minecraft:overworld run forceload remove 51924 51853 51937 52071
execute if score #scan_vilarles_castillo switch.data matches 1214 in switch:game run forceload remove 51924 51853 51937 52071

execute if score #scan_vilarles_castillo switch.data matches 1214 in minecraft:overworld run forceload remove 51937 51853 51950 52071
execute if score #scan_vilarles_castillo switch.data matches 1214 in switch:game run forceload remove 51937 51853 51950 52071

execute if score #scan_vilarles_castillo switch.data matches 1214 in minecraft:overworld run forceload remove 51950 51853 51962 52071
execute if score #scan_vilarles_castillo switch.data matches 1214 in switch:game run forceload remove 51950 51853 51962 52071

execute if score #scan_vilarles_castillo switch.data matches 1214 in minecraft:overworld run forceload remove 51962 51853 51975 52071
execute if score #scan_vilarles_castillo switch.data matches 1214 in switch:game run forceload remove 51962 51853 51975 52071

execute if score #scan_vilarles_castillo switch.data matches 1214 in minecraft:overworld run forceload remove 51975 51853 51988 52071
execute if score #scan_vilarles_castillo switch.data matches 1214 in switch:game run forceload remove 51975 51853 51988 52071

execute if score #scan_vilarles_castillo switch.data matches 1214 in minecraft:overworld run forceload remove 51988 51853 52000 52071
execute if score #scan_vilarles_castillo switch.data matches 1214 in switch:game run forceload remove 51988 51853 52000 52071

execute if score #scan_vilarles_castillo switch.data matches 1214 in minecraft:overworld run forceload remove 52000 51853 52013 52071
execute if score #scan_vilarles_castillo switch.data matches 1214 in switch:game run forceload remove 52000 51853 52013 52071

execute if score #scan_vilarles_castillo switch.data matches 1214 in minecraft:overworld run forceload remove 52013 51853 52025 52071
execute if score #scan_vilarles_castillo switch.data matches 1214 in switch:game run forceload remove 52013 51853 52025 52071

execute if score #scan_vilarles_castillo switch.data matches 1214 in minecraft:overworld run forceload remove 52025 51853 52038 52071
execute if score #scan_vilarles_castillo switch.data matches 1214 in switch:game run forceload remove 52025 51853 52038 52071

execute if score #scan_vilarles_castillo switch.data matches 1214 in minecraft:overworld run forceload remove 52038 51853 52051 52071
execute if score #scan_vilarles_castillo switch.data matches 1214 in switch:game run forceload remove 52038 51853 52051 52071

execute if score #scan_vilarles_castillo switch.data matches 1214 in minecraft:overworld run forceload remove 52051 51853 52063 52071
execute if score #scan_vilarles_castillo switch.data matches 1214 in switch:game run forceload remove 52051 51853 52063 52071

execute if score #scan_vilarles_castillo switch.data matches 1214 in minecraft:overworld run forceload remove 52063 51853 52076 52071
execute if score #scan_vilarles_castillo switch.data matches 1214 in switch:game run forceload remove 52063 51853 52076 52071

execute if score #scan_vilarles_castillo switch.data matches 1214 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"vilarles_castillo","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"60","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_vilarles_castillo switch.data matches 1214 run data remove storage switch:maps to_scan.vilarles_castillo
execute if score #scan_vilarles_castillo switch.data matches 1214 run scoreboard players reset #scan_vilarles_castillo switch.data

execute if score #scan_vilarles_castillo switch.data matches 1.. run schedule function switch:maps/survival/vilarles_castillo/scan_doors 1t

