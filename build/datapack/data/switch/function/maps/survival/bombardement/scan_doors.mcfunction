
#> switch:maps/survival/bombardement/scan_doors
#
# @within	switch:maps/survival/bombardement/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_bombardement switch.data 1

execute if score #scan_bombardement switch.data matches 1 in minecraft:overworld run forceload add 121000 121000 121023 121087
execute if score #scan_bombardement switch.data matches 1 in switch:game run forceload add 121000 121000 121023 121087

execute if score #scan_bombardement switch.data matches 1 in minecraft:overworld run forceload add 121023 121000 121046 121087
execute if score #scan_bombardement switch.data matches 1 in switch:game run forceload add 121023 121000 121046 121087

execute if score #scan_bombardement switch.data matches 1 in minecraft:overworld run forceload add 121046 121000 121069 121087
execute if score #scan_bombardement switch.data matches 1 in switch:game run forceload add 121046 121000 121069 121087

execute if score #scan_bombardement switch.data matches 1 in minecraft:overworld run forceload add 121069 121000 121092 121087
execute if score #scan_bombardement switch.data matches 1 in switch:game run forceload add 121069 121000 121092 121087

execute if score #scan_bombardement switch.data matches 1 in minecraft:overworld run forceload add 121092 121000 121115 121087
execute if score #scan_bombardement switch.data matches 1 in switch:game run forceload add 121092 121000 121115 121087

execute if score #scan_bombardement switch.data matches 1 run data modify storage switch:maps to_scan.bombardement set value 2b
execute if score #scan_bombardement switch.data matches 1 run scoreboard players set #start_x_bombardement switch.data 121001
execute if score #scan_bombardement switch.data matches 1 run scoreboard players set #start_y_bombardement switch.data 1
execute if score #scan_bombardement switch.data matches 1 run scoreboard players set #start_z_bombardement switch.data 121001
execute if score #scan_bombardement switch.data matches 1 run scoreboard players set #end_x_bombardement switch.data 121114
execute if score #scan_bombardement switch.data matches 1 run scoreboard players set #end_y_bombardement switch.data 76
execute if score #scan_bombardement switch.data matches 1 run scoreboard players set #end_z_bombardement switch.data 121086
execute if score #scan_bombardement switch.data matches 1 run scoreboard players operation #curr_x_bombardement switch.data = #start_x_bombardement switch.data
execute if score #scan_bombardement switch.data matches 1 run scoreboard players operation #curr_y_bombardement switch.data = #start_y_bombardement switch.data
execute if score #scan_bombardement switch.data matches 1 run scoreboard players operation #curr_z_bombardement switch.data = #start_z_bombardement switch.data
execute if score #scan_bombardement switch.data matches 1 run data modify storage switch:doors bombardement set value []


execute if score #scan_bombardement switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_bombardement switch.data matches 30.. summon marker run function switch:maps/survival/bombardement/scan_doors_on_marker

execute if score #scan_bombardement switch.data matches 180 in minecraft:overworld run forceload remove 121000 121000 121023 121087
execute if score #scan_bombardement switch.data matches 180 in switch:game run forceload remove 121000 121000 121023 121087

execute if score #scan_bombardement switch.data matches 180 in minecraft:overworld run forceload remove 121023 121000 121046 121087
execute if score #scan_bombardement switch.data matches 180 in switch:game run forceload remove 121023 121000 121046 121087

execute if score #scan_bombardement switch.data matches 180 in minecraft:overworld run forceload remove 121046 121000 121069 121087
execute if score #scan_bombardement switch.data matches 180 in switch:game run forceload remove 121046 121000 121069 121087

execute if score #scan_bombardement switch.data matches 180 in minecraft:overworld run forceload remove 121069 121000 121092 121087
execute if score #scan_bombardement switch.data matches 180 in switch:game run forceload remove 121069 121000 121092 121087

execute if score #scan_bombardement switch.data matches 180 in minecraft:overworld run forceload remove 121092 121000 121115 121087
execute if score #scan_bombardement switch.data matches 180 in switch:game run forceload remove 121092 121000 121115 121087

execute if score #scan_bombardement switch.data matches 180 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"bombardement","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"9","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_bombardement switch.data matches 180 run data remove storage switch:maps to_scan.bombardement
execute if score #scan_bombardement switch.data matches 180 run scoreboard players reset #scan_bombardement switch.data

execute if score #scan_bombardement switch.data matches 1.. run schedule function switch:maps/survival/bombardement/scan_doors 1t

