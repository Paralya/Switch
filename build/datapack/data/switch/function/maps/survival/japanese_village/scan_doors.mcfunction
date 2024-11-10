
#> switch:maps/survival/japanese_village/scan_doors
#
# @within	switch:maps/survival/japanese_village/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_japanese_village switch.data 1

execute if score #scan_japanese_village switch.data matches 1 in minecraft:overworld run forceload add 90000 90000 90010 90286
execute if score #scan_japanese_village switch.data matches 1 in switch:game run forceload add 90000 90000 90010 90286

execute if score #scan_japanese_village switch.data matches 1 in minecraft:overworld run forceload add 90010 90000 90020 90286
execute if score #scan_japanese_village switch.data matches 1 in switch:game run forceload add 90010 90000 90020 90286

execute if score #scan_japanese_village switch.data matches 1 in minecraft:overworld run forceload add 90020 90000 90031 90286
execute if score #scan_japanese_village switch.data matches 1 in switch:game run forceload add 90020 90000 90031 90286

execute if score #scan_japanese_village switch.data matches 1 in minecraft:overworld run forceload add 90031 90000 90041 90286
execute if score #scan_japanese_village switch.data matches 1 in switch:game run forceload add 90031 90000 90041 90286

execute if score #scan_japanese_village switch.data matches 1 in minecraft:overworld run forceload add 90041 90000 90051 90286
execute if score #scan_japanese_village switch.data matches 1 in switch:game run forceload add 90041 90000 90051 90286

execute if score #scan_japanese_village switch.data matches 1 in minecraft:overworld run forceload add 90051 90000 90061 90286
execute if score #scan_japanese_village switch.data matches 1 in switch:game run forceload add 90051 90000 90061 90286

execute if score #scan_japanese_village switch.data matches 1 in minecraft:overworld run forceload add 90061 90000 90071 90286
execute if score #scan_japanese_village switch.data matches 1 in switch:game run forceload add 90061 90000 90071 90286

execute if score #scan_japanese_village switch.data matches 1 in minecraft:overworld run forceload add 90071 90000 90081 90286
execute if score #scan_japanese_village switch.data matches 1 in switch:game run forceload add 90071 90000 90081 90286

execute if score #scan_japanese_village switch.data matches 1 in minecraft:overworld run forceload add 90081 90000 90092 90286
execute if score #scan_japanese_village switch.data matches 1 in switch:game run forceload add 90081 90000 90092 90286

execute if score #scan_japanese_village switch.data matches 1 in minecraft:overworld run forceload add 90092 90000 90102 90286
execute if score #scan_japanese_village switch.data matches 1 in switch:game run forceload add 90092 90000 90102 90286

execute if score #scan_japanese_village switch.data matches 1 in minecraft:overworld run forceload add 90102 90000 90112 90286
execute if score #scan_japanese_village switch.data matches 1 in switch:game run forceload add 90102 90000 90112 90286

execute if score #scan_japanese_village switch.data matches 1 in minecraft:overworld run forceload add 90112 90000 90122 90286
execute if score #scan_japanese_village switch.data matches 1 in switch:game run forceload add 90112 90000 90122 90286

execute if score #scan_japanese_village switch.data matches 1 in minecraft:overworld run forceload add 90122 90000 90132 90286
execute if score #scan_japanese_village switch.data matches 1 in switch:game run forceload add 90122 90000 90132 90286

execute if score #scan_japanese_village switch.data matches 1 in minecraft:overworld run forceload add 90132 90000 90143 90286
execute if score #scan_japanese_village switch.data matches 1 in switch:game run forceload add 90132 90000 90143 90286

execute if score #scan_japanese_village switch.data matches 1 in minecraft:overworld run forceload add 90143 90000 90153 90286
execute if score #scan_japanese_village switch.data matches 1 in switch:game run forceload add 90143 90000 90153 90286

execute if score #scan_japanese_village switch.data matches 1 in minecraft:overworld run forceload add 90153 90000 90163 90286
execute if score #scan_japanese_village switch.data matches 1 in switch:game run forceload add 90153 90000 90163 90286

execute if score #scan_japanese_village switch.data matches 1 in minecraft:overworld run forceload add 90163 90000 90173 90286
execute if score #scan_japanese_village switch.data matches 1 in switch:game run forceload add 90163 90000 90173 90286

execute if score #scan_japanese_village switch.data matches 1 in minecraft:overworld run forceload add 90173 90000 90183 90286
execute if score #scan_japanese_village switch.data matches 1 in switch:game run forceload add 90173 90000 90183 90286

execute if score #scan_japanese_village switch.data matches 1 in minecraft:overworld run forceload add 90183 90000 90193 90286
execute if score #scan_japanese_village switch.data matches 1 in switch:game run forceload add 90183 90000 90193 90286

execute if score #scan_japanese_village switch.data matches 1 in minecraft:overworld run forceload add 90193 90000 90204 90286
execute if score #scan_japanese_village switch.data matches 1 in switch:game run forceload add 90193 90000 90204 90286

execute if score #scan_japanese_village switch.data matches 1 in minecraft:overworld run forceload add 90204 90000 90214 90286
execute if score #scan_japanese_village switch.data matches 1 in switch:game run forceload add 90204 90000 90214 90286

execute if score #scan_japanese_village switch.data matches 1 in minecraft:overworld run forceload add 90214 90000 90224 90286
execute if score #scan_japanese_village switch.data matches 1 in switch:game run forceload add 90214 90000 90224 90286

execute if score #scan_japanese_village switch.data matches 1 run data modify storage switch:maps to_scan.japanese_village set value 2b
execute if score #scan_japanese_village switch.data matches 1 run scoreboard players set #start_x_japanese_village switch.data 90001
execute if score #scan_japanese_village switch.data matches 1 run scoreboard players set #start_y_japanese_village switch.data 1
execute if score #scan_japanese_village switch.data matches 1 run scoreboard players set #start_z_japanese_village switch.data 90001
execute if score #scan_japanese_village switch.data matches 1 run scoreboard players set #end_x_japanese_village switch.data 90223
execute if score #scan_japanese_village switch.data matches 1 run scoreboard players set #end_y_japanese_village switch.data 80
execute if score #scan_japanese_village switch.data matches 1 run scoreboard players set #end_z_japanese_village switch.data 90285
execute if score #scan_japanese_village switch.data matches 1 run scoreboard players operation #curr_x_japanese_village switch.data = #start_x_japanese_village switch.data
execute if score #scan_japanese_village switch.data matches 1 run scoreboard players operation #curr_y_japanese_village switch.data = #start_y_japanese_village switch.data
execute if score #scan_japanese_village switch.data matches 1 run scoreboard players operation #curr_z_japanese_village switch.data = #start_z_japanese_village switch.data
execute if score #scan_japanese_village switch.data matches 1 run data modify storage switch:doors japanese_village set value []


execute if score #scan_japanese_village switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_japanese_village switch.data matches 30.. summon marker run function switch:maps/survival/japanese_village/scan_doors_on_marker

execute if score #scan_japanese_village switch.data matches 1047 in minecraft:overworld run forceload remove 90000 90000 90010 90286
execute if score #scan_japanese_village switch.data matches 1047 in switch:game run forceload remove 90000 90000 90010 90286

execute if score #scan_japanese_village switch.data matches 1047 in minecraft:overworld run forceload remove 90010 90000 90020 90286
execute if score #scan_japanese_village switch.data matches 1047 in switch:game run forceload remove 90010 90000 90020 90286

execute if score #scan_japanese_village switch.data matches 1047 in minecraft:overworld run forceload remove 90020 90000 90031 90286
execute if score #scan_japanese_village switch.data matches 1047 in switch:game run forceload remove 90020 90000 90031 90286

execute if score #scan_japanese_village switch.data matches 1047 in minecraft:overworld run forceload remove 90031 90000 90041 90286
execute if score #scan_japanese_village switch.data matches 1047 in switch:game run forceload remove 90031 90000 90041 90286

execute if score #scan_japanese_village switch.data matches 1047 in minecraft:overworld run forceload remove 90041 90000 90051 90286
execute if score #scan_japanese_village switch.data matches 1047 in switch:game run forceload remove 90041 90000 90051 90286

execute if score #scan_japanese_village switch.data matches 1047 in minecraft:overworld run forceload remove 90051 90000 90061 90286
execute if score #scan_japanese_village switch.data matches 1047 in switch:game run forceload remove 90051 90000 90061 90286

execute if score #scan_japanese_village switch.data matches 1047 in minecraft:overworld run forceload remove 90061 90000 90071 90286
execute if score #scan_japanese_village switch.data matches 1047 in switch:game run forceload remove 90061 90000 90071 90286

execute if score #scan_japanese_village switch.data matches 1047 in minecraft:overworld run forceload remove 90071 90000 90081 90286
execute if score #scan_japanese_village switch.data matches 1047 in switch:game run forceload remove 90071 90000 90081 90286

execute if score #scan_japanese_village switch.data matches 1047 in minecraft:overworld run forceload remove 90081 90000 90092 90286
execute if score #scan_japanese_village switch.data matches 1047 in switch:game run forceload remove 90081 90000 90092 90286

execute if score #scan_japanese_village switch.data matches 1047 in minecraft:overworld run forceload remove 90092 90000 90102 90286
execute if score #scan_japanese_village switch.data matches 1047 in switch:game run forceload remove 90092 90000 90102 90286

execute if score #scan_japanese_village switch.data matches 1047 in minecraft:overworld run forceload remove 90102 90000 90112 90286
execute if score #scan_japanese_village switch.data matches 1047 in switch:game run forceload remove 90102 90000 90112 90286

execute if score #scan_japanese_village switch.data matches 1047 in minecraft:overworld run forceload remove 90112 90000 90122 90286
execute if score #scan_japanese_village switch.data matches 1047 in switch:game run forceload remove 90112 90000 90122 90286

execute if score #scan_japanese_village switch.data matches 1047 in minecraft:overworld run forceload remove 90122 90000 90132 90286
execute if score #scan_japanese_village switch.data matches 1047 in switch:game run forceload remove 90122 90000 90132 90286

execute if score #scan_japanese_village switch.data matches 1047 in minecraft:overworld run forceload remove 90132 90000 90143 90286
execute if score #scan_japanese_village switch.data matches 1047 in switch:game run forceload remove 90132 90000 90143 90286

execute if score #scan_japanese_village switch.data matches 1047 in minecraft:overworld run forceload remove 90143 90000 90153 90286
execute if score #scan_japanese_village switch.data matches 1047 in switch:game run forceload remove 90143 90000 90153 90286

execute if score #scan_japanese_village switch.data matches 1047 in minecraft:overworld run forceload remove 90153 90000 90163 90286
execute if score #scan_japanese_village switch.data matches 1047 in switch:game run forceload remove 90153 90000 90163 90286

execute if score #scan_japanese_village switch.data matches 1047 in minecraft:overworld run forceload remove 90163 90000 90173 90286
execute if score #scan_japanese_village switch.data matches 1047 in switch:game run forceload remove 90163 90000 90173 90286

execute if score #scan_japanese_village switch.data matches 1047 in minecraft:overworld run forceload remove 90173 90000 90183 90286
execute if score #scan_japanese_village switch.data matches 1047 in switch:game run forceload remove 90173 90000 90183 90286

execute if score #scan_japanese_village switch.data matches 1047 in minecraft:overworld run forceload remove 90183 90000 90193 90286
execute if score #scan_japanese_village switch.data matches 1047 in switch:game run forceload remove 90183 90000 90193 90286

execute if score #scan_japanese_village switch.data matches 1047 in minecraft:overworld run forceload remove 90193 90000 90204 90286
execute if score #scan_japanese_village switch.data matches 1047 in switch:game run forceload remove 90193 90000 90204 90286

execute if score #scan_japanese_village switch.data matches 1047 in minecraft:overworld run forceload remove 90204 90000 90214 90286
execute if score #scan_japanese_village switch.data matches 1047 in switch:game run forceload remove 90204 90000 90214 90286

execute if score #scan_japanese_village switch.data matches 1047 in minecraft:overworld run forceload remove 90214 90000 90224 90286
execute if score #scan_japanese_village switch.data matches 1047 in switch:game run forceload remove 90214 90000 90224 90286

execute if score #scan_japanese_village switch.data matches 1047 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"japanese_village","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"52","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_japanese_village switch.data matches 1047 run data remove storage switch:maps to_scan.japanese_village
execute if score #scan_japanese_village switch.data matches 1047 run scoreboard players reset #scan_japanese_village switch.data

execute if score #scan_japanese_village switch.data matches 1.. run schedule function switch:maps/survival/japanese_village/scan_doors 1t

