
#> switch:maps/survival/snowball_painter/scan_doors
#
# @within	switch:maps/survival/snowball_painter/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_snowball_painter switch.data 1

execute if score #scan_snowball_painter switch.data matches 1 in minecraft:overworld run forceload add 112000 112000 112022 112042
execute if score #scan_snowball_painter switch.data matches 1 in switch:game run forceload add 112000 112000 112022 112042

execute if score #scan_snowball_painter switch.data matches 1 in minecraft:overworld run forceload add 112022 112000 112043 112042
execute if score #scan_snowball_painter switch.data matches 1 in switch:game run forceload add 112022 112000 112043 112042

execute if score #scan_snowball_painter switch.data matches 1 run data modify storage switch:maps to_scan.snowball_painter set value 2b
execute if score #scan_snowball_painter switch.data matches 1 run scoreboard players set #start_x_snowball_painter switch.data 112001
execute if score #scan_snowball_painter switch.data matches 1 run scoreboard players set #start_y_snowball_painter switch.data 1
execute if score #scan_snowball_painter switch.data matches 1 run scoreboard players set #start_z_snowball_painter switch.data 112001
execute if score #scan_snowball_painter switch.data matches 1 run scoreboard players set #end_x_snowball_painter switch.data 112042
execute if score #scan_snowball_painter switch.data matches 1 run scoreboard players set #end_y_snowball_painter switch.data 32
execute if score #scan_snowball_painter switch.data matches 1 run scoreboard players set #end_z_snowball_painter switch.data 112041
execute if score #scan_snowball_painter switch.data matches 1 run scoreboard players operation #curr_x_snowball_painter switch.data = #start_x_snowball_painter switch.data
execute if score #scan_snowball_painter switch.data matches 1 run scoreboard players operation #curr_y_snowball_painter switch.data = #start_y_snowball_painter switch.data
execute if score #scan_snowball_painter switch.data matches 1 run scoreboard players operation #curr_z_snowball_painter switch.data = #start_z_snowball_painter switch.data
execute if score #scan_snowball_painter switch.data matches 1 run data modify storage switch:doors snowball_painter set value []

execute if score #scan_snowball_painter switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_snowball_painter switch.data matches 30.. summon marker run function switch:maps/survival/snowball_painter/scan_doors_on_marker

execute if score #scan_snowball_painter switch.data matches 42 in minecraft:overworld run forceload remove 112000 112000 112022 112042
execute if score #scan_snowball_painter switch.data matches 42 in switch:game run forceload remove 112000 112000 112022 112042

execute if score #scan_snowball_painter switch.data matches 42 in minecraft:overworld run forceload remove 112022 112000 112043 112042
execute if score #scan_snowball_painter switch.data matches 42 in switch:game run forceload remove 112022 112000 112043 112042

execute if score #scan_snowball_painter switch.data matches 42 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"snowball_painter","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"2","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_snowball_painter switch.data matches 42 run data remove storage switch:maps to_scan.snowball_painter
execute if score #scan_snowball_painter switch.data matches 42 run scoreboard players reset #scan_snowball_painter switch.data

execute if score #scan_snowball_painter switch.data matches 1.. run schedule function switch:maps/survival/snowball_painter/scan_doors 1t

