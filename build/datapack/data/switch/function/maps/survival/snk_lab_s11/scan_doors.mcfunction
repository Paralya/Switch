
#> switch:maps/survival/snk_lab_s11/scan_doors
#
# @within	switch:maps/survival/snk_lab_s11/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_snk_lab_s11 switch.data 1

execute if score #scan_snk_lab_s11 switch.data matches 1 in minecraft:overworld run forceload add 67000 67000 67022 67073
execute if score #scan_snk_lab_s11 switch.data matches 1 in switch:game run forceload add 67000 67000 67022 67073

execute if score #scan_snk_lab_s11 switch.data matches 1 in minecraft:overworld run forceload add 67022 67000 67043 67073
execute if score #scan_snk_lab_s11 switch.data matches 1 in switch:game run forceload add 67022 67000 67043 67073

execute if score #scan_snk_lab_s11 switch.data matches 1 in minecraft:overworld run forceload add 67043 67000 67065 67073
execute if score #scan_snk_lab_s11 switch.data matches 1 in switch:game run forceload add 67043 67000 67065 67073

execute if score #scan_snk_lab_s11 switch.data matches 1 run data modify storage switch:maps to_scan.snk_lab_s11 set value 2b
execute if score #scan_snk_lab_s11 switch.data matches 1 run scoreboard players set #start_x_snk_lab_s11 switch.data 67001
execute if score #scan_snk_lab_s11 switch.data matches 1 run scoreboard players set #start_y_snk_lab_s11 switch.data 1
execute if score #scan_snk_lab_s11 switch.data matches 1 run scoreboard players set #start_z_snk_lab_s11 switch.data 67001
execute if score #scan_snk_lab_s11 switch.data matches 1 run scoreboard players set #end_x_snk_lab_s11 switch.data 67064
execute if score #scan_snk_lab_s11 switch.data matches 1 run scoreboard players set #end_y_snk_lab_s11 switch.data 32
execute if score #scan_snk_lab_s11 switch.data matches 1 run scoreboard players set #end_z_snk_lab_s11 switch.data 67072
execute if score #scan_snk_lab_s11 switch.data matches 1 run scoreboard players operation #curr_x_snk_lab_s11 switch.data = #start_x_snk_lab_s11 switch.data
execute if score #scan_snk_lab_s11 switch.data matches 1 run scoreboard players operation #curr_y_snk_lab_s11 switch.data = #start_y_snk_lab_s11 switch.data
execute if score #scan_snk_lab_s11 switch.data matches 1 run scoreboard players operation #curr_z_snk_lab_s11 switch.data = #start_z_snk_lab_s11 switch.data
execute if score #scan_snk_lab_s11 switch.data matches 1 run data modify storage switch:doors snk_lab_s11 set value []


execute if score #scan_snk_lab_s11 switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_snk_lab_s11 switch.data matches 30.. summon marker run function switch:maps/survival/snk_lab_s11/scan_doors_on_marker

execute if score #scan_snk_lab_s11 switch.data matches 60 in minecraft:overworld run forceload remove 67000 67000 67022 67073
execute if score #scan_snk_lab_s11 switch.data matches 60 in switch:game run forceload remove 67000 67000 67022 67073

execute if score #scan_snk_lab_s11 switch.data matches 60 in minecraft:overworld run forceload remove 67022 67000 67043 67073
execute if score #scan_snk_lab_s11 switch.data matches 60 in switch:game run forceload remove 67022 67000 67043 67073

execute if score #scan_snk_lab_s11 switch.data matches 60 in minecraft:overworld run forceload remove 67043 67000 67065 67073
execute if score #scan_snk_lab_s11 switch.data matches 60 in switch:game run forceload remove 67043 67000 67065 67073

execute if score #scan_snk_lab_s11 switch.data matches 60 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"snk_lab_s11","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"3","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_snk_lab_s11 switch.data matches 60 run data remove storage switch:maps to_scan.snk_lab_s11
execute if score #scan_snk_lab_s11 switch.data matches 60 run scoreboard players reset #scan_snk_lab_s11 switch.data

execute if score #scan_snk_lab_s11 switch.data matches 1.. run schedule function switch:maps/survival/snk_lab_s11/scan_doors 1t

