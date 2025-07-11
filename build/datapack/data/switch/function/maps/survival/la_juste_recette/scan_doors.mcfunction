
#> switch:maps/survival/la_juste_recette/scan_doors
#
# @within	switch:maps/survival/la_juste_recette/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_la_juste_recette switch.data 1

execute if score #scan_la_juste_recette switch.data matches 1 in minecraft:overworld run forceload add 57000 57000 57021 57124
execute if score #scan_la_juste_recette switch.data matches 1 in switch:game run forceload add 57000 57000 57021 57124

execute if score #scan_la_juste_recette switch.data matches 1 in minecraft:overworld run forceload add 57021 57000 57041 57124
execute if score #scan_la_juste_recette switch.data matches 1 in switch:game run forceload add 57021 57000 57041 57124

execute if score #scan_la_juste_recette switch.data matches 1 in minecraft:overworld run forceload add 57041 57000 57062 57124
execute if score #scan_la_juste_recette switch.data matches 1 in switch:game run forceload add 57041 57000 57062 57124

execute if score #scan_la_juste_recette switch.data matches 1 in minecraft:overworld run forceload add 57062 57000 57083 57124
execute if score #scan_la_juste_recette switch.data matches 1 in switch:game run forceload add 57062 57000 57083 57124

execute if score #scan_la_juste_recette switch.data matches 1 in minecraft:overworld run forceload add 57083 57000 57103 57124
execute if score #scan_la_juste_recette switch.data matches 1 in switch:game run forceload add 57083 57000 57103 57124

execute if score #scan_la_juste_recette switch.data matches 1 in minecraft:overworld run forceload add 57103 57000 57124 57124
execute if score #scan_la_juste_recette switch.data matches 1 in switch:game run forceload add 57103 57000 57124 57124

execute if score #scan_la_juste_recette switch.data matches 1 run data modify storage switch:maps to_scan.la_juste_recette set value 2b
execute if score #scan_la_juste_recette switch.data matches 1 run scoreboard players set #start_x_la_juste_recette switch.data 57001
execute if score #scan_la_juste_recette switch.data matches 1 run scoreboard players set #start_y_la_juste_recette switch.data 101
execute if score #scan_la_juste_recette switch.data matches 1 run scoreboard players set #start_z_la_juste_recette switch.data 57001
execute if score #scan_la_juste_recette switch.data matches 1 run scoreboard players set #end_x_la_juste_recette switch.data 57123
execute if score #scan_la_juste_recette switch.data matches 1 run scoreboard players set #end_y_la_juste_recette switch.data 135
execute if score #scan_la_juste_recette switch.data matches 1 run scoreboard players set #end_z_la_juste_recette switch.data 57123
execute if score #scan_la_juste_recette switch.data matches 1 run scoreboard players operation #curr_x_la_juste_recette switch.data = #start_x_la_juste_recette switch.data
execute if score #scan_la_juste_recette switch.data matches 1 run scoreboard players operation #curr_y_la_juste_recette switch.data = #start_y_la_juste_recette switch.data
execute if score #scan_la_juste_recette switch.data matches 1 run scoreboard players operation #curr_z_la_juste_recette switch.data = #start_z_la_juste_recette switch.data
execute if score #scan_la_juste_recette switch.data matches 1 run data modify storage switch:doors la_juste_recette set value []

execute if score #scan_la_juste_recette switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_la_juste_recette switch.data matches 30.. summon marker run function switch:maps/survival/la_juste_recette/scan_doors_on_marker

execute if score #scan_la_juste_recette switch.data matches 136 in minecraft:overworld run forceload remove 57000 57000 57021 57124
execute if score #scan_la_juste_recette switch.data matches 136 in switch:game run forceload remove 57000 57000 57021 57124

execute if score #scan_la_juste_recette switch.data matches 136 in minecraft:overworld run forceload remove 57021 57000 57041 57124
execute if score #scan_la_juste_recette switch.data matches 136 in switch:game run forceload remove 57021 57000 57041 57124

execute if score #scan_la_juste_recette switch.data matches 136 in minecraft:overworld run forceload remove 57041 57000 57062 57124
execute if score #scan_la_juste_recette switch.data matches 136 in switch:game run forceload remove 57041 57000 57062 57124

execute if score #scan_la_juste_recette switch.data matches 136 in minecraft:overworld run forceload remove 57062 57000 57083 57124
execute if score #scan_la_juste_recette switch.data matches 136 in switch:game run forceload remove 57062 57000 57083 57124

execute if score #scan_la_juste_recette switch.data matches 136 in minecraft:overworld run forceload remove 57083 57000 57103 57124
execute if score #scan_la_juste_recette switch.data matches 136 in switch:game run forceload remove 57083 57000 57103 57124

execute if score #scan_la_juste_recette switch.data matches 136 in minecraft:overworld run forceload remove 57103 57000 57124 57124
execute if score #scan_la_juste_recette switch.data matches 136 in switch:game run forceload remove 57103 57000 57124 57124

execute if score #scan_la_juste_recette switch.data matches 136 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"la_juste_recette","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"6","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_la_juste_recette switch.data matches 136 run data remove storage switch:maps to_scan.la_juste_recette
execute if score #scan_la_juste_recette switch.data matches 136 run scoreboard players reset #scan_la_juste_recette switch.data

execute if score #scan_la_juste_recette switch.data matches 1.. run schedule function switch:maps/survival/la_juste_recette/scan_doors 1t

