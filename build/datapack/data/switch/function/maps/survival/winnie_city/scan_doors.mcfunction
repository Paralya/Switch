
#> switch:maps/survival/winnie_city/scan_doors
#
# @within	switch:maps/survival/winnie_city/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_winnie_city switch.data 1

execute if score #scan_winnie_city switch.data matches 1 in minecraft:overworld run forceload add 117000 117000 117020 117130
execute if score #scan_winnie_city switch.data matches 1 in switch:game run forceload add 117000 117000 117020 117130

execute if score #scan_winnie_city switch.data matches 1 in minecraft:overworld run forceload add 117020 117000 117040 117130
execute if score #scan_winnie_city switch.data matches 1 in switch:game run forceload add 117020 117000 117040 117130

execute if score #scan_winnie_city switch.data matches 1 in minecraft:overworld run forceload add 117040 117000 117060 117130
execute if score #scan_winnie_city switch.data matches 1 in switch:game run forceload add 117040 117000 117060 117130

execute if score #scan_winnie_city switch.data matches 1 in minecraft:overworld run forceload add 117060 117000 117079 117130
execute if score #scan_winnie_city switch.data matches 1 in switch:game run forceload add 117060 117000 117079 117130

execute if score #scan_winnie_city switch.data matches 1 in minecraft:overworld run forceload add 117079 117000 117099 117130
execute if score #scan_winnie_city switch.data matches 1 in switch:game run forceload add 117079 117000 117099 117130

execute if score #scan_winnie_city switch.data matches 1 in minecraft:overworld run forceload add 117099 117000 117119 117130
execute if score #scan_winnie_city switch.data matches 1 in switch:game run forceload add 117099 117000 117119 117130

execute if score #scan_winnie_city switch.data matches 1 run data modify storage switch:maps to_scan.winnie_city set value 2b
execute if score #scan_winnie_city switch.data matches 1 run scoreboard players set #start_x_winnie_city switch.data 117001
execute if score #scan_winnie_city switch.data matches 1 run scoreboard players set #start_y_winnie_city switch.data 1
execute if score #scan_winnie_city switch.data matches 1 run scoreboard players set #start_z_winnie_city switch.data 117001
execute if score #scan_winnie_city switch.data matches 1 run scoreboard players set #end_x_winnie_city switch.data 117118
execute if score #scan_winnie_city switch.data matches 1 run scoreboard players set #end_y_winnie_city switch.data 30
execute if score #scan_winnie_city switch.data matches 1 run scoreboard players set #end_z_winnie_city switch.data 117129
execute if score #scan_winnie_city switch.data matches 1 run scoreboard players operation #curr_x_winnie_city switch.data = #start_x_winnie_city switch.data
execute if score #scan_winnie_city switch.data matches 1 run scoreboard players operation #curr_y_winnie_city switch.data = #start_y_winnie_city switch.data
execute if score #scan_winnie_city switch.data matches 1 run scoreboard players operation #curr_z_winnie_city switch.data = #start_z_winnie_city switch.data
execute if score #scan_winnie_city switch.data matches 1 run data modify storage switch:doors winnie_city set value []

execute if score #scan_winnie_city switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_winnie_city switch.data matches 30.. summon marker run function switch:maps/survival/winnie_city/scan_doors_on_marker

execute if score #scan_winnie_city switch.data matches 122 in minecraft:overworld run forceload remove 117000 117000 117020 117130
execute if score #scan_winnie_city switch.data matches 122 in switch:game run forceload remove 117000 117000 117020 117130

execute if score #scan_winnie_city switch.data matches 122 in minecraft:overworld run forceload remove 117020 117000 117040 117130
execute if score #scan_winnie_city switch.data matches 122 in switch:game run forceload remove 117020 117000 117040 117130

execute if score #scan_winnie_city switch.data matches 122 in minecraft:overworld run forceload remove 117040 117000 117060 117130
execute if score #scan_winnie_city switch.data matches 122 in switch:game run forceload remove 117040 117000 117060 117130

execute if score #scan_winnie_city switch.data matches 122 in minecraft:overworld run forceload remove 117060 117000 117079 117130
execute if score #scan_winnie_city switch.data matches 122 in switch:game run forceload remove 117060 117000 117079 117130

execute if score #scan_winnie_city switch.data matches 122 in minecraft:overworld run forceload remove 117079 117000 117099 117130
execute if score #scan_winnie_city switch.data matches 122 in switch:game run forceload remove 117079 117000 117099 117130

execute if score #scan_winnie_city switch.data matches 122 in minecraft:overworld run forceload remove 117099 117000 117119 117130
execute if score #scan_winnie_city switch.data matches 122 in switch:game run forceload remove 117099 117000 117119 117130

execute if score #scan_winnie_city switch.data matches 122 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"winnie_city","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"6","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_winnie_city switch.data matches 122 run data remove storage switch:maps to_scan.winnie_city
execute if score #scan_winnie_city switch.data matches 122 run scoreboard players reset #scan_winnie_city switch.data

execute if score #scan_winnie_city switch.data matches 1.. run schedule function switch:maps/survival/winnie_city/scan_doors 1t

