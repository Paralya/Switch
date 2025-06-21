
#> switch:maps/survival/tnt_run_futuristic/scan_doors
#
# @within	switch:maps/survival/tnt_run_futuristic/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_tnt_run_futuristic switch.data 1

execute if score #scan_tnt_run_futuristic switch.data matches 1 in minecraft:overworld run forceload add 109000 109000 109030 109046
execute if score #scan_tnt_run_futuristic switch.data matches 1 in switch:game run forceload add 109000 109000 109030 109046

execute if score #scan_tnt_run_futuristic switch.data matches 1 in minecraft:overworld run forceload add 109030 109000 109059 109046
execute if score #scan_tnt_run_futuristic switch.data matches 1 in switch:game run forceload add 109030 109000 109059 109046

execute if score #scan_tnt_run_futuristic switch.data matches 1 run data modify storage switch:maps to_scan.tnt_run_futuristic set value 2b
execute if score #scan_tnt_run_futuristic switch.data matches 1 run scoreboard players set #start_x_tnt_run_futuristic switch.data 109001
execute if score #scan_tnt_run_futuristic switch.data matches 1 run scoreboard players set #start_y_tnt_run_futuristic switch.data 1
execute if score #scan_tnt_run_futuristic switch.data matches 1 run scoreboard players set #start_z_tnt_run_futuristic switch.data 109001
execute if score #scan_tnt_run_futuristic switch.data matches 1 run scoreboard players set #end_x_tnt_run_futuristic switch.data 109058
execute if score #scan_tnt_run_futuristic switch.data matches 1 run scoreboard players set #end_y_tnt_run_futuristic switch.data 67
execute if score #scan_tnt_run_futuristic switch.data matches 1 run scoreboard players set #end_z_tnt_run_futuristic switch.data 109045
execute if score #scan_tnt_run_futuristic switch.data matches 1 run scoreboard players operation #curr_x_tnt_run_futuristic switch.data = #start_x_tnt_run_futuristic switch.data
execute if score #scan_tnt_run_futuristic switch.data matches 1 run scoreboard players operation #curr_y_tnt_run_futuristic switch.data = #start_y_tnt_run_futuristic switch.data
execute if score #scan_tnt_run_futuristic switch.data matches 1 run scoreboard players operation #curr_z_tnt_run_futuristic switch.data = #start_z_tnt_run_futuristic switch.data
execute if score #scan_tnt_run_futuristic switch.data matches 1 run data modify storage switch:doors tnt_run_futuristic set value []

execute if score #scan_tnt_run_futuristic switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_tnt_run_futuristic switch.data matches 30.. summon marker run function switch:maps/survival/tnt_run_futuristic/scan_doors_on_marker

execute if score #scan_tnt_run_futuristic switch.data matches 65 in minecraft:overworld run forceload remove 109000 109000 109030 109046
execute if score #scan_tnt_run_futuristic switch.data matches 65 in switch:game run forceload remove 109000 109000 109030 109046

execute if score #scan_tnt_run_futuristic switch.data matches 65 in minecraft:overworld run forceload remove 109030 109000 109059 109046
execute if score #scan_tnt_run_futuristic switch.data matches 65 in switch:game run forceload remove 109030 109000 109059 109046

execute if score #scan_tnt_run_futuristic switch.data matches 65 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"tnt_run_futuristic","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"3","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_tnt_run_futuristic switch.data matches 65 run data remove storage switch:maps to_scan.tnt_run_futuristic
execute if score #scan_tnt_run_futuristic switch.data matches 65 run scoreboard players reset #scan_tnt_run_futuristic switch.data

execute if score #scan_tnt_run_futuristic switch.data matches 1.. run schedule function switch:maps/survival/tnt_run_futuristic/scan_doors 1t

