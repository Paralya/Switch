
#> switch:maps/survival/lg_village/scan_doors
#
# @within	switch:maps/survival/lg_village/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_lg_village switch.data 1

execute if score #scan_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96000 96000 96012 96239
execute if score #scan_lg_village switch.data matches 1 in switch:game run forceload add 96000 96000 96012 96239

execute if score #scan_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96012 96000 96025 96239
execute if score #scan_lg_village switch.data matches 1 in switch:game run forceload add 96012 96000 96025 96239

execute if score #scan_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96025 96000 96037 96239
execute if score #scan_lg_village switch.data matches 1 in switch:game run forceload add 96025 96000 96037 96239

execute if score #scan_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96037 96000 96049 96239
execute if score #scan_lg_village switch.data matches 1 in switch:game run forceload add 96037 96000 96049 96239

execute if score #scan_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96049 96000 96062 96239
execute if score #scan_lg_village switch.data matches 1 in switch:game run forceload add 96049 96000 96062 96239

execute if score #scan_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96062 96000 96074 96239
execute if score #scan_lg_village switch.data matches 1 in switch:game run forceload add 96062 96000 96074 96239

execute if score #scan_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96074 96000 96086 96239
execute if score #scan_lg_village switch.data matches 1 in switch:game run forceload add 96074 96000 96086 96239

execute if score #scan_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96086 96000 96098 96239
execute if score #scan_lg_village switch.data matches 1 in switch:game run forceload add 96086 96000 96098 96239

execute if score #scan_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96098 96000 96111 96239
execute if score #scan_lg_village switch.data matches 1 in switch:game run forceload add 96098 96000 96111 96239

execute if score #scan_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96111 96000 96123 96239
execute if score #scan_lg_village switch.data matches 1 in switch:game run forceload add 96111 96000 96123 96239

execute if score #scan_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96123 96000 96135 96239
execute if score #scan_lg_village switch.data matches 1 in switch:game run forceload add 96123 96000 96135 96239

execute if score #scan_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96135 96000 96148 96239
execute if score #scan_lg_village switch.data matches 1 in switch:game run forceload add 96135 96000 96148 96239

execute if score #scan_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96148 96000 96160 96239
execute if score #scan_lg_village switch.data matches 1 in switch:game run forceload add 96148 96000 96160 96239

execute if score #scan_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96160 96000 96172 96239
execute if score #scan_lg_village switch.data matches 1 in switch:game run forceload add 96160 96000 96172 96239

execute if score #scan_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96172 96000 96184 96239
execute if score #scan_lg_village switch.data matches 1 in switch:game run forceload add 96172 96000 96184 96239

execute if score #scan_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96184 96000 96197 96239
execute if score #scan_lg_village switch.data matches 1 in switch:game run forceload add 96184 96000 96197 96239

execute if score #scan_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96197 96000 96209 96239
execute if score #scan_lg_village switch.data matches 1 in switch:game run forceload add 96197 96000 96209 96239

execute if score #scan_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96209 96000 96221 96239
execute if score #scan_lg_village switch.data matches 1 in switch:game run forceload add 96209 96000 96221 96239

execute if score #scan_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96221 96000 96234 96239
execute if score #scan_lg_village switch.data matches 1 in switch:game run forceload add 96221 96000 96234 96239

execute if score #scan_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96234 96000 96246 96239
execute if score #scan_lg_village switch.data matches 1 in switch:game run forceload add 96234 96000 96246 96239

execute if score #scan_lg_village switch.data matches 1 run data modify storage switch:maps to_scan.lg_village set value 2b
execute if score #scan_lg_village switch.data matches 1 run scoreboard players set #start_x_lg_village switch.data 96001
execute if score #scan_lg_village switch.data matches 1 run scoreboard players set #start_y_lg_village switch.data -62
execute if score #scan_lg_village switch.data matches 1 run scoreboard players set #start_z_lg_village switch.data 96001
execute if score #scan_lg_village switch.data matches 1 run scoreboard players set #end_x_lg_village switch.data 96245
execute if score #scan_lg_village switch.data matches 1 run scoreboard players set #end_y_lg_village switch.data 49
execute if score #scan_lg_village switch.data matches 1 run scoreboard players set #end_z_lg_village switch.data 96238
execute if score #scan_lg_village switch.data matches 1 run scoreboard players operation #curr_x_lg_village switch.data = #start_x_lg_village switch.data
execute if score #scan_lg_village switch.data matches 1 run scoreboard players operation #curr_y_lg_village switch.data = #start_y_lg_village switch.data
execute if score #scan_lg_village switch.data matches 1 run scoreboard players operation #curr_z_lg_village switch.data = #start_z_lg_village switch.data
execute if score #scan_lg_village switch.data matches 1 run data modify storage switch:doors lg_village set value []

execute if score #scan_lg_village switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_lg_village switch.data matches 30.. summon marker run function switch:maps/survival/lg_village/scan_doors_on_marker

execute if score #scan_lg_village switch.data matches 1337 in minecraft:overworld run forceload remove 96000 96000 96012 96239
execute if score #scan_lg_village switch.data matches 1337 in switch:game run forceload remove 96000 96000 96012 96239

execute if score #scan_lg_village switch.data matches 1337 in minecraft:overworld run forceload remove 96012 96000 96025 96239
execute if score #scan_lg_village switch.data matches 1337 in switch:game run forceload remove 96012 96000 96025 96239

execute if score #scan_lg_village switch.data matches 1337 in minecraft:overworld run forceload remove 96025 96000 96037 96239
execute if score #scan_lg_village switch.data matches 1337 in switch:game run forceload remove 96025 96000 96037 96239

execute if score #scan_lg_village switch.data matches 1337 in minecraft:overworld run forceload remove 96037 96000 96049 96239
execute if score #scan_lg_village switch.data matches 1337 in switch:game run forceload remove 96037 96000 96049 96239

execute if score #scan_lg_village switch.data matches 1337 in minecraft:overworld run forceload remove 96049 96000 96062 96239
execute if score #scan_lg_village switch.data matches 1337 in switch:game run forceload remove 96049 96000 96062 96239

execute if score #scan_lg_village switch.data matches 1337 in minecraft:overworld run forceload remove 96062 96000 96074 96239
execute if score #scan_lg_village switch.data matches 1337 in switch:game run forceload remove 96062 96000 96074 96239

execute if score #scan_lg_village switch.data matches 1337 in minecraft:overworld run forceload remove 96074 96000 96086 96239
execute if score #scan_lg_village switch.data matches 1337 in switch:game run forceload remove 96074 96000 96086 96239

execute if score #scan_lg_village switch.data matches 1337 in minecraft:overworld run forceload remove 96086 96000 96098 96239
execute if score #scan_lg_village switch.data matches 1337 in switch:game run forceload remove 96086 96000 96098 96239

execute if score #scan_lg_village switch.data matches 1337 in minecraft:overworld run forceload remove 96098 96000 96111 96239
execute if score #scan_lg_village switch.data matches 1337 in switch:game run forceload remove 96098 96000 96111 96239

execute if score #scan_lg_village switch.data matches 1337 in minecraft:overworld run forceload remove 96111 96000 96123 96239
execute if score #scan_lg_village switch.data matches 1337 in switch:game run forceload remove 96111 96000 96123 96239

execute if score #scan_lg_village switch.data matches 1337 in minecraft:overworld run forceload remove 96123 96000 96135 96239
execute if score #scan_lg_village switch.data matches 1337 in switch:game run forceload remove 96123 96000 96135 96239

execute if score #scan_lg_village switch.data matches 1337 in minecraft:overworld run forceload remove 96135 96000 96148 96239
execute if score #scan_lg_village switch.data matches 1337 in switch:game run forceload remove 96135 96000 96148 96239

execute if score #scan_lg_village switch.data matches 1337 in minecraft:overworld run forceload remove 96148 96000 96160 96239
execute if score #scan_lg_village switch.data matches 1337 in switch:game run forceload remove 96148 96000 96160 96239

execute if score #scan_lg_village switch.data matches 1337 in minecraft:overworld run forceload remove 96160 96000 96172 96239
execute if score #scan_lg_village switch.data matches 1337 in switch:game run forceload remove 96160 96000 96172 96239

execute if score #scan_lg_village switch.data matches 1337 in minecraft:overworld run forceload remove 96172 96000 96184 96239
execute if score #scan_lg_village switch.data matches 1337 in switch:game run forceload remove 96172 96000 96184 96239

execute if score #scan_lg_village switch.data matches 1337 in minecraft:overworld run forceload remove 96184 96000 96197 96239
execute if score #scan_lg_village switch.data matches 1337 in switch:game run forceload remove 96184 96000 96197 96239

execute if score #scan_lg_village switch.data matches 1337 in minecraft:overworld run forceload remove 96197 96000 96209 96239
execute if score #scan_lg_village switch.data matches 1337 in switch:game run forceload remove 96197 96000 96209 96239

execute if score #scan_lg_village switch.data matches 1337 in minecraft:overworld run forceload remove 96209 96000 96221 96239
execute if score #scan_lg_village switch.data matches 1337 in switch:game run forceload remove 96209 96000 96221 96239

execute if score #scan_lg_village switch.data matches 1337 in minecraft:overworld run forceload remove 96221 96000 96234 96239
execute if score #scan_lg_village switch.data matches 1337 in switch:game run forceload remove 96221 96000 96234 96239

execute if score #scan_lg_village switch.data matches 1337 in minecraft:overworld run forceload remove 96234 96000 96246 96239
execute if score #scan_lg_village switch.data matches 1337 in switch:game run forceload remove 96234 96000 96246 96239

execute if score #scan_lg_village switch.data matches 1337 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"lg_village","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"66","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_lg_village switch.data matches 1337 run data remove storage switch:maps to_scan.lg_village
execute if score #scan_lg_village switch.data matches 1337 run scoreboard players reset #scan_lg_village switch.data

execute if score #scan_lg_village switch.data matches 1.. run schedule function switch:maps/survival/lg_village/scan_doors 1t

