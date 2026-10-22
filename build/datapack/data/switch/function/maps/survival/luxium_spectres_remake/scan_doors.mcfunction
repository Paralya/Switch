
#> switch:maps/survival/luxium_spectres_remake/scan_doors
#
# @within	switch:maps/survival/luxium_spectres_remake/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_luxium_spectres_remake switch.data 1

execute if score #scan_luxium_spectres_remake switch.data matches 1 in minecraft:overworld run forceload add -10000 4000 -9979 4106
execute if score #scan_luxium_spectres_remake switch.data matches 1 in switch:game run forceload add -10000 4000 -9979 4106

execute if score #scan_luxium_spectres_remake switch.data matches 1 in minecraft:overworld run forceload add -9979 4000 -9958 4106
execute if score #scan_luxium_spectres_remake switch.data matches 1 in switch:game run forceload add -9979 4000 -9958 4106

execute if score #scan_luxium_spectres_remake switch.data matches 1 in minecraft:overworld run forceload add -9958 4000 -9936 4106
execute if score #scan_luxium_spectres_remake switch.data matches 1 in switch:game run forceload add -9958 4000 -9936 4106

execute if score #scan_luxium_spectres_remake switch.data matches 1 in minecraft:overworld run forceload add -9936 4000 -9915 4106
execute if score #scan_luxium_spectres_remake switch.data matches 1 in switch:game run forceload add -9936 4000 -9915 4106

execute if score #scan_luxium_spectres_remake switch.data matches 1 in minecraft:overworld run forceload add -9915 4000 -9894 4106
execute if score #scan_luxium_spectres_remake switch.data matches 1 in switch:game run forceload add -9915 4000 -9894 4106

execute if score #scan_luxium_spectres_remake switch.data matches 1 run data modify storage switch:maps to_scan.luxium_spectres_remake set value 2b
execute if score #scan_luxium_spectres_remake switch.data matches 1 run scoreboard players set #start_x_luxium_spectres_remake switch.data -9999
execute if score #scan_luxium_spectres_remake switch.data matches 1 run scoreboard players set #start_y_luxium_spectres_remake switch.data 101
execute if score #scan_luxium_spectres_remake switch.data matches 1 run scoreboard players set #start_z_luxium_spectres_remake switch.data 4001
execute if score #scan_luxium_spectres_remake switch.data matches 1 run scoreboard players set #end_x_luxium_spectres_remake switch.data -9895
execute if score #scan_luxium_spectres_remake switch.data matches 1 run scoreboard players set #end_y_luxium_spectres_remake switch.data 181
execute if score #scan_luxium_spectres_remake switch.data matches 1 run scoreboard players set #end_z_luxium_spectres_remake switch.data 4105
execute if score #scan_luxium_spectres_remake switch.data matches 1 run scoreboard players operation #curr_x_luxium_spectres_remake switch.data = #start_x_luxium_spectres_remake switch.data
execute if score #scan_luxium_spectres_remake switch.data matches 1 run scoreboard players operation #curr_y_luxium_spectres_remake switch.data = #start_y_luxium_spectres_remake switch.data
execute if score #scan_luxium_spectres_remake switch.data matches 1 run scoreboard players operation #curr_z_luxium_spectres_remake switch.data = #start_z_luxium_spectres_remake switch.data
execute if score #scan_luxium_spectres_remake switch.data matches 1 run data modify storage switch:doors luxium_spectres_remake set value []

execute if score #scan_luxium_spectres_remake switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_luxium_spectres_remake switch.data matches 30.. summon marker run function switch:maps/survival/luxium_spectres_remake/scan_doors_on_marker

execute if score #scan_luxium_spectres_remake switch.data matches 209 in minecraft:overworld run forceload remove -10000 4000 -9979 4106
execute if score #scan_luxium_spectres_remake switch.data matches 209 in switch:game run forceload remove -10000 4000 -9979 4106

execute if score #scan_luxium_spectres_remake switch.data matches 209 in minecraft:overworld run forceload remove -9979 4000 -9958 4106
execute if score #scan_luxium_spectres_remake switch.data matches 209 in switch:game run forceload remove -9979 4000 -9958 4106

execute if score #scan_luxium_spectres_remake switch.data matches 209 in minecraft:overworld run forceload remove -9958 4000 -9936 4106
execute if score #scan_luxium_spectres_remake switch.data matches 209 in switch:game run forceload remove -9958 4000 -9936 4106

execute if score #scan_luxium_spectres_remake switch.data matches 209 in minecraft:overworld run forceload remove -9936 4000 -9915 4106
execute if score #scan_luxium_spectres_remake switch.data matches 209 in switch:game run forceload remove -9936 4000 -9915 4106

execute if score #scan_luxium_spectres_remake switch.data matches 209 in minecraft:overworld run forceload remove -9915 4000 -9894 4106
execute if score #scan_luxium_spectres_remake switch.data matches 209 in switch:game run forceload remove -9915 4000 -9894 4106

execute if score #scan_luxium_spectres_remake switch.data matches 209 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"luxium_spectres_remake","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"10","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_luxium_spectres_remake switch.data matches 209 run data remove storage switch:maps to_scan.luxium_spectres_remake
execute if score #scan_luxium_spectres_remake switch.data matches 209 run scoreboard players reset #scan_luxium_spectres_remake switch.data

execute if score #scan_luxium_spectres_remake switch.data matches 1.. run schedule function switch:maps/survival/luxium_spectres_remake/scan_doors 1t

