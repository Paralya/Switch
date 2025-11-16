
#> switch:maps/survival/adraik_big_ball/scan_doors
#
# @within	switch:maps/survival/adraik_big_ball/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_adraik_big_ball switch.data 1

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33000 33000 33014 33205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33000 33000 33014 33205

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33014 33000 33027 33205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33014 33000 33027 33205

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33027 33000 33041 33205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33027 33000 33041 33205

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33041 33000 33055 33205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33041 33000 33055 33205

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33055 33000 33069 33205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33055 33000 33069 33205

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33069 33000 33082 33205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33069 33000 33082 33205

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33082 33000 33096 33205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33082 33000 33096 33205

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33096 33000 33110 33205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33096 33000 33110 33205

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33110 33000 33124 33205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33110 33000 33124 33205

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33124 33000 33137 33205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33124 33000 33137 33205

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33137 33000 33151 33205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33137 33000 33151 33205

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33151 33000 33165 33205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33151 33000 33165 33205

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33165 33000 33179 33205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33165 33000 33179 33205

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33179 33000 33192 33205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33179 33000 33192 33205

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33192 33000 33206 33205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33192 33000 33206 33205

execute if score #scan_adraik_big_ball switch.data matches 1 run data modify storage switch:maps to_scan.adraik_big_ball set value 2b
execute if score #scan_adraik_big_ball switch.data matches 1 run scoreboard players set #start_x_adraik_big_ball switch.data 33001
execute if score #scan_adraik_big_ball switch.data matches 1 run scoreboard players set #start_y_adraik_big_ball switch.data 101
execute if score #scan_adraik_big_ball switch.data matches 1 run scoreboard players set #start_z_adraik_big_ball switch.data 33001
execute if score #scan_adraik_big_ball switch.data matches 1 run scoreboard players set #end_x_adraik_big_ball switch.data 33205
execute if score #scan_adraik_big_ball switch.data matches 1 run scoreboard players set #end_y_adraik_big_ball switch.data 256
execute if score #scan_adraik_big_ball switch.data matches 1 run scoreboard players set #end_z_adraik_big_ball switch.data 33204
execute if score #scan_adraik_big_ball switch.data matches 1 run scoreboard players operation #curr_x_adraik_big_ball switch.data = #start_x_adraik_big_ball switch.data
execute if score #scan_adraik_big_ball switch.data matches 1 run scoreboard players operation #curr_y_adraik_big_ball switch.data = #start_y_adraik_big_ball switch.data
execute if score #scan_adraik_big_ball switch.data matches 1 run scoreboard players operation #curr_z_adraik_big_ball switch.data = #start_z_adraik_big_ball switch.data
execute if score #scan_adraik_big_ball switch.data matches 1 run data modify storage switch:doors adraik_big_ball set value []

execute if score #scan_adraik_big_ball switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_adraik_big_ball switch.data matches 30.. summon marker run function switch:maps/survival/adraik_big_ball/scan_doors_on_marker

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 33000 33000 33014 33205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 33000 33000 33014 33205

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 33014 33000 33027 33205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 33014 33000 33027 33205

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 33027 33000 33041 33205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 33027 33000 33041 33205

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 33041 33000 33055 33205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 33041 33000 33055 33205

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 33055 33000 33069 33205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 33055 33000 33069 33205

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 33069 33000 33082 33205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 33069 33000 33082 33205

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 33082 33000 33096 33205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 33082 33000 33096 33205

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 33096 33000 33110 33205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 33096 33000 33110 33205

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 33110 33000 33124 33205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 33110 33000 33124 33205

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 33124 33000 33137 33205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 33124 33000 33137 33205

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 33137 33000 33151 33205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 33137 33000 33151 33205

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 33151 33000 33165 33205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 33151 33000 33165 33205

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 33165 33000 33179 33205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 33165 33000 33179 33205

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 33179 33000 33192 33205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 33179 33000 33192 33205

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 33192 33000 33206 33205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 33192 33000 33206 33205

execute if score #scan_adraik_big_ball switch.data matches 1335 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"adraik_big_ball","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"66","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_adraik_big_ball switch.data matches 1335 run data remove storage switch:maps to_scan.adraik_big_ball
execute if score #scan_adraik_big_ball switch.data matches 1335 run scoreboard players reset #scan_adraik_big_ball switch.data

execute if score #scan_adraik_big_ball switch.data matches 1.. run schedule function switch:maps/survival/adraik_big_ball/scan_doors 1t

