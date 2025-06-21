
#> switch:maps/survival/yeti_in_panic/scan_doors
#
# @within	switch:maps/survival/yeti_in_panic/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_yeti_in_panic switch.data 1

execute if score #scan_yeti_in_panic switch.data matches 1 in minecraft:overworld run forceload add 158000 158000 158026 158070
execute if score #scan_yeti_in_panic switch.data matches 1 in switch:game run forceload add 158000 158000 158026 158070

execute if score #scan_yeti_in_panic switch.data matches 1 in minecraft:overworld run forceload add 158026 158000 158051 158070
execute if score #scan_yeti_in_panic switch.data matches 1 in switch:game run forceload add 158026 158000 158051 158070

execute if score #scan_yeti_in_panic switch.data matches 1 in minecraft:overworld run forceload add 158051 158000 158077 158070
execute if score #scan_yeti_in_panic switch.data matches 1 in switch:game run forceload add 158051 158000 158077 158070

execute if score #scan_yeti_in_panic switch.data matches 1 run data modify storage switch:maps to_scan.yeti_in_panic set value 2b
execute if score #scan_yeti_in_panic switch.data matches 1 run scoreboard players set #start_x_yeti_in_panic switch.data 158001
execute if score #scan_yeti_in_panic switch.data matches 1 run scoreboard players set #start_y_yeti_in_panic switch.data 1
execute if score #scan_yeti_in_panic switch.data matches 1 run scoreboard players set #start_z_yeti_in_panic switch.data 158001
execute if score #scan_yeti_in_panic switch.data matches 1 run scoreboard players set #end_x_yeti_in_panic switch.data 158076
execute if score #scan_yeti_in_panic switch.data matches 1 run scoreboard players set #end_y_yeti_in_panic switch.data 66
execute if score #scan_yeti_in_panic switch.data matches 1 run scoreboard players set #end_z_yeti_in_panic switch.data 158069
execute if score #scan_yeti_in_panic switch.data matches 1 run scoreboard players operation #curr_x_yeti_in_panic switch.data = #start_x_yeti_in_panic switch.data
execute if score #scan_yeti_in_panic switch.data matches 1 run scoreboard players operation #curr_y_yeti_in_panic switch.data = #start_y_yeti_in_panic switch.data
execute if score #scan_yeti_in_panic switch.data matches 1 run scoreboard players operation #curr_z_yeti_in_panic switch.data = #start_z_yeti_in_panic switch.data
execute if score #scan_yeti_in_panic switch.data matches 1 run data modify storage switch:doors yeti_in_panic set value []

execute if score #scan_yeti_in_panic switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_yeti_in_panic switch.data matches 30.. summon marker run function switch:maps/survival/yeti_in_panic/scan_doors_on_marker

execute if score #scan_yeti_in_panic switch.data matches 100 in minecraft:overworld run forceload remove 158000 158000 158026 158070
execute if score #scan_yeti_in_panic switch.data matches 100 in switch:game run forceload remove 158000 158000 158026 158070

execute if score #scan_yeti_in_panic switch.data matches 100 in minecraft:overworld run forceload remove 158026 158000 158051 158070
execute if score #scan_yeti_in_panic switch.data matches 100 in switch:game run forceload remove 158026 158000 158051 158070

execute if score #scan_yeti_in_panic switch.data matches 100 in minecraft:overworld run forceload remove 158051 158000 158077 158070
execute if score #scan_yeti_in_panic switch.data matches 100 in switch:game run forceload remove 158051 158000 158077 158070

execute if score #scan_yeti_in_panic switch.data matches 100 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"yeti_in_panic","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"5","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_yeti_in_panic switch.data matches 100 run data remove storage switch:maps to_scan.yeti_in_panic
execute if score #scan_yeti_in_panic switch.data matches 100 run scoreboard players reset #scan_yeti_in_panic switch.data

execute if score #scan_yeti_in_panic switch.data matches 1.. run schedule function switch:maps/survival/yeti_in_panic/scan_doors 1t

