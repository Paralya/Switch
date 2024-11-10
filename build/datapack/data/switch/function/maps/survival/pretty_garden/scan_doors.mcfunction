
#> switch:maps/survival/pretty_garden/scan_doors
#
# @within	switch:maps/survival/pretty_garden/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_pretty_garden switch.data 1

execute if score #scan_pretty_garden switch.data matches 1 in minecraft:overworld run forceload add 140000 140000 140019 140070
execute if score #scan_pretty_garden switch.data matches 1 in switch:game run forceload add 140000 140000 140019 140070

execute if score #scan_pretty_garden switch.data matches 1 in minecraft:overworld run forceload add 140019 140000 140037 140070
execute if score #scan_pretty_garden switch.data matches 1 in switch:game run forceload add 140019 140000 140037 140070

execute if score #scan_pretty_garden switch.data matches 1 in minecraft:overworld run forceload add 140037 140000 140056 140070
execute if score #scan_pretty_garden switch.data matches 1 in switch:game run forceload add 140037 140000 140056 140070

execute if score #scan_pretty_garden switch.data matches 1 run data modify storage switch:maps to_scan.pretty_garden set value 2b
execute if score #scan_pretty_garden switch.data matches 1 run scoreboard players set #start_x_pretty_garden switch.data 140001
execute if score #scan_pretty_garden switch.data matches 1 run scoreboard players set #start_y_pretty_garden switch.data 1
execute if score #scan_pretty_garden switch.data matches 1 run scoreboard players set #start_z_pretty_garden switch.data 140001
execute if score #scan_pretty_garden switch.data matches 1 run scoreboard players set #end_x_pretty_garden switch.data 140055
execute if score #scan_pretty_garden switch.data matches 1 run scoreboard players set #end_y_pretty_garden switch.data 37
execute if score #scan_pretty_garden switch.data matches 1 run scoreboard players set #end_z_pretty_garden switch.data 140069
execute if score #scan_pretty_garden switch.data matches 1 run scoreboard players operation #curr_x_pretty_garden switch.data = #start_x_pretty_garden switch.data
execute if score #scan_pretty_garden switch.data matches 1 run scoreboard players operation #curr_y_pretty_garden switch.data = #start_y_pretty_garden switch.data
execute if score #scan_pretty_garden switch.data matches 1 run scoreboard players operation #curr_z_pretty_garden switch.data = #start_z_pretty_garden switch.data
execute if score #scan_pretty_garden switch.data matches 1 run data modify storage switch:doors pretty_garden set value []


execute if score #scan_pretty_garden switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_pretty_garden switch.data matches 30.. summon marker run function switch:maps/survival/pretty_garden/scan_doors_on_marker

execute if score #scan_pretty_garden switch.data matches 59 in minecraft:overworld run forceload remove 140000 140000 140019 140070
execute if score #scan_pretty_garden switch.data matches 59 in switch:game run forceload remove 140000 140000 140019 140070

execute if score #scan_pretty_garden switch.data matches 59 in minecraft:overworld run forceload remove 140019 140000 140037 140070
execute if score #scan_pretty_garden switch.data matches 59 in switch:game run forceload remove 140019 140000 140037 140070

execute if score #scan_pretty_garden switch.data matches 59 in minecraft:overworld run forceload remove 140037 140000 140056 140070
execute if score #scan_pretty_garden switch.data matches 59 in switch:game run forceload remove 140037 140000 140056 140070

execute if score #scan_pretty_garden switch.data matches 59 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"pretty_garden","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"2","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_pretty_garden switch.data matches 59 run data remove storage switch:maps to_scan.pretty_garden
execute if score #scan_pretty_garden switch.data matches 59 run scoreboard players reset #scan_pretty_garden switch.data

execute if score #scan_pretty_garden switch.data matches 1.. run schedule function switch:maps/survival/pretty_garden/scan_doors 1t

