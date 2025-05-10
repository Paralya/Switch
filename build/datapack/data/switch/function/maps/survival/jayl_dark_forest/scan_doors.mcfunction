
#> switch:maps/survival/jayl_dark_forest/scan_doors
#
# @within	switch:maps/survival/jayl_dark_forest/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_jayl_dark_forest switch.data 1

execute if score #scan_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 34000 34000 34021 34127
execute if score #scan_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 34000 34000 34021 34127

execute if score #scan_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 34021 34000 34042 34127
execute if score #scan_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 34021 34000 34042 34127

execute if score #scan_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 34042 34000 34062 34127
execute if score #scan_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 34042 34000 34062 34127

execute if score #scan_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 34062 34000 34083 34127
execute if score #scan_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 34062 34000 34083 34127

execute if score #scan_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 34083 34000 34104 34127
execute if score #scan_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 34083 34000 34104 34127

execute if score #scan_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 34104 34000 34125 34127
execute if score #scan_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 34104 34000 34125 34127

execute if score #scan_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 34125 34000 34145 34127
execute if score #scan_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 34125 34000 34145 34127

execute if score #scan_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 34145 34000 34166 34127
execute if score #scan_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 34145 34000 34166 34127

execute if score #scan_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 34166 34000 34187 34127
execute if score #scan_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 34166 34000 34187 34127

execute if score #scan_jayl_dark_forest switch.data matches 1 run data modify storage switch:maps to_scan.jayl_dark_forest set value 2b
execute if score #scan_jayl_dark_forest switch.data matches 1 run scoreboard players set #start_x_jayl_dark_forest switch.data 34001
execute if score #scan_jayl_dark_forest switch.data matches 1 run scoreboard players set #start_y_jayl_dark_forest switch.data 101
execute if score #scan_jayl_dark_forest switch.data matches 1 run scoreboard players set #start_z_jayl_dark_forest switch.data 34001
execute if score #scan_jayl_dark_forest switch.data matches 1 run scoreboard players set #end_x_jayl_dark_forest switch.data 34186
execute if score #scan_jayl_dark_forest switch.data matches 1 run scoreboard players set #end_y_jayl_dark_forest switch.data 189
execute if score #scan_jayl_dark_forest switch.data matches 1 run scoreboard players set #end_z_jayl_dark_forest switch.data 34126
execute if score #scan_jayl_dark_forest switch.data matches 1 run scoreboard players operation #curr_x_jayl_dark_forest switch.data = #start_x_jayl_dark_forest switch.data
execute if score #scan_jayl_dark_forest switch.data matches 1 run scoreboard players operation #curr_y_jayl_dark_forest switch.data = #start_y_jayl_dark_forest switch.data
execute if score #scan_jayl_dark_forest switch.data matches 1 run scoreboard players operation #curr_z_jayl_dark_forest switch.data = #start_z_jayl_dark_forest switch.data
execute if score #scan_jayl_dark_forest switch.data matches 1 run data modify storage switch:doors jayl_dark_forest set value []


execute if score #scan_jayl_dark_forest switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_jayl_dark_forest switch.data matches 30.. summon marker run function switch:maps/survival/jayl_dark_forest/scan_doors_on_marker

execute if score #scan_jayl_dark_forest switch.data matches 448 in minecraft:overworld run forceload remove 34000 34000 34021 34127
execute if score #scan_jayl_dark_forest switch.data matches 448 in switch:game run forceload remove 34000 34000 34021 34127

execute if score #scan_jayl_dark_forest switch.data matches 448 in minecraft:overworld run forceload remove 34021 34000 34042 34127
execute if score #scan_jayl_dark_forest switch.data matches 448 in switch:game run forceload remove 34021 34000 34042 34127

execute if score #scan_jayl_dark_forest switch.data matches 448 in minecraft:overworld run forceload remove 34042 34000 34062 34127
execute if score #scan_jayl_dark_forest switch.data matches 448 in switch:game run forceload remove 34042 34000 34062 34127

execute if score #scan_jayl_dark_forest switch.data matches 448 in minecraft:overworld run forceload remove 34062 34000 34083 34127
execute if score #scan_jayl_dark_forest switch.data matches 448 in switch:game run forceload remove 34062 34000 34083 34127

execute if score #scan_jayl_dark_forest switch.data matches 448 in minecraft:overworld run forceload remove 34083 34000 34104 34127
execute if score #scan_jayl_dark_forest switch.data matches 448 in switch:game run forceload remove 34083 34000 34104 34127

execute if score #scan_jayl_dark_forest switch.data matches 448 in minecraft:overworld run forceload remove 34104 34000 34125 34127
execute if score #scan_jayl_dark_forest switch.data matches 448 in switch:game run forceload remove 34104 34000 34125 34127

execute if score #scan_jayl_dark_forest switch.data matches 448 in minecraft:overworld run forceload remove 34125 34000 34145 34127
execute if score #scan_jayl_dark_forest switch.data matches 448 in switch:game run forceload remove 34125 34000 34145 34127

execute if score #scan_jayl_dark_forest switch.data matches 448 in minecraft:overworld run forceload remove 34145 34000 34166 34127
execute if score #scan_jayl_dark_forest switch.data matches 448 in switch:game run forceload remove 34145 34000 34166 34127

execute if score #scan_jayl_dark_forest switch.data matches 448 in minecraft:overworld run forceload remove 34166 34000 34187 34127
execute if score #scan_jayl_dark_forest switch.data matches 448 in switch:game run forceload remove 34166 34000 34187 34127

execute if score #scan_jayl_dark_forest switch.data matches 448 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"jayl_dark_forest","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"22","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_jayl_dark_forest switch.data matches 448 run data remove storage switch:maps to_scan.jayl_dark_forest
execute if score #scan_jayl_dark_forest switch.data matches 448 run scoreboard players reset #scan_jayl_dark_forest switch.data

execute if score #scan_jayl_dark_forest switch.data matches 1.. run schedule function switch:maps/survival/jayl_dark_forest/scan_doors 1t

