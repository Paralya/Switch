
#> switch:maps/survival/hider_mansion/scan_doors
#
# @within	switch:maps/survival/hider_mansion/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_hider_mansion switch.data 1

execute if score #scan_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add 71000 71000 71017 71160
execute if score #scan_hider_mansion switch.data matches 1 in switch:game run forceload add 71000 71000 71017 71160

execute if score #scan_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add 71017 71000 71034 71160
execute if score #scan_hider_mansion switch.data matches 1 in switch:game run forceload add 71017 71000 71034 71160

execute if score #scan_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add 71034 71000 71051 71160
execute if score #scan_hider_mansion switch.data matches 1 in switch:game run forceload add 71034 71000 71051 71160

execute if score #scan_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add 71051 71000 71068 71160
execute if score #scan_hider_mansion switch.data matches 1 in switch:game run forceload add 71051 71000 71068 71160

execute if score #scan_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add 71068 71000 71085 71160
execute if score #scan_hider_mansion switch.data matches 1 in switch:game run forceload add 71068 71000 71085 71160

execute if score #scan_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add 71085 71000 71102 71160
execute if score #scan_hider_mansion switch.data matches 1 in switch:game run forceload add 71085 71000 71102 71160

execute if score #scan_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add 71102 71000 71119 71160
execute if score #scan_hider_mansion switch.data matches 1 in switch:game run forceload add 71102 71000 71119 71160

execute if score #scan_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add 71119 71000 71136 71160
execute if score #scan_hider_mansion switch.data matches 1 in switch:game run forceload add 71119 71000 71136 71160

execute if score #scan_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add 71136 71000 71153 71160
execute if score #scan_hider_mansion switch.data matches 1 in switch:game run forceload add 71136 71000 71153 71160

execute if score #scan_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add 71153 71000 71170 71160
execute if score #scan_hider_mansion switch.data matches 1 in switch:game run forceload add 71153 71000 71170 71160

execute if score #scan_hider_mansion switch.data matches 1 run data modify storage switch:maps to_scan.hider_mansion set value 2b
execute if score #scan_hider_mansion switch.data matches 1 run scoreboard players set #start_x_hider_mansion switch.data 71001
execute if score #scan_hider_mansion switch.data matches 1 run scoreboard players set #start_y_hider_mansion switch.data 1
execute if score #scan_hider_mansion switch.data matches 1 run scoreboard players set #start_z_hider_mansion switch.data 71001
execute if score #scan_hider_mansion switch.data matches 1 run scoreboard players set #end_x_hider_mansion switch.data 71169
execute if score #scan_hider_mansion switch.data matches 1 run scoreboard players set #end_y_hider_mansion switch.data 69
execute if score #scan_hider_mansion switch.data matches 1 run scoreboard players set #end_z_hider_mansion switch.data 71159
execute if score #scan_hider_mansion switch.data matches 1 run scoreboard players operation #curr_x_hider_mansion switch.data = #start_x_hider_mansion switch.data
execute if score #scan_hider_mansion switch.data matches 1 run scoreboard players operation #curr_y_hider_mansion switch.data = #start_y_hider_mansion switch.data
execute if score #scan_hider_mansion switch.data matches 1 run scoreboard players operation #curr_z_hider_mansion switch.data = #start_z_hider_mansion switch.data
execute if score #scan_hider_mansion switch.data matches 1 run data modify storage switch:doors hider_mansion set value []


execute if score #scan_hider_mansion switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_hider_mansion switch.data matches 30.. summon marker run function switch:maps/survival/hider_mansion/scan_doors_on_marker

execute if score #scan_hider_mansion switch.data matches 401 in minecraft:overworld run forceload remove 71000 71000 71017 71160
execute if score #scan_hider_mansion switch.data matches 401 in switch:game run forceload remove 71000 71000 71017 71160

execute if score #scan_hider_mansion switch.data matches 401 in minecraft:overworld run forceload remove 71017 71000 71034 71160
execute if score #scan_hider_mansion switch.data matches 401 in switch:game run forceload remove 71017 71000 71034 71160

execute if score #scan_hider_mansion switch.data matches 401 in minecraft:overworld run forceload remove 71034 71000 71051 71160
execute if score #scan_hider_mansion switch.data matches 401 in switch:game run forceload remove 71034 71000 71051 71160

execute if score #scan_hider_mansion switch.data matches 401 in minecraft:overworld run forceload remove 71051 71000 71068 71160
execute if score #scan_hider_mansion switch.data matches 401 in switch:game run forceload remove 71051 71000 71068 71160

execute if score #scan_hider_mansion switch.data matches 401 in minecraft:overworld run forceload remove 71068 71000 71085 71160
execute if score #scan_hider_mansion switch.data matches 401 in switch:game run forceload remove 71068 71000 71085 71160

execute if score #scan_hider_mansion switch.data matches 401 in minecraft:overworld run forceload remove 71085 71000 71102 71160
execute if score #scan_hider_mansion switch.data matches 401 in switch:game run forceload remove 71085 71000 71102 71160

execute if score #scan_hider_mansion switch.data matches 401 in minecraft:overworld run forceload remove 71102 71000 71119 71160
execute if score #scan_hider_mansion switch.data matches 401 in switch:game run forceload remove 71102 71000 71119 71160

execute if score #scan_hider_mansion switch.data matches 401 in minecraft:overworld run forceload remove 71119 71000 71136 71160
execute if score #scan_hider_mansion switch.data matches 401 in switch:game run forceload remove 71119 71000 71136 71160

execute if score #scan_hider_mansion switch.data matches 401 in minecraft:overworld run forceload remove 71136 71000 71153 71160
execute if score #scan_hider_mansion switch.data matches 401 in switch:game run forceload remove 71136 71000 71153 71160

execute if score #scan_hider_mansion switch.data matches 401 in minecraft:overworld run forceload remove 71153 71000 71170 71160
execute if score #scan_hider_mansion switch.data matches 401 in switch:game run forceload remove 71153 71000 71170 71160

execute if score #scan_hider_mansion switch.data matches 401 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"hider_mansion","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"20","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_hider_mansion switch.data matches 401 run data remove storage switch:maps to_scan.hider_mansion
execute if score #scan_hider_mansion switch.data matches 401 run scoreboard players reset #scan_hider_mansion switch.data

execute if score #scan_hider_mansion switch.data matches 1.. run schedule function switch:maps/survival/hider_mansion/scan_doors 1t

