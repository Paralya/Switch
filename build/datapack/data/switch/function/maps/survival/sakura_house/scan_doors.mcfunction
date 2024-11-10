
#> switch:maps/survival/sakura_house/scan_doors
#
# @within	switch:maps/survival/sakura_house/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_sakura_house switch.data 1

execute if score #scan_sakura_house switch.data matches 1 in minecraft:overworld run forceload add 86000 86000 86017 86135
execute if score #scan_sakura_house switch.data matches 1 in switch:game run forceload add 86000 86000 86017 86135

execute if score #scan_sakura_house switch.data matches 1 in minecraft:overworld run forceload add 86017 86000 86035 86135
execute if score #scan_sakura_house switch.data matches 1 in switch:game run forceload add 86017 86000 86035 86135

execute if score #scan_sakura_house switch.data matches 1 in minecraft:overworld run forceload add 86035 86000 86052 86135
execute if score #scan_sakura_house switch.data matches 1 in switch:game run forceload add 86035 86000 86052 86135

execute if score #scan_sakura_house switch.data matches 1 in minecraft:overworld run forceload add 86052 86000 86069 86135
execute if score #scan_sakura_house switch.data matches 1 in switch:game run forceload add 86052 86000 86069 86135

execute if score #scan_sakura_house switch.data matches 1 in minecraft:overworld run forceload add 86069 86000 86086 86135
execute if score #scan_sakura_house switch.data matches 1 in switch:game run forceload add 86069 86000 86086 86135

execute if score #scan_sakura_house switch.data matches 1 in minecraft:overworld run forceload add 86086 86000 86104 86135
execute if score #scan_sakura_house switch.data matches 1 in switch:game run forceload add 86086 86000 86104 86135

execute if score #scan_sakura_house switch.data matches 1 in minecraft:overworld run forceload add 86104 86000 86121 86135
execute if score #scan_sakura_house switch.data matches 1 in switch:game run forceload add 86104 86000 86121 86135

execute if score #scan_sakura_house switch.data matches 1 run data modify storage switch:maps to_scan.sakura_house set value 2b
execute if score #scan_sakura_house switch.data matches 1 run scoreboard players set #start_x_sakura_house switch.data 86001
execute if score #scan_sakura_house switch.data matches 1 run scoreboard players set #start_y_sakura_house switch.data 1
execute if score #scan_sakura_house switch.data matches 1 run scoreboard players set #start_z_sakura_house switch.data 86001
execute if score #scan_sakura_house switch.data matches 1 run scoreboard players set #end_x_sakura_house switch.data 86120
execute if score #scan_sakura_house switch.data matches 1 run scoreboard players set #end_y_sakura_house switch.data 93
execute if score #scan_sakura_house switch.data matches 1 run scoreboard players set #end_z_sakura_house switch.data 86134
execute if score #scan_sakura_house switch.data matches 1 run scoreboard players operation #curr_x_sakura_house switch.data = #start_x_sakura_house switch.data
execute if score #scan_sakura_house switch.data matches 1 run scoreboard players operation #curr_y_sakura_house switch.data = #start_y_sakura_house switch.data
execute if score #scan_sakura_house switch.data matches 1 run scoreboard players operation #curr_z_sakura_house switch.data = #start_z_sakura_house switch.data
execute if score #scan_sakura_house switch.data matches 1 run data modify storage switch:doors sakura_house set value []


execute if score #scan_sakura_house switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_sakura_house switch.data matches 30.. summon marker run function switch:maps/survival/sakura_house/scan_doors_on_marker

execute if score #scan_sakura_house switch.data matches 330 in minecraft:overworld run forceload remove 86000 86000 86017 86135
execute if score #scan_sakura_house switch.data matches 330 in switch:game run forceload remove 86000 86000 86017 86135

execute if score #scan_sakura_house switch.data matches 330 in minecraft:overworld run forceload remove 86017 86000 86035 86135
execute if score #scan_sakura_house switch.data matches 330 in switch:game run forceload remove 86017 86000 86035 86135

execute if score #scan_sakura_house switch.data matches 330 in minecraft:overworld run forceload remove 86035 86000 86052 86135
execute if score #scan_sakura_house switch.data matches 330 in switch:game run forceload remove 86035 86000 86052 86135

execute if score #scan_sakura_house switch.data matches 330 in minecraft:overworld run forceload remove 86052 86000 86069 86135
execute if score #scan_sakura_house switch.data matches 330 in switch:game run forceload remove 86052 86000 86069 86135

execute if score #scan_sakura_house switch.data matches 330 in minecraft:overworld run forceload remove 86069 86000 86086 86135
execute if score #scan_sakura_house switch.data matches 330 in switch:game run forceload remove 86069 86000 86086 86135

execute if score #scan_sakura_house switch.data matches 330 in minecraft:overworld run forceload remove 86086 86000 86104 86135
execute if score #scan_sakura_house switch.data matches 330 in switch:game run forceload remove 86086 86000 86104 86135

execute if score #scan_sakura_house switch.data matches 330 in minecraft:overworld run forceload remove 86104 86000 86121 86135
execute if score #scan_sakura_house switch.data matches 330 in switch:game run forceload remove 86104 86000 86121 86135

execute if score #scan_sakura_house switch.data matches 330 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"sakura_house","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"16","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_sakura_house switch.data matches 330 run data remove storage switch:maps to_scan.sakura_house
execute if score #scan_sakura_house switch.data matches 330 run scoreboard players reset #scan_sakura_house switch.data

execute if score #scan_sakura_house switch.data matches 1.. run schedule function switch:maps/survival/sakura_house/scan_doors 1t

