
#> switch:maps/survival/kart_racer_relai/scan_doors
#
# @within	switch:maps/survival/kart_racer_relai/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_kart_racer_relai switch.data 1

execute if score #scan_kart_racer_relai switch.data matches 1 in minecraft:overworld run forceload add 64000 64000 64020 64126
execute if score #scan_kart_racer_relai switch.data matches 1 in switch:game run forceload add 64000 64000 64020 64126

execute if score #scan_kart_racer_relai switch.data matches 1 in minecraft:overworld run forceload add 64020 64000 64040 64126
execute if score #scan_kart_racer_relai switch.data matches 1 in switch:game run forceload add 64020 64000 64040 64126

execute if score #scan_kart_racer_relai switch.data matches 1 in minecraft:overworld run forceload add 64040 64000 64061 64126
execute if score #scan_kart_racer_relai switch.data matches 1 in switch:game run forceload add 64040 64000 64061 64126

execute if score #scan_kart_racer_relai switch.data matches 1 in minecraft:overworld run forceload add 64061 64000 64081 64126
execute if score #scan_kart_racer_relai switch.data matches 1 in switch:game run forceload add 64061 64000 64081 64126

execute if score #scan_kart_racer_relai switch.data matches 1 in minecraft:overworld run forceload add 64081 64000 64101 64126
execute if score #scan_kart_racer_relai switch.data matches 1 in switch:game run forceload add 64081 64000 64101 64126

execute if score #scan_kart_racer_relai switch.data matches 1 run data modify storage switch:maps to_scan.kart_racer_relai set value 2b
execute if score #scan_kart_racer_relai switch.data matches 1 run scoreboard players set #start_x_kart_racer_relai switch.data 64001
execute if score #scan_kart_racer_relai switch.data matches 1 run scoreboard players set #start_y_kart_racer_relai switch.data 1
execute if score #scan_kart_racer_relai switch.data matches 1 run scoreboard players set #start_z_kart_racer_relai switch.data 64001
execute if score #scan_kart_racer_relai switch.data matches 1 run scoreboard players set #end_x_kart_racer_relai switch.data 64100
execute if score #scan_kart_racer_relai switch.data matches 1 run scoreboard players set #end_y_kart_racer_relai switch.data 52
execute if score #scan_kart_racer_relai switch.data matches 1 run scoreboard players set #end_z_kart_racer_relai switch.data 64125
execute if score #scan_kart_racer_relai switch.data matches 1 run scoreboard players operation #curr_x_kart_racer_relai switch.data = #start_x_kart_racer_relai switch.data
execute if score #scan_kart_racer_relai switch.data matches 1 run scoreboard players operation #curr_y_kart_racer_relai switch.data = #start_y_kart_racer_relai switch.data
execute if score #scan_kart_racer_relai switch.data matches 1 run scoreboard players operation #curr_z_kart_racer_relai switch.data = #start_z_kart_racer_relai switch.data
execute if score #scan_kart_racer_relai switch.data matches 1 run data modify storage switch:doors kart_racer_relai set value []


execute if score #scan_kart_racer_relai switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_kart_racer_relai switch.data matches 30.. summon marker run function switch:maps/survival/kart_racer_relai/scan_doors_on_marker

execute if score #scan_kart_racer_relai switch.data matches 160 in minecraft:overworld run forceload remove 64000 64000 64020 64126
execute if score #scan_kart_racer_relai switch.data matches 160 in switch:game run forceload remove 64000 64000 64020 64126

execute if score #scan_kart_racer_relai switch.data matches 160 in minecraft:overworld run forceload remove 64020 64000 64040 64126
execute if score #scan_kart_racer_relai switch.data matches 160 in switch:game run forceload remove 64020 64000 64040 64126

execute if score #scan_kart_racer_relai switch.data matches 160 in minecraft:overworld run forceload remove 64040 64000 64061 64126
execute if score #scan_kart_racer_relai switch.data matches 160 in switch:game run forceload remove 64040 64000 64061 64126

execute if score #scan_kart_racer_relai switch.data matches 160 in minecraft:overworld run forceload remove 64061 64000 64081 64126
execute if score #scan_kart_racer_relai switch.data matches 160 in switch:game run forceload remove 64061 64000 64081 64126

execute if score #scan_kart_racer_relai switch.data matches 160 in minecraft:overworld run forceload remove 64081 64000 64101 64126
execute if score #scan_kart_racer_relai switch.data matches 160 in switch:game run forceload remove 64081 64000 64101 64126

execute if score #scan_kart_racer_relai switch.data matches 160 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"kart_racer_relai","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"8","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_kart_racer_relai switch.data matches 160 run data remove storage switch:maps to_scan.kart_racer_relai
execute if score #scan_kart_racer_relai switch.data matches 160 run scoreboard players reset #scan_kart_racer_relai switch.data

execute if score #scan_kart_racer_relai switch.data matches 1.. run schedule function switch:maps/survival/kart_racer_relai/scan_doors 1t

