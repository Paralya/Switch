
#> switch:maps/survival/paralya_lobby/scan_doors
#
# @within	switch:maps/survival/paralya_lobby/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_paralya_lobby switch.data 1

execute if score #scan_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add 99000 99000 99014 99200
execute if score #scan_paralya_lobby switch.data matches 1 in switch:game run forceload add 99000 99000 99014 99200

execute if score #scan_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add 99014 99000 99029 99200
execute if score #scan_paralya_lobby switch.data matches 1 in switch:game run forceload add 99014 99000 99029 99200

execute if score #scan_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add 99029 99000 99043 99200
execute if score #scan_paralya_lobby switch.data matches 1 in switch:game run forceload add 99029 99000 99043 99200

execute if score #scan_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add 99043 99000 99057 99200
execute if score #scan_paralya_lobby switch.data matches 1 in switch:game run forceload add 99043 99000 99057 99200

execute if score #scan_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add 99057 99000 99071 99200
execute if score #scan_paralya_lobby switch.data matches 1 in switch:game run forceload add 99057 99000 99071 99200

execute if score #scan_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add 99071 99000 99086 99200
execute if score #scan_paralya_lobby switch.data matches 1 in switch:game run forceload add 99071 99000 99086 99200

execute if score #scan_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add 99086 99000 99100 99200
execute if score #scan_paralya_lobby switch.data matches 1 in switch:game run forceload add 99086 99000 99100 99200

execute if score #scan_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add 99100 99000 99114 99200
execute if score #scan_paralya_lobby switch.data matches 1 in switch:game run forceload add 99100 99000 99114 99200

execute if score #scan_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add 99114 99000 99129 99200
execute if score #scan_paralya_lobby switch.data matches 1 in switch:game run forceload add 99114 99000 99129 99200

execute if score #scan_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add 99129 99000 99143 99200
execute if score #scan_paralya_lobby switch.data matches 1 in switch:game run forceload add 99129 99000 99143 99200

execute if score #scan_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add 99143 99000 99157 99200
execute if score #scan_paralya_lobby switch.data matches 1 in switch:game run forceload add 99143 99000 99157 99200

execute if score #scan_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add 99157 99000 99171 99200
execute if score #scan_paralya_lobby switch.data matches 1 in switch:game run forceload add 99157 99000 99171 99200

execute if score #scan_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add 99171 99000 99186 99200
execute if score #scan_paralya_lobby switch.data matches 1 in switch:game run forceload add 99171 99000 99186 99200

execute if score #scan_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add 99186 99000 99200 99200
execute if score #scan_paralya_lobby switch.data matches 1 in switch:game run forceload add 99186 99000 99200 99200

execute if score #scan_paralya_lobby switch.data matches 1 run data modify storage switch:maps to_scan.paralya_lobby set value 2b
execute if score #scan_paralya_lobby switch.data matches 1 run scoreboard players set #start_x_paralya_lobby switch.data 99001
execute if score #scan_paralya_lobby switch.data matches 1 run scoreboard players set #start_y_paralya_lobby switch.data -62
execute if score #scan_paralya_lobby switch.data matches 1 run scoreboard players set #start_z_paralya_lobby switch.data 99001
execute if score #scan_paralya_lobby switch.data matches 1 run scoreboard players set #end_x_paralya_lobby switch.data 99199
execute if score #scan_paralya_lobby switch.data matches 1 run scoreboard players set #end_y_paralya_lobby switch.data 97
execute if score #scan_paralya_lobby switch.data matches 1 run scoreboard players set #end_z_paralya_lobby switch.data 99199
execute if score #scan_paralya_lobby switch.data matches 1 run scoreboard players operation #curr_x_paralya_lobby switch.data = #start_x_paralya_lobby switch.data
execute if score #scan_paralya_lobby switch.data matches 1 run scoreboard players operation #curr_y_paralya_lobby switch.data = #start_y_paralya_lobby switch.data
execute if score #scan_paralya_lobby switch.data matches 1 run scoreboard players operation #curr_z_paralya_lobby switch.data = #start_z_paralya_lobby switch.data
execute if score #scan_paralya_lobby switch.data matches 1 run data modify storage switch:doors paralya_lobby set value []


execute if score #scan_paralya_lobby switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_paralya_lobby switch.data matches 30.. summon marker run function switch:maps/survival/paralya_lobby/scan_doors_on_marker

execute if score #scan_paralya_lobby switch.data matches 1298 in minecraft:overworld run forceload remove 99000 99000 99014 99200
execute if score #scan_paralya_lobby switch.data matches 1298 in switch:game run forceload remove 99000 99000 99014 99200

execute if score #scan_paralya_lobby switch.data matches 1298 in minecraft:overworld run forceload remove 99014 99000 99029 99200
execute if score #scan_paralya_lobby switch.data matches 1298 in switch:game run forceload remove 99014 99000 99029 99200

execute if score #scan_paralya_lobby switch.data matches 1298 in minecraft:overworld run forceload remove 99029 99000 99043 99200
execute if score #scan_paralya_lobby switch.data matches 1298 in switch:game run forceload remove 99029 99000 99043 99200

execute if score #scan_paralya_lobby switch.data matches 1298 in minecraft:overworld run forceload remove 99043 99000 99057 99200
execute if score #scan_paralya_lobby switch.data matches 1298 in switch:game run forceload remove 99043 99000 99057 99200

execute if score #scan_paralya_lobby switch.data matches 1298 in minecraft:overworld run forceload remove 99057 99000 99071 99200
execute if score #scan_paralya_lobby switch.data matches 1298 in switch:game run forceload remove 99057 99000 99071 99200

execute if score #scan_paralya_lobby switch.data matches 1298 in minecraft:overworld run forceload remove 99071 99000 99086 99200
execute if score #scan_paralya_lobby switch.data matches 1298 in switch:game run forceload remove 99071 99000 99086 99200

execute if score #scan_paralya_lobby switch.data matches 1298 in minecraft:overworld run forceload remove 99086 99000 99100 99200
execute if score #scan_paralya_lobby switch.data matches 1298 in switch:game run forceload remove 99086 99000 99100 99200

execute if score #scan_paralya_lobby switch.data matches 1298 in minecraft:overworld run forceload remove 99100 99000 99114 99200
execute if score #scan_paralya_lobby switch.data matches 1298 in switch:game run forceload remove 99100 99000 99114 99200

execute if score #scan_paralya_lobby switch.data matches 1298 in minecraft:overworld run forceload remove 99114 99000 99129 99200
execute if score #scan_paralya_lobby switch.data matches 1298 in switch:game run forceload remove 99114 99000 99129 99200

execute if score #scan_paralya_lobby switch.data matches 1298 in minecraft:overworld run forceload remove 99129 99000 99143 99200
execute if score #scan_paralya_lobby switch.data matches 1298 in switch:game run forceload remove 99129 99000 99143 99200

execute if score #scan_paralya_lobby switch.data matches 1298 in minecraft:overworld run forceload remove 99143 99000 99157 99200
execute if score #scan_paralya_lobby switch.data matches 1298 in switch:game run forceload remove 99143 99000 99157 99200

execute if score #scan_paralya_lobby switch.data matches 1298 in minecraft:overworld run forceload remove 99157 99000 99171 99200
execute if score #scan_paralya_lobby switch.data matches 1298 in switch:game run forceload remove 99157 99000 99171 99200

execute if score #scan_paralya_lobby switch.data matches 1298 in minecraft:overworld run forceload remove 99171 99000 99186 99200
execute if score #scan_paralya_lobby switch.data matches 1298 in switch:game run forceload remove 99171 99000 99186 99200

execute if score #scan_paralya_lobby switch.data matches 1298 in minecraft:overworld run forceload remove 99186 99000 99200 99200
execute if score #scan_paralya_lobby switch.data matches 1298 in switch:game run forceload remove 99186 99000 99200 99200

execute if score #scan_paralya_lobby switch.data matches 1298 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"paralya_lobby","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"64","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_paralya_lobby switch.data matches 1298 run data remove storage switch:maps to_scan.paralya_lobby
execute if score #scan_paralya_lobby switch.data matches 1298 run scoreboard players reset #scan_paralya_lobby switch.data

execute if score #scan_paralya_lobby switch.data matches 1.. run schedule function switch:maps/survival/paralya_lobby/scan_doors 1t

