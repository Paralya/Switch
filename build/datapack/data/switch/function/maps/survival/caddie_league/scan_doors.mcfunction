
#> switch:maps/survival/caddie_league/scan_doors
#
# @within	switch:maps/survival/caddie_league/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_caddie_league switch.data 1

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41000 41000 41011 41256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add 41000 41000 41011 41256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41011 41000 41023 41256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add 41011 41000 41023 41256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41023 41000 41034 41256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add 41023 41000 41034 41256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41034 41000 41045 41256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add 41034 41000 41045 41256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41045 41000 41057 41256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add 41045 41000 41057 41256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41057 41000 41068 41256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add 41057 41000 41068 41256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41068 41000 41079 41256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add 41068 41000 41079 41256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41079 41000 41091 41256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add 41079 41000 41091 41256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41091 41000 41102 41256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add 41091 41000 41102 41256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41102 41000 41113 41256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add 41102 41000 41113 41256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41113 41000 41125 41256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add 41113 41000 41125 41256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41125 41000 41136 41256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add 41125 41000 41136 41256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41136 41000 41147 41256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add 41136 41000 41147 41256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41147 41000 41159 41256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add 41147 41000 41159 41256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41159 41000 41170 41256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add 41159 41000 41170 41256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41170 41000 41181 41256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add 41170 41000 41181 41256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41181 41000 41193 41256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add 41181 41000 41193 41256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41193 41000 41204 41256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add 41193 41000 41204 41256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41204 41000 41215 41256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add 41204 41000 41215 41256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41215 41000 41227 41256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add 41215 41000 41227 41256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41227 41000 41238 41256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add 41227 41000 41238 41256

execute if score #scan_caddie_league switch.data matches 1 run data modify storage switch:maps to_scan.caddie_league set value 2b
execute if score #scan_caddie_league switch.data matches 1 run scoreboard players set #start_x_caddie_league switch.data 41001
execute if score #scan_caddie_league switch.data matches 1 run scoreboard players set #start_y_caddie_league switch.data 101
execute if score #scan_caddie_league switch.data matches 1 run scoreboard players set #start_z_caddie_league switch.data 41001
execute if score #scan_caddie_league switch.data matches 1 run scoreboard players set #end_x_caddie_league switch.data 41237
execute if score #scan_caddie_league switch.data matches 1 run scoreboard players set #end_y_caddie_league switch.data 150
execute if score #scan_caddie_league switch.data matches 1 run scoreboard players set #end_z_caddie_league switch.data 41255
execute if score #scan_caddie_league switch.data matches 1 run scoreboard players operation #curr_x_caddie_league switch.data = #start_x_caddie_league switch.data
execute if score #scan_caddie_league switch.data matches 1 run scoreboard players operation #curr_y_caddie_league switch.data = #start_y_caddie_league switch.data
execute if score #scan_caddie_league switch.data matches 1 run scoreboard players operation #curr_z_caddie_league switch.data = #start_z_caddie_league switch.data
execute if score #scan_caddie_league switch.data matches 1 run data modify storage switch:doors caddie_league set value []

execute if score #scan_caddie_league switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_caddie_league switch.data matches 30.. summon marker run function switch:maps/survival/caddie_league/scan_doors_on_marker

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove 41000 41000 41011 41256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove 41000 41000 41011 41256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove 41011 41000 41023 41256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove 41011 41000 41023 41256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove 41023 41000 41034 41256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove 41023 41000 41034 41256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove 41034 41000 41045 41256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove 41034 41000 41045 41256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove 41045 41000 41057 41256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove 41045 41000 41057 41256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove 41057 41000 41068 41256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove 41057 41000 41068 41256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove 41068 41000 41079 41256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove 41068 41000 41079 41256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove 41079 41000 41091 41256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove 41079 41000 41091 41256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove 41091 41000 41102 41256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove 41091 41000 41102 41256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove 41102 41000 41113 41256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove 41102 41000 41113 41256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove 41113 41000 41125 41256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove 41113 41000 41125 41256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove 41125 41000 41136 41256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove 41125 41000 41136 41256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove 41136 41000 41147 41256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove 41136 41000 41147 41256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove 41147 41000 41159 41256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove 41147 41000 41159 41256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove 41159 41000 41170 41256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove 41159 41000 41170 41256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove 41170 41000 41181 41256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove 41170 41000 41181 41256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove 41181 41000 41193 41256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove 41181 41000 41193 41256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove 41193 41000 41204 41256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove 41193 41000 41204 41256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove 41204 41000 41215 41256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove 41204 41000 41215 41256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove 41215 41000 41227 41256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove 41215 41000 41227 41256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove 41227 41000 41238 41256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove 41227 41000 41238 41256

execute if score #scan_caddie_league switch.data matches 635 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"caddie_league","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"31","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_caddie_league switch.data matches 635 run data remove storage switch:maps to_scan.caddie_league
execute if score #scan_caddie_league switch.data matches 635 run scoreboard players reset #scan_caddie_league switch.data

execute if score #scan_caddie_league switch.data matches 1.. run schedule function switch:maps/survival/caddie_league/scan_doors 1t

