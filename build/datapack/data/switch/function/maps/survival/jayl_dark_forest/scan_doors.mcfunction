
#> switch:maps/survival/jayl_dark_forest/scan_doors
#
# @within	switch:maps/survival/jayl_dark_forest/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_jayl_dark_forest switch.data 1

execute if score #scan_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 6000 4000 6021 4127
execute if score #scan_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 6000 4000 6021 4127

execute if score #scan_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 6021 4000 6042 4127
execute if score #scan_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 6021 4000 6042 4127

execute if score #scan_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 6042 4000 6062 4127
execute if score #scan_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 6042 4000 6062 4127

execute if score #scan_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 6062 4000 6083 4127
execute if score #scan_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 6062 4000 6083 4127

execute if score #scan_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 6083 4000 6104 4127
execute if score #scan_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 6083 4000 6104 4127

execute if score #scan_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 6104 4000 6125 4127
execute if score #scan_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 6104 4000 6125 4127

execute if score #scan_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 6125 4000 6145 4127
execute if score #scan_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 6125 4000 6145 4127

execute if score #scan_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 6145 4000 6166 4127
execute if score #scan_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 6145 4000 6166 4127

execute if score #scan_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 6166 4000 6187 4127
execute if score #scan_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 6166 4000 6187 4127

execute if score #scan_jayl_dark_forest switch.data matches 1 run data modify storage switch:maps to_scan.jayl_dark_forest set value 2b
execute if score #scan_jayl_dark_forest switch.data matches 1 run scoreboard players set #start_x_jayl_dark_forest switch.data 6001
execute if score #scan_jayl_dark_forest switch.data matches 1 run scoreboard players set #start_y_jayl_dark_forest switch.data 101
execute if score #scan_jayl_dark_forest switch.data matches 1 run scoreboard players set #start_z_jayl_dark_forest switch.data 4001
execute if score #scan_jayl_dark_forest switch.data matches 1 run scoreboard players set #end_x_jayl_dark_forest switch.data 6186
execute if score #scan_jayl_dark_forest switch.data matches 1 run scoreboard players set #end_y_jayl_dark_forest switch.data 189
execute if score #scan_jayl_dark_forest switch.data matches 1 run scoreboard players set #end_z_jayl_dark_forest switch.data 4126
execute if score #scan_jayl_dark_forest switch.data matches 1 run scoreboard players operation #curr_x_jayl_dark_forest switch.data = #start_x_jayl_dark_forest switch.data
execute if score #scan_jayl_dark_forest switch.data matches 1 run scoreboard players operation #curr_y_jayl_dark_forest switch.data = #start_y_jayl_dark_forest switch.data
execute if score #scan_jayl_dark_forest switch.data matches 1 run scoreboard players operation #curr_z_jayl_dark_forest switch.data = #start_z_jayl_dark_forest switch.data
execute if score #scan_jayl_dark_forest switch.data matches 1 run data modify storage switch:doors jayl_dark_forest set value []

execute if score #scan_jayl_dark_forest switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_jayl_dark_forest switch.data matches 30.. summon marker run function switch:maps/survival/jayl_dark_forest/scan_doors_on_marker

execute if score #scan_jayl_dark_forest switch.data matches 448 in minecraft:overworld run forceload remove 6000 4000 6021 4127
execute if score #scan_jayl_dark_forest switch.data matches 448 in switch:game run forceload remove 6000 4000 6021 4127

execute if score #scan_jayl_dark_forest switch.data matches 448 in minecraft:overworld run forceload remove 6021 4000 6042 4127
execute if score #scan_jayl_dark_forest switch.data matches 448 in switch:game run forceload remove 6021 4000 6042 4127

execute if score #scan_jayl_dark_forest switch.data matches 448 in minecraft:overworld run forceload remove 6042 4000 6062 4127
execute if score #scan_jayl_dark_forest switch.data matches 448 in switch:game run forceload remove 6042 4000 6062 4127

execute if score #scan_jayl_dark_forest switch.data matches 448 in minecraft:overworld run forceload remove 6062 4000 6083 4127
execute if score #scan_jayl_dark_forest switch.data matches 448 in switch:game run forceload remove 6062 4000 6083 4127

execute if score #scan_jayl_dark_forest switch.data matches 448 in minecraft:overworld run forceload remove 6083 4000 6104 4127
execute if score #scan_jayl_dark_forest switch.data matches 448 in switch:game run forceload remove 6083 4000 6104 4127

execute if score #scan_jayl_dark_forest switch.data matches 448 in minecraft:overworld run forceload remove 6104 4000 6125 4127
execute if score #scan_jayl_dark_forest switch.data matches 448 in switch:game run forceload remove 6104 4000 6125 4127

execute if score #scan_jayl_dark_forest switch.data matches 448 in minecraft:overworld run forceload remove 6125 4000 6145 4127
execute if score #scan_jayl_dark_forest switch.data matches 448 in switch:game run forceload remove 6125 4000 6145 4127

execute if score #scan_jayl_dark_forest switch.data matches 448 in minecraft:overworld run forceload remove 6145 4000 6166 4127
execute if score #scan_jayl_dark_forest switch.data matches 448 in switch:game run forceload remove 6145 4000 6166 4127

execute if score #scan_jayl_dark_forest switch.data matches 448 in minecraft:overworld run forceload remove 6166 4000 6187 4127
execute if score #scan_jayl_dark_forest switch.data matches 448 in switch:game run forceload remove 6166 4000 6187 4127

execute if score #scan_jayl_dark_forest switch.data matches 448 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"jayl_dark_forest","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"22","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_jayl_dark_forest switch.data matches 448 run data remove storage switch:maps to_scan.jayl_dark_forest
execute if score #scan_jayl_dark_forest switch.data matches 448 run scoreboard players reset #scan_jayl_dark_forest switch.data

execute if score #scan_jayl_dark_forest switch.data matches 1.. run schedule function switch:maps/survival/jayl_dark_forest/scan_doors 1t

