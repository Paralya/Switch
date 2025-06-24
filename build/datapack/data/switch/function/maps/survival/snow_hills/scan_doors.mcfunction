
#> switch:maps/survival/snow_hills/scan_doors
#
# @within	switch:maps/survival/snow_hills/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_snow_hills switch.data 1

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50000 50000 50016 50185
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 50000 50000 50016 50185

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50016 50000 50032 50185
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 50016 50000 50032 50185

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50032 50000 50048 50185
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 50032 50000 50048 50185

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50048 50000 50064 50185
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 50048 50000 50064 50185

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50064 50000 50080 50185
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 50064 50000 50080 50185

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50080 50000 50096 50185
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 50080 50000 50096 50185

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50096 50000 50112 50185
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 50096 50000 50112 50185

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50112 50000 50127 50185
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 50112 50000 50127 50185

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50127 50000 50143 50185
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 50127 50000 50143 50185

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50143 50000 50159 50185
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 50143 50000 50159 50185

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50159 50000 50175 50185
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 50159 50000 50175 50185

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50175 50000 50191 50185
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 50175 50000 50191 50185

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50191 50000 50207 50185
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 50191 50000 50207 50185

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50207 50000 50223 50185
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 50207 50000 50223 50185

execute if score #scan_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50223 50000 50239 50185
execute if score #scan_snow_hills switch.data matches 1 in switch:game run forceload add 50223 50000 50239 50185

execute if score #scan_snow_hills switch.data matches 1 run data modify storage switch:maps to_scan.snow_hills set value 2b
execute if score #scan_snow_hills switch.data matches 1 run scoreboard players set #start_x_snow_hills switch.data 50001
execute if score #scan_snow_hills switch.data matches 1 run scoreboard players set #start_y_snow_hills switch.data 101
execute if score #scan_snow_hills switch.data matches 1 run scoreboard players set #start_z_snow_hills switch.data 50001
execute if score #scan_snow_hills switch.data matches 1 run scoreboard players set #end_x_snow_hills switch.data 50238
execute if score #scan_snow_hills switch.data matches 1 run scoreboard players set #end_y_snow_hills switch.data 159
execute if score #scan_snow_hills switch.data matches 1 run scoreboard players set #end_z_snow_hills switch.data 50184
execute if score #scan_snow_hills switch.data matches 1 run scoreboard players operation #curr_x_snow_hills switch.data = #start_x_snow_hills switch.data
execute if score #scan_snow_hills switch.data matches 1 run scoreboard players operation #curr_y_snow_hills switch.data = #start_y_snow_hills switch.data
execute if score #scan_snow_hills switch.data matches 1 run scoreboard players operation #curr_z_snow_hills switch.data = #start_z_snow_hills switch.data
execute if score #scan_snow_hills switch.data matches 1 run data modify storage switch:doors snow_hills set value []

execute if score #scan_snow_hills switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_snow_hills switch.data matches 30.. summon marker run function switch:maps/survival/snow_hills/scan_doors_on_marker

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 50000 50000 50016 50185
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 50000 50000 50016 50185

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 50016 50000 50032 50185
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 50016 50000 50032 50185

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 50032 50000 50048 50185
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 50032 50000 50048 50185

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 50048 50000 50064 50185
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 50048 50000 50064 50185

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 50064 50000 50080 50185
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 50064 50000 50080 50185

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 50080 50000 50096 50185
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 50080 50000 50096 50185

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 50096 50000 50112 50185
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 50096 50000 50112 50185

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 50112 50000 50127 50185
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 50112 50000 50127 50185

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 50127 50000 50143 50185
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 50127 50000 50143 50185

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 50143 50000 50159 50185
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 50143 50000 50159 50185

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 50159 50000 50175 50185
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 50159 50000 50175 50185

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 50175 50000 50191 50185
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 50175 50000 50191 50185

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 50191 50000 50207 50185
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 50191 50000 50207 50185

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 50207 50000 50223 50185
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 50207 50000 50223 50185

execute if score #scan_snow_hills switch.data matches 547 in minecraft:overworld run forceload remove 50223 50000 50239 50185
execute if score #scan_snow_hills switch.data matches 547 in switch:game run forceload remove 50223 50000 50239 50185

execute if score #scan_snow_hills switch.data matches 547 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"snow_hills","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"27","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_snow_hills switch.data matches 547 run data remove storage switch:maps to_scan.snow_hills
execute if score #scan_snow_hills switch.data matches 547 run scoreboard players reset #scan_snow_hills switch.data

execute if score #scan_snow_hills switch.data matches 1.. run schedule function switch:maps/survival/snow_hills/scan_doors 1t

