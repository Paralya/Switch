
#> switch:maps/survival/jn_ice_castles/scan_doors
#
# @within	switch:maps/survival/jn_ice_castles/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_jn_ice_castles switch.data 1

execute if score #scan_jn_ice_castles switch.data matches 1 in minecraft:overworld run forceload add 133000 133000 133014 133130
execute if score #scan_jn_ice_castles switch.data matches 1 in switch:game run forceload add 133000 133000 133014 133130

execute if score #scan_jn_ice_castles switch.data matches 1 in minecraft:overworld run forceload add 133014 133000 133027 133130
execute if score #scan_jn_ice_castles switch.data matches 1 in switch:game run forceload add 133014 133000 133027 133130

execute if score #scan_jn_ice_castles switch.data matches 1 in minecraft:overworld run forceload add 133027 133000 133040 133130
execute if score #scan_jn_ice_castles switch.data matches 1 in switch:game run forceload add 133027 133000 133040 133130

execute if score #scan_jn_ice_castles switch.data matches 1 in minecraft:overworld run forceload add 133040 133000 133054 133130
execute if score #scan_jn_ice_castles switch.data matches 1 in switch:game run forceload add 133040 133000 133054 133130

execute if score #scan_jn_ice_castles switch.data matches 1 run data modify storage switch:maps to_scan.jn_ice_castles set value 2b
execute if score #scan_jn_ice_castles switch.data matches 1 run scoreboard players set #start_x_jn_ice_castles switch.data 133001
execute if score #scan_jn_ice_castles switch.data matches 1 run scoreboard players set #start_y_jn_ice_castles switch.data 1
execute if score #scan_jn_ice_castles switch.data matches 1 run scoreboard players set #start_z_jn_ice_castles switch.data 133001
execute if score #scan_jn_ice_castles switch.data matches 1 run scoreboard players set #end_x_jn_ice_castles switch.data 133053
execute if score #scan_jn_ice_castles switch.data matches 1 run scoreboard players set #end_y_jn_ice_castles switch.data 52
execute if score #scan_jn_ice_castles switch.data matches 1 run scoreboard players set #end_z_jn_ice_castles switch.data 133129
execute if score #scan_jn_ice_castles switch.data matches 1 run scoreboard players operation #curr_x_jn_ice_castles switch.data = #start_x_jn_ice_castles switch.data
execute if score #scan_jn_ice_castles switch.data matches 1 run scoreboard players operation #curr_y_jn_ice_castles switch.data = #start_y_jn_ice_castles switch.data
execute if score #scan_jn_ice_castles switch.data matches 1 run scoreboard players operation #curr_z_jn_ice_castles switch.data = #start_z_jn_ice_castles switch.data
execute if score #scan_jn_ice_castles switch.data matches 1 run data modify storage switch:doors jn_ice_castles set value []


execute if score #scan_jn_ice_castles switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_jn_ice_castles switch.data matches 30.. summon marker run function switch:maps/survival/jn_ice_castles/scan_doors_on_marker

execute if score #scan_jn_ice_castles switch.data matches 102 in minecraft:overworld run forceload remove 133000 133000 133014 133130
execute if score #scan_jn_ice_castles switch.data matches 102 in switch:game run forceload remove 133000 133000 133014 133130

execute if score #scan_jn_ice_castles switch.data matches 102 in minecraft:overworld run forceload remove 133014 133000 133027 133130
execute if score #scan_jn_ice_castles switch.data matches 102 in switch:game run forceload remove 133014 133000 133027 133130

execute if score #scan_jn_ice_castles switch.data matches 102 in minecraft:overworld run forceload remove 133027 133000 133040 133130
execute if score #scan_jn_ice_castles switch.data matches 102 in switch:game run forceload remove 133027 133000 133040 133130

execute if score #scan_jn_ice_castles switch.data matches 102 in minecraft:overworld run forceload remove 133040 133000 133054 133130
execute if score #scan_jn_ice_castles switch.data matches 102 in switch:game run forceload remove 133040 133000 133054 133130

execute if score #scan_jn_ice_castles switch.data matches 102 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"jn_ice_castles","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"5","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_jn_ice_castles switch.data matches 102 run data remove storage switch:maps to_scan.jn_ice_castles
execute if score #scan_jn_ice_castles switch.data matches 102 run scoreboard players reset #scan_jn_ice_castles switch.data

execute if score #scan_jn_ice_castles switch.data matches 1.. run schedule function switch:maps/survival/jn_ice_castles/scan_doors 1t

