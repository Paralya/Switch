
#> switch:maps/survival/ctf_mountains_castles/scan_doors
#
# @within	switch:maps/survival/ctf_mountains_castles/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_ctf_mountains_castles switch.data 1

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147000 147000 147019 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147000 147000 147019 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147019 147000 147038 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147019 147000 147038 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147038 147000 147057 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147038 147000 147057 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147057 147000 147076 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147057 147000 147076 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147076 147000 147096 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147076 147000 147096 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147096 147000 147115 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147096 147000 147115 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147115 147000 147134 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147115 147000 147134 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147134 147000 147153 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147134 147000 147153 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147153 147000 147172 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147153 147000 147172 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147172 147000 147191 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147172 147000 147191 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147191 147000 147210 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147191 147000 147210 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147210 147000 147229 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147210 147000 147229 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147229 147000 147248 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147229 147000 147248 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147248 147000 147267 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147248 147000 147267 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147267 147000 147287 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147267 147000 147287 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147287 147000 147306 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147287 147000 147306 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147306 147000 147325 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147306 147000 147325 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147325 147000 147344 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147325 147000 147344 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147344 147000 147363 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147344 147000 147363 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1 run data modify storage switch:maps to_scan.ctf_mountains_castles set value 2b
execute if score #scan_ctf_mountains_castles switch.data matches 1 run scoreboard players set #start_x_ctf_mountains_castles switch.data 147001
execute if score #scan_ctf_mountains_castles switch.data matches 1 run scoreboard players set #start_y_ctf_mountains_castles switch.data -63
execute if score #scan_ctf_mountains_castles switch.data matches 1 run scoreboard players set #start_z_ctf_mountains_castles switch.data 147001
execute if score #scan_ctf_mountains_castles switch.data matches 1 run scoreboard players set #end_x_ctf_mountains_castles switch.data 147362
execute if score #scan_ctf_mountains_castles switch.data matches 1 run scoreboard players set #end_y_ctf_mountains_castles switch.data 97
execute if score #scan_ctf_mountains_castles switch.data matches 1 run scoreboard players set #end_z_ctf_mountains_castles switch.data 147157
execute if score #scan_ctf_mountains_castles switch.data matches 1 run scoreboard players operation #curr_x_ctf_mountains_castles switch.data = #start_x_ctf_mountains_castles switch.data
execute if score #scan_ctf_mountains_castles switch.data matches 1 run scoreboard players operation #curr_y_ctf_mountains_castles switch.data = #start_y_ctf_mountains_castles switch.data
execute if score #scan_ctf_mountains_castles switch.data matches 1 run scoreboard players operation #curr_z_ctf_mountains_castles switch.data = #start_z_ctf_mountains_castles switch.data
execute if score #scan_ctf_mountains_castles switch.data matches 1 run data modify storage switch:doors ctf_mountains_castles set value []


execute if score #scan_ctf_mountains_castles switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_ctf_mountains_castles switch.data matches 30.. summon marker run function switch:maps/survival/ctf_mountains_castles/scan_doors_on_marker

execute if score #scan_ctf_mountains_castles switch.data matches 1861 in minecraft:overworld run forceload remove 147000 147000 147019 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1861 in switch:game run forceload remove 147000 147000 147019 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1861 in minecraft:overworld run forceload remove 147019 147000 147038 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1861 in switch:game run forceload remove 147019 147000 147038 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1861 in minecraft:overworld run forceload remove 147038 147000 147057 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1861 in switch:game run forceload remove 147038 147000 147057 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1861 in minecraft:overworld run forceload remove 147057 147000 147076 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1861 in switch:game run forceload remove 147057 147000 147076 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1861 in minecraft:overworld run forceload remove 147076 147000 147096 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1861 in switch:game run forceload remove 147076 147000 147096 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1861 in minecraft:overworld run forceload remove 147096 147000 147115 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1861 in switch:game run forceload remove 147096 147000 147115 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1861 in minecraft:overworld run forceload remove 147115 147000 147134 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1861 in switch:game run forceload remove 147115 147000 147134 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1861 in minecraft:overworld run forceload remove 147134 147000 147153 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1861 in switch:game run forceload remove 147134 147000 147153 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1861 in minecraft:overworld run forceload remove 147153 147000 147172 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1861 in switch:game run forceload remove 147153 147000 147172 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1861 in minecraft:overworld run forceload remove 147172 147000 147191 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1861 in switch:game run forceload remove 147172 147000 147191 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1861 in minecraft:overworld run forceload remove 147191 147000 147210 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1861 in switch:game run forceload remove 147191 147000 147210 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1861 in minecraft:overworld run forceload remove 147210 147000 147229 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1861 in switch:game run forceload remove 147210 147000 147229 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1861 in minecraft:overworld run forceload remove 147229 147000 147248 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1861 in switch:game run forceload remove 147229 147000 147248 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1861 in minecraft:overworld run forceload remove 147248 147000 147267 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1861 in switch:game run forceload remove 147248 147000 147267 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1861 in minecraft:overworld run forceload remove 147267 147000 147287 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1861 in switch:game run forceload remove 147267 147000 147287 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1861 in minecraft:overworld run forceload remove 147287 147000 147306 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1861 in switch:game run forceload remove 147287 147000 147306 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1861 in minecraft:overworld run forceload remove 147306 147000 147325 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1861 in switch:game run forceload remove 147306 147000 147325 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1861 in minecraft:overworld run forceload remove 147325 147000 147344 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1861 in switch:game run forceload remove 147325 147000 147344 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1861 in minecraft:overworld run forceload remove 147344 147000 147363 147158
execute if score #scan_ctf_mountains_castles switch.data matches 1861 in switch:game run forceload remove 147344 147000 147363 147158

execute if score #scan_ctf_mountains_castles switch.data matches 1861 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"ctf_mountains_castles","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"93","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_ctf_mountains_castles switch.data matches 1861 run data remove storage switch:maps to_scan.ctf_mountains_castles
execute if score #scan_ctf_mountains_castles switch.data matches 1861 run scoreboard players reset #scan_ctf_mountains_castles switch.data

execute if score #scan_ctf_mountains_castles switch.data matches 1.. run schedule function switch:maps/survival/ctf_mountains_castles/scan_doors 1t

