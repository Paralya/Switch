
#> switch:maps/survival/fireblast_cookie/scan_doors
#
# @within	switch:maps/survival/fireblast_cookie/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_fireblast_cookie switch.data 1

execute if score #scan_fireblast_cookie switch.data matches 1 in minecraft:overworld run forceload add 164000 164000 164025 164075
execute if score #scan_fireblast_cookie switch.data matches 1 in switch:game run forceload add 164000 164000 164025 164075

execute if score #scan_fireblast_cookie switch.data matches 1 in minecraft:overworld run forceload add 164025 164000 164050 164075
execute if score #scan_fireblast_cookie switch.data matches 1 in switch:game run forceload add 164025 164000 164050 164075

execute if score #scan_fireblast_cookie switch.data matches 1 in minecraft:overworld run forceload add 164050 164000 164075 164075
execute if score #scan_fireblast_cookie switch.data matches 1 in switch:game run forceload add 164050 164000 164075 164075

execute if score #scan_fireblast_cookie switch.data matches 1 run data modify storage switch:maps to_scan.fireblast_cookie set value 2b
execute if score #scan_fireblast_cookie switch.data matches 1 run scoreboard players set #start_x_fireblast_cookie switch.data 164001
execute if score #scan_fireblast_cookie switch.data matches 1 run scoreboard players set #start_y_fireblast_cookie switch.data 101
execute if score #scan_fireblast_cookie switch.data matches 1 run scoreboard players set #start_z_fireblast_cookie switch.data 164001
execute if score #scan_fireblast_cookie switch.data matches 1 run scoreboard players set #end_x_fireblast_cookie switch.data 164074
execute if score #scan_fireblast_cookie switch.data matches 1 run scoreboard players set #end_y_fireblast_cookie switch.data 155
execute if score #scan_fireblast_cookie switch.data matches 1 run scoreboard players set #end_z_fireblast_cookie switch.data 164074
execute if score #scan_fireblast_cookie switch.data matches 1 run scoreboard players operation #curr_x_fireblast_cookie switch.data = #start_x_fireblast_cookie switch.data
execute if score #scan_fireblast_cookie switch.data matches 1 run scoreboard players operation #curr_y_fireblast_cookie switch.data = #start_y_fireblast_cookie switch.data
execute if score #scan_fireblast_cookie switch.data matches 1 run scoreboard players operation #curr_z_fireblast_cookie switch.data = #start_z_fireblast_cookie switch.data
execute if score #scan_fireblast_cookie switch.data matches 1 run data modify storage switch:doors fireblast_cookie set value []

execute if score #scan_fireblast_cookie switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_fireblast_cookie switch.data matches 30.. summon marker run function switch:maps/survival/fireblast_cookie/scan_doors_on_marker

execute if score #scan_fireblast_cookie switch.data matches 91 in minecraft:overworld run forceload remove 164000 164000 164025 164075
execute if score #scan_fireblast_cookie switch.data matches 91 in switch:game run forceload remove 164000 164000 164025 164075

execute if score #scan_fireblast_cookie switch.data matches 91 in minecraft:overworld run forceload remove 164025 164000 164050 164075
execute if score #scan_fireblast_cookie switch.data matches 91 in switch:game run forceload remove 164025 164000 164050 164075

execute if score #scan_fireblast_cookie switch.data matches 91 in minecraft:overworld run forceload remove 164050 164000 164075 164075
execute if score #scan_fireblast_cookie switch.data matches 91 in switch:game run forceload remove 164050 164000 164075 164075

execute if score #scan_fireblast_cookie switch.data matches 91 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"fireblast_cookie","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"4","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_fireblast_cookie switch.data matches 91 run data remove storage switch:maps to_scan.fireblast_cookie
execute if score #scan_fireblast_cookie switch.data matches 91 run scoreboard players reset #scan_fireblast_cookie switch.data

execute if score #scan_fireblast_cookie switch.data matches 1.. run schedule function switch:maps/survival/fireblast_cookie/scan_doors 1t

