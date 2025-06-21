
#> switch:maps/survival/survival_boat/scan_doors
#
# @within	switch:maps/survival/survival_boat/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_survival_boat switch.data 1

execute if score #scan_survival_boat switch.data matches 1 in minecraft:overworld run forceload add 79000 79000 79021 79102
execute if score #scan_survival_boat switch.data matches 1 in switch:game run forceload add 79000 79000 79021 79102

execute if score #scan_survival_boat switch.data matches 1 in minecraft:overworld run forceload add 79021 79000 79042 79102
execute if score #scan_survival_boat switch.data matches 1 in switch:game run forceload add 79021 79000 79042 79102

execute if score #scan_survival_boat switch.data matches 1 in minecraft:overworld run forceload add 79042 79000 79063 79102
execute if score #scan_survival_boat switch.data matches 1 in switch:game run forceload add 79042 79000 79063 79102

execute if score #scan_survival_boat switch.data matches 1 in minecraft:overworld run forceload add 79063 79000 79084 79102
execute if score #scan_survival_boat switch.data matches 1 in switch:game run forceload add 79063 79000 79084 79102

execute if score #scan_survival_boat switch.data matches 1 in minecraft:overworld run forceload add 79084 79000 79105 79102
execute if score #scan_survival_boat switch.data matches 1 in switch:game run forceload add 79084 79000 79105 79102

execute if score #scan_survival_boat switch.data matches 1 in minecraft:overworld run forceload add 79105 79000 79126 79102
execute if score #scan_survival_boat switch.data matches 1 in switch:game run forceload add 79105 79000 79126 79102

execute if score #scan_survival_boat switch.data matches 1 run data modify storage switch:maps to_scan.survival_boat set value 2b
execute if score #scan_survival_boat switch.data matches 1 run scoreboard players set #start_x_survival_boat switch.data 79001
execute if score #scan_survival_boat switch.data matches 1 run scoreboard players set #start_y_survival_boat switch.data 1
execute if score #scan_survival_boat switch.data matches 1 run scoreboard players set #start_z_survival_boat switch.data 79001
execute if score #scan_survival_boat switch.data matches 1 run scoreboard players set #end_x_survival_boat switch.data 79125
execute if score #scan_survival_boat switch.data matches 1 run scoreboard players set #end_y_survival_boat switch.data 98
execute if score #scan_survival_boat switch.data matches 1 run scoreboard players set #end_z_survival_boat switch.data 79101
execute if score #scan_survival_boat switch.data matches 1 run scoreboard players operation #curr_x_survival_boat switch.data = #start_x_survival_boat switch.data
execute if score #scan_survival_boat switch.data matches 1 run scoreboard players operation #curr_y_survival_boat switch.data = #start_y_survival_boat switch.data
execute if score #scan_survival_boat switch.data matches 1 run scoreboard players operation #curr_z_survival_boat switch.data = #start_z_survival_boat switch.data
execute if score #scan_survival_boat switch.data matches 1 run data modify storage switch:doors survival_boat set value []

execute if score #scan_survival_boat switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_survival_boat switch.data matches 30.. summon marker run function switch:maps/survival/survival_boat/scan_doors_on_marker

execute if score #scan_survival_boat switch.data matches 278 in minecraft:overworld run forceload remove 79000 79000 79021 79102
execute if score #scan_survival_boat switch.data matches 278 in switch:game run forceload remove 79000 79000 79021 79102

execute if score #scan_survival_boat switch.data matches 278 in minecraft:overworld run forceload remove 79021 79000 79042 79102
execute if score #scan_survival_boat switch.data matches 278 in switch:game run forceload remove 79021 79000 79042 79102

execute if score #scan_survival_boat switch.data matches 278 in minecraft:overworld run forceload remove 79042 79000 79063 79102
execute if score #scan_survival_boat switch.data matches 278 in switch:game run forceload remove 79042 79000 79063 79102

execute if score #scan_survival_boat switch.data matches 278 in minecraft:overworld run forceload remove 79063 79000 79084 79102
execute if score #scan_survival_boat switch.data matches 278 in switch:game run forceload remove 79063 79000 79084 79102

execute if score #scan_survival_boat switch.data matches 278 in minecraft:overworld run forceload remove 79084 79000 79105 79102
execute if score #scan_survival_boat switch.data matches 278 in switch:game run forceload remove 79084 79000 79105 79102

execute if score #scan_survival_boat switch.data matches 278 in minecraft:overworld run forceload remove 79105 79000 79126 79102
execute if score #scan_survival_boat switch.data matches 278 in switch:game run forceload remove 79105 79000 79126 79102

execute if score #scan_survival_boat switch.data matches 278 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"survival_boat","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"13","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_survival_boat switch.data matches 278 run data remove storage switch:maps to_scan.survival_boat
execute if score #scan_survival_boat switch.data matches 278 run scoreboard players reset #scan_survival_boat switch.data

execute if score #scan_survival_boat switch.data matches 1.. run schedule function switch:maps/survival/survival_boat/scan_doors 1t

