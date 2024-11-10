
#> switch:maps/survival/jayl_dark_forest/scan_doors
#
# @within	switch:maps/survival/jayl_dark_forest/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_jayl_dark_forest switch.data 1

execute if score #scan_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 33813 33873 33834 34000
execute if score #scan_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 33813 33873 33834 34000

execute if score #scan_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 33834 33873 33855 34000
execute if score #scan_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 33834 33873 33855 34000

execute if score #scan_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 33855 33873 33875 34000
execute if score #scan_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 33855 33873 33875 34000

execute if score #scan_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 33875 33873 33896 34000
execute if score #scan_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 33875 33873 33896 34000

execute if score #scan_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 33896 33873 33917 34000
execute if score #scan_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 33896 33873 33917 34000

execute if score #scan_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 33917 33873 33938 34000
execute if score #scan_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 33917 33873 33938 34000

execute if score #scan_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 33938 33873 33958 34000
execute if score #scan_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 33938 33873 33958 34000

execute if score #scan_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 33958 33873 33979 34000
execute if score #scan_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 33958 33873 33979 34000

execute if score #scan_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 33979 33873 34000 34000
execute if score #scan_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 33979 33873 34000 34000

execute if score #scan_jayl_dark_forest switch.data matches 1 run data modify storage switch:maps to_scan.jayl_dark_forest set value 2b
execute if score #scan_jayl_dark_forest switch.data matches 1 run scoreboard players set #start_x_jayl_dark_forest switch.data 33814
execute if score #scan_jayl_dark_forest switch.data matches 1 run scoreboard players set #start_y_jayl_dark_forest switch.data 1
execute if score #scan_jayl_dark_forest switch.data matches 1 run scoreboard players set #start_z_jayl_dark_forest switch.data 33874
execute if score #scan_jayl_dark_forest switch.data matches 1 run scoreboard players set #end_x_jayl_dark_forest switch.data 33999
execute if score #scan_jayl_dark_forest switch.data matches 1 run scoreboard players set #end_y_jayl_dark_forest switch.data 88
execute if score #scan_jayl_dark_forest switch.data matches 1 run scoreboard players set #end_z_jayl_dark_forest switch.data 33999
execute if score #scan_jayl_dark_forest switch.data matches 1 run scoreboard players operation #curr_x_jayl_dark_forest switch.data = #start_x_jayl_dark_forest switch.data
execute if score #scan_jayl_dark_forest switch.data matches 1 run scoreboard players operation #curr_y_jayl_dark_forest switch.data = #start_y_jayl_dark_forest switch.data
execute if score #scan_jayl_dark_forest switch.data matches 1 run scoreboard players operation #curr_z_jayl_dark_forest switch.data = #start_z_jayl_dark_forest switch.data
execute if score #scan_jayl_dark_forest switch.data matches 1 run data modify storage switch:doors jayl_dark_forest set value []


execute if score #scan_jayl_dark_forest switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_jayl_dark_forest switch.data matches 30.. summon marker run function switch:maps/survival/jayl_dark_forest/scan_doors_on_marker

execute if score #scan_jayl_dark_forest switch.data matches 443 in minecraft:overworld run forceload remove 33813 33873 33834 34000
execute if score #scan_jayl_dark_forest switch.data matches 443 in switch:game run forceload remove 33813 33873 33834 34000

execute if score #scan_jayl_dark_forest switch.data matches 443 in minecraft:overworld run forceload remove 33834 33873 33855 34000
execute if score #scan_jayl_dark_forest switch.data matches 443 in switch:game run forceload remove 33834 33873 33855 34000

execute if score #scan_jayl_dark_forest switch.data matches 443 in minecraft:overworld run forceload remove 33855 33873 33875 34000
execute if score #scan_jayl_dark_forest switch.data matches 443 in switch:game run forceload remove 33855 33873 33875 34000

execute if score #scan_jayl_dark_forest switch.data matches 443 in minecraft:overworld run forceload remove 33875 33873 33896 34000
execute if score #scan_jayl_dark_forest switch.data matches 443 in switch:game run forceload remove 33875 33873 33896 34000

execute if score #scan_jayl_dark_forest switch.data matches 443 in minecraft:overworld run forceload remove 33896 33873 33917 34000
execute if score #scan_jayl_dark_forest switch.data matches 443 in switch:game run forceload remove 33896 33873 33917 34000

execute if score #scan_jayl_dark_forest switch.data matches 443 in minecraft:overworld run forceload remove 33917 33873 33938 34000
execute if score #scan_jayl_dark_forest switch.data matches 443 in switch:game run forceload remove 33917 33873 33938 34000

execute if score #scan_jayl_dark_forest switch.data matches 443 in minecraft:overworld run forceload remove 33938 33873 33958 34000
execute if score #scan_jayl_dark_forest switch.data matches 443 in switch:game run forceload remove 33938 33873 33958 34000

execute if score #scan_jayl_dark_forest switch.data matches 443 in minecraft:overworld run forceload remove 33958 33873 33979 34000
execute if score #scan_jayl_dark_forest switch.data matches 443 in switch:game run forceload remove 33958 33873 33979 34000

execute if score #scan_jayl_dark_forest switch.data matches 443 in minecraft:overworld run forceload remove 33979 33873 34000 34000
execute if score #scan_jayl_dark_forest switch.data matches 443 in switch:game run forceload remove 33979 33873 34000 34000

execute if score #scan_jayl_dark_forest switch.data matches 443 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"jayl_dark_forest","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"22","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_jayl_dark_forest switch.data matches 443 run data remove storage switch:maps to_scan.jayl_dark_forest
execute if score #scan_jayl_dark_forest switch.data matches 443 run scoreboard players reset #scan_jayl_dark_forest switch.data

execute if score #scan_jayl_dark_forest switch.data matches 1.. run schedule function switch:maps/survival/jayl_dark_forest/scan_doors 1t

