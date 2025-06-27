
#> switch:maps/survival/ctf_mountains_castles/scan_doors
#
# @within	switch:maps/survival/ctf_mountains_castles/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_ctf_mountains_castles switch.data 1

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 146999 147000 147018 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 146999 147000 147018 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147018 147000 147037 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147018 147000 147037 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147037 147000 147056 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147037 147000 147056 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147056 147000 147076 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147056 147000 147076 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147076 147000 147095 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147076 147000 147095 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147095 147000 147114 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147095 147000 147114 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147114 147000 147133 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147114 147000 147133 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147133 147000 147152 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147133 147000 147152 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147152 147000 147171 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147152 147000 147171 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147171 147000 147191 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147171 147000 147191 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147191 147000 147210 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147191 147000 147210 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147210 147000 147229 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147210 147000 147229 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147229 147000 147248 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147229 147000 147248 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147248 147000 147267 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147248 147000 147267 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147267 147000 147286 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147267 147000 147286 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147286 147000 147306 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147286 147000 147306 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147306 147000 147325 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147306 147000 147325 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147325 147000 147344 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147325 147000 147344 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147344 147000 147363 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147344 147000 147363 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 run data modify storage switch:maps to_scan.ctf_mountains_castles set value 2b
execute if score #scan_ctf_mountains_castles switch.data matches 1 run scoreboard players set #start_x_ctf_mountains_castles switch.data 147000
execute if score #scan_ctf_mountains_castles switch.data matches 1 run scoreboard players set #start_y_ctf_mountains_castles switch.data 101
execute if score #scan_ctf_mountains_castles switch.data matches 1 run scoreboard players set #start_z_ctf_mountains_castles switch.data 147001
execute if score #scan_ctf_mountains_castles switch.data matches 1 run scoreboard players set #end_x_ctf_mountains_castles switch.data 147362
execute if score #scan_ctf_mountains_castles switch.data matches 1 run scoreboard players set #end_y_ctf_mountains_castles switch.data 261
execute if score #scan_ctf_mountains_castles switch.data matches 1 run scoreboard players set #end_z_ctf_mountains_castles switch.data 147157
execute if score #scan_ctf_mountains_castles switch.data matches 1 run scoreboard players operation #curr_x_ctf_mountains_castles switch.data = #start_x_ctf_mountains_castles switch.data
execute if score #scan_ctf_mountains_castles switch.data matches 1 run scoreboard players operation #curr_y_ctf_mountains_castles switch.data = #start_y_ctf_mountains_castles switch.data
execute if score #scan_ctf_mountains_castles switch.data matches 1 run scoreboard players operation #curr_z_ctf_mountains_castles switch.data = #start_z_ctf_mountains_castles switch.data
execute if score #scan_ctf_mountains_castles switch.data matches 1 run data modify storage switch:doors ctf_mountains_castles set value []

execute if score #scan_ctf_mountains_castles switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_ctf_mountains_castles switch.data matches 30.. summon marker run function switch:maps/survival/ctf_mountains_castles/scan_doors_on_marker

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove 146999 147000 147018 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove 146999 147000 147018 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove 147018 147000 147037 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove 147018 147000 147037 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove 147037 147000 147056 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove 147037 147000 147056 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove 147056 147000 147076 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove 147056 147000 147076 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove 147076 147000 147095 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove 147076 147000 147095 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove 147095 147000 147114 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove 147095 147000 147114 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove 147114 147000 147133 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove 147114 147000 147133 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove 147133 147000 147152 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove 147133 147000 147152 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove 147152 147000 147171 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove 147152 147000 147171 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove 147171 147000 147191 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove 147171 147000 147191 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove 147191 147000 147210 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove 147191 147000 147210 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove 147210 147000 147229 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove 147210 147000 147229 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove 147229 147000 147248 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove 147229 147000 147248 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove 147248 147000 147267 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove 147248 147000 147267 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove 147267 147000 147286 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove 147267 147000 147286 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove 147286 147000 147306 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove 147286 147000 147306 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove 147306 147000 147325 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove 147306 147000 147325 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove 147325 147000 147344 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove 147325 147000 147344 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove 147344 147000 147363 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove 147344 147000 147363 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1866 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"ctf_mountains_castles","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"93","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_ctf_mountains_castles switch.data matches 1866 run data remove storage switch:maps to_scan.ctf_mountains_castles
execute if score #scan_ctf_mountains_castles switch.data matches 1866 run scoreboard players reset #scan_ctf_mountains_castles switch.data

execute if score #scan_ctf_mountains_castles switch.data matches 1.. run schedule function switch:maps/survival/ctf_mountains_castles/scan_doors 1t

