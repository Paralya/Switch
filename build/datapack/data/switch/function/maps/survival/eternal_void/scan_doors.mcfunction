
#> switch:maps/survival/eternal_void/scan_doors
#
# @within	switch:maps/survival/eternal_void/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_eternal_void switch.data 1

execute if score #scan_eternal_void switch.data matches 1 in minecraft:overworld run forceload add 8000 -8000 8020 -7900
execute if score #scan_eternal_void switch.data matches 1 in switch:game run forceload add 8000 -8000 8020 -7900

execute if score #scan_eternal_void switch.data matches 1 in minecraft:overworld run forceload add 8020 -8000 8040 -7900
execute if score #scan_eternal_void switch.data matches 1 in switch:game run forceload add 8020 -8000 8040 -7900

execute if score #scan_eternal_void switch.data matches 1 in minecraft:overworld run forceload add 8040 -8000 8060 -7900
execute if score #scan_eternal_void switch.data matches 1 in switch:game run forceload add 8040 -8000 8060 -7900

execute if score #scan_eternal_void switch.data matches 1 in minecraft:overworld run forceload add 8060 -8000 8080 -7900
execute if score #scan_eternal_void switch.data matches 1 in switch:game run forceload add 8060 -8000 8080 -7900

execute if score #scan_eternal_void switch.data matches 1 in minecraft:overworld run forceload add 8080 -8000 8100 -7900
execute if score #scan_eternal_void switch.data matches 1 in switch:game run forceload add 8080 -8000 8100 -7900

execute if score #scan_eternal_void switch.data matches 1 run data modify storage switch:maps to_scan.eternal_void set value 2b
execute if score #scan_eternal_void switch.data matches 1 run scoreboard players set #start_x_eternal_void switch.data 8001
execute if score #scan_eternal_void switch.data matches 1 run scoreboard players set #start_y_eternal_void switch.data 101
execute if score #scan_eternal_void switch.data matches 1 run scoreboard players set #start_z_eternal_void switch.data -7999
execute if score #scan_eternal_void switch.data matches 1 run scoreboard players set #end_x_eternal_void switch.data 8099
execute if score #scan_eternal_void switch.data matches 1 run scoreboard players set #end_y_eternal_void switch.data 189
execute if score #scan_eternal_void switch.data matches 1 run scoreboard players set #end_z_eternal_void switch.data -7901
execute if score #scan_eternal_void switch.data matches 1 run scoreboard players operation #curr_x_eternal_void switch.data = #start_x_eternal_void switch.data
execute if score #scan_eternal_void switch.data matches 1 run scoreboard players operation #curr_y_eternal_void switch.data = #start_y_eternal_void switch.data
execute if score #scan_eternal_void switch.data matches 1 run scoreboard players operation #curr_z_eternal_void switch.data = #start_z_eternal_void switch.data
execute if score #scan_eternal_void switch.data matches 1 run data modify storage switch:doors eternal_void set value []

execute if score #scan_eternal_void switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_eternal_void switch.data matches 30.. summon marker run function switch:maps/survival/eternal_void/scan_doors_on_marker

execute if score #scan_eternal_void switch.data matches 205 in minecraft:overworld run forceload remove 8000 -8000 8020 -7900
execute if score #scan_eternal_void switch.data matches 205 in switch:game run forceload remove 8000 -8000 8020 -7900

execute if score #scan_eternal_void switch.data matches 205 in minecraft:overworld run forceload remove 8020 -8000 8040 -7900
execute if score #scan_eternal_void switch.data matches 205 in switch:game run forceload remove 8020 -8000 8040 -7900

execute if score #scan_eternal_void switch.data matches 205 in minecraft:overworld run forceload remove 8040 -8000 8060 -7900
execute if score #scan_eternal_void switch.data matches 205 in switch:game run forceload remove 8040 -8000 8060 -7900

execute if score #scan_eternal_void switch.data matches 205 in minecraft:overworld run forceload remove 8060 -8000 8080 -7900
execute if score #scan_eternal_void switch.data matches 205 in switch:game run forceload remove 8060 -8000 8080 -7900

execute if score #scan_eternal_void switch.data matches 205 in minecraft:overworld run forceload remove 8080 -8000 8100 -7900
execute if score #scan_eternal_void switch.data matches 205 in switch:game run forceload remove 8080 -8000 8100 -7900

execute if score #scan_eternal_void switch.data matches 205 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"eternal_void","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"10","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_eternal_void switch.data matches 205 run data remove storage switch:maps to_scan.eternal_void
execute if score #scan_eternal_void switch.data matches 205 run scoreboard players reset #scan_eternal_void switch.data

execute if score #scan_eternal_void switch.data matches 1.. run schedule function switch:maps/survival/eternal_void/scan_doors 1t

