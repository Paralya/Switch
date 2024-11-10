
#> switch:maps/survival/snowy_village/scan_doors
#
# @within	switch:maps/survival/snowy_village/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_snowy_village switch.data 1

execute if score #scan_snowy_village switch.data matches 1 in minecraft:overworld run forceload add 92000 92000 92012 92229
execute if score #scan_snowy_village switch.data matches 1 in switch:game run forceload add 92000 92000 92012 92229

execute if score #scan_snowy_village switch.data matches 1 in minecraft:overworld run forceload add 92012 92000 92025 92229
execute if score #scan_snowy_village switch.data matches 1 in switch:game run forceload add 92012 92000 92025 92229

execute if score #scan_snowy_village switch.data matches 1 in minecraft:overworld run forceload add 92025 92000 92038 92229
execute if score #scan_snowy_village switch.data matches 1 in switch:game run forceload add 92025 92000 92038 92229

execute if score #scan_snowy_village switch.data matches 1 in minecraft:overworld run forceload add 92038 92000 92050 92229
execute if score #scan_snowy_village switch.data matches 1 in switch:game run forceload add 92038 92000 92050 92229

execute if score #scan_snowy_village switch.data matches 1 in minecraft:overworld run forceload add 92050 92000 92062 92229
execute if score #scan_snowy_village switch.data matches 1 in switch:game run forceload add 92050 92000 92062 92229

execute if score #scan_snowy_village switch.data matches 1 in minecraft:overworld run forceload add 92062 92000 92075 92229
execute if score #scan_snowy_village switch.data matches 1 in switch:game run forceload add 92062 92000 92075 92229

execute if score #scan_snowy_village switch.data matches 1 in minecraft:overworld run forceload add 92075 92000 92088 92229
execute if score #scan_snowy_village switch.data matches 1 in switch:game run forceload add 92075 92000 92088 92229

execute if score #scan_snowy_village switch.data matches 1 in minecraft:overworld run forceload add 92088 92000 92100 92229
execute if score #scan_snowy_village switch.data matches 1 in switch:game run forceload add 92088 92000 92100 92229

execute if score #scan_snowy_village switch.data matches 1 in minecraft:overworld run forceload add 92100 92000 92112 92229
execute if score #scan_snowy_village switch.data matches 1 in switch:game run forceload add 92100 92000 92112 92229

execute if score #scan_snowy_village switch.data matches 1 in minecraft:overworld run forceload add 92112 92000 92125 92229
execute if score #scan_snowy_village switch.data matches 1 in switch:game run forceload add 92112 92000 92125 92229

execute if score #scan_snowy_village switch.data matches 1 in minecraft:overworld run forceload add 92125 92000 92138 92229
execute if score #scan_snowy_village switch.data matches 1 in switch:game run forceload add 92125 92000 92138 92229

execute if score #scan_snowy_village switch.data matches 1 in minecraft:overworld run forceload add 92138 92000 92150 92229
execute if score #scan_snowy_village switch.data matches 1 in switch:game run forceload add 92138 92000 92150 92229

execute if score #scan_snowy_village switch.data matches 1 in minecraft:overworld run forceload add 92150 92000 92162 92229
execute if score #scan_snowy_village switch.data matches 1 in switch:game run forceload add 92150 92000 92162 92229

execute if score #scan_snowy_village switch.data matches 1 in minecraft:overworld run forceload add 92162 92000 92175 92229
execute if score #scan_snowy_village switch.data matches 1 in switch:game run forceload add 92162 92000 92175 92229

execute if score #scan_snowy_village switch.data matches 1 in minecraft:overworld run forceload add 92175 92000 92188 92229
execute if score #scan_snowy_village switch.data matches 1 in switch:game run forceload add 92175 92000 92188 92229

execute if score #scan_snowy_village switch.data matches 1 in minecraft:overworld run forceload add 92188 92000 92200 92229
execute if score #scan_snowy_village switch.data matches 1 in switch:game run forceload add 92188 92000 92200 92229

execute if score #scan_snowy_village switch.data matches 1 run data modify storage switch:maps to_scan.snowy_village set value 2b
execute if score #scan_snowy_village switch.data matches 1 run scoreboard players set #start_x_snowy_village switch.data 92001
execute if score #scan_snowy_village switch.data matches 1 run scoreboard players set #start_y_snowy_village switch.data 1
execute if score #scan_snowy_village switch.data matches 1 run scoreboard players set #start_z_snowy_village switch.data 92001
execute if score #scan_snowy_village switch.data matches 1 run scoreboard players set #end_x_snowy_village switch.data 92199
execute if score #scan_snowy_village switch.data matches 1 run scoreboard players set #end_y_snowy_village switch.data 69
execute if score #scan_snowy_village switch.data matches 1 run scoreboard players set #end_z_snowy_village switch.data 92228
execute if score #scan_snowy_village switch.data matches 1 run scoreboard players operation #curr_x_snowy_village switch.data = #start_x_snowy_village switch.data
execute if score #scan_snowy_village switch.data matches 1 run scoreboard players operation #curr_y_snowy_village switch.data = #start_y_snowy_village switch.data
execute if score #scan_snowy_village switch.data matches 1 run scoreboard players operation #curr_z_snowy_village switch.data = #start_z_snowy_village switch.data
execute if score #scan_snowy_village switch.data matches 1 run data modify storage switch:doors snowy_village set value []


execute if score #scan_snowy_village switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_snowy_village switch.data matches 30.. summon marker run function switch:maps/survival/snowy_village/scan_doors_on_marker

execute if score #scan_snowy_village switch.data matches 657 in minecraft:overworld run forceload remove 92000 92000 92012 92229
execute if score #scan_snowy_village switch.data matches 657 in switch:game run forceload remove 92000 92000 92012 92229

execute if score #scan_snowy_village switch.data matches 657 in minecraft:overworld run forceload remove 92012 92000 92025 92229
execute if score #scan_snowy_village switch.data matches 657 in switch:game run forceload remove 92012 92000 92025 92229

execute if score #scan_snowy_village switch.data matches 657 in minecraft:overworld run forceload remove 92025 92000 92038 92229
execute if score #scan_snowy_village switch.data matches 657 in switch:game run forceload remove 92025 92000 92038 92229

execute if score #scan_snowy_village switch.data matches 657 in minecraft:overworld run forceload remove 92038 92000 92050 92229
execute if score #scan_snowy_village switch.data matches 657 in switch:game run forceload remove 92038 92000 92050 92229

execute if score #scan_snowy_village switch.data matches 657 in minecraft:overworld run forceload remove 92050 92000 92062 92229
execute if score #scan_snowy_village switch.data matches 657 in switch:game run forceload remove 92050 92000 92062 92229

execute if score #scan_snowy_village switch.data matches 657 in minecraft:overworld run forceload remove 92062 92000 92075 92229
execute if score #scan_snowy_village switch.data matches 657 in switch:game run forceload remove 92062 92000 92075 92229

execute if score #scan_snowy_village switch.data matches 657 in minecraft:overworld run forceload remove 92075 92000 92088 92229
execute if score #scan_snowy_village switch.data matches 657 in switch:game run forceload remove 92075 92000 92088 92229

execute if score #scan_snowy_village switch.data matches 657 in minecraft:overworld run forceload remove 92088 92000 92100 92229
execute if score #scan_snowy_village switch.data matches 657 in switch:game run forceload remove 92088 92000 92100 92229

execute if score #scan_snowy_village switch.data matches 657 in minecraft:overworld run forceload remove 92100 92000 92112 92229
execute if score #scan_snowy_village switch.data matches 657 in switch:game run forceload remove 92100 92000 92112 92229

execute if score #scan_snowy_village switch.data matches 657 in minecraft:overworld run forceload remove 92112 92000 92125 92229
execute if score #scan_snowy_village switch.data matches 657 in switch:game run forceload remove 92112 92000 92125 92229

execute if score #scan_snowy_village switch.data matches 657 in minecraft:overworld run forceload remove 92125 92000 92138 92229
execute if score #scan_snowy_village switch.data matches 657 in switch:game run forceload remove 92125 92000 92138 92229

execute if score #scan_snowy_village switch.data matches 657 in minecraft:overworld run forceload remove 92138 92000 92150 92229
execute if score #scan_snowy_village switch.data matches 657 in switch:game run forceload remove 92138 92000 92150 92229

execute if score #scan_snowy_village switch.data matches 657 in minecraft:overworld run forceload remove 92150 92000 92162 92229
execute if score #scan_snowy_village switch.data matches 657 in switch:game run forceload remove 92150 92000 92162 92229

execute if score #scan_snowy_village switch.data matches 657 in minecraft:overworld run forceload remove 92162 92000 92175 92229
execute if score #scan_snowy_village switch.data matches 657 in switch:game run forceload remove 92162 92000 92175 92229

execute if score #scan_snowy_village switch.data matches 657 in minecraft:overworld run forceload remove 92175 92000 92188 92229
execute if score #scan_snowy_village switch.data matches 657 in switch:game run forceload remove 92175 92000 92188 92229

execute if score #scan_snowy_village switch.data matches 657 in minecraft:overworld run forceload remove 92188 92000 92200 92229
execute if score #scan_snowy_village switch.data matches 657 in switch:game run forceload remove 92188 92000 92200 92229

execute if score #scan_snowy_village switch.data matches 657 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"snowy_village","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"32","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_snowy_village switch.data matches 657 run data remove storage switch:maps to_scan.snowy_village
execute if score #scan_snowy_village switch.data matches 657 run scoreboard players reset #scan_snowy_village switch.data

execute if score #scan_snowy_village switch.data matches 1.. run schedule function switch:maps/survival/snowy_village/scan_doors 1t

