
#> switch:maps/survival/bowser_castle/scan_doors
#
# @within	switch:maps/survival/bowser_castle/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_bowser_castle switch.data 1

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22000 22000 22012 22245
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 22000 22000 22012 22245

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22012 22000 22024 22245
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 22012 22000 22024 22245

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22024 22000 22036 22245
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 22024 22000 22036 22245

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22036 22000 22048 22245
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 22036 22000 22048 22245

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22048 22000 22059 22245
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 22048 22000 22059 22245

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22059 22000 22071 22245
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 22059 22000 22071 22245

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22071 22000 22083 22245
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 22071 22000 22083 22245

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22083 22000 22095 22245
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 22083 22000 22095 22245

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22095 22000 22107 22245
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 22095 22000 22107 22245

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22107 22000 22119 22245
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 22107 22000 22119 22245

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22119 22000 22131 22245
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 22119 22000 22131 22245

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22131 22000 22143 22245
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 22131 22000 22143 22245

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22143 22000 22155 22245
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 22143 22000 22155 22245

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22155 22000 22167 22245
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 22155 22000 22167 22245

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22167 22000 22178 22245
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 22167 22000 22178 22245

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22178 22000 22190 22245
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 22178 22000 22190 22245

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22190 22000 22202 22245
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 22190 22000 22202 22245

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22202 22000 22214 22245
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 22202 22000 22214 22245

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22214 22000 22226 22245
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add 22214 22000 22226 22245

execute if score #scan_bowser_castle switch.data matches 1 run data modify storage switch:maps to_scan.bowser_castle set value 2b
execute if score #scan_bowser_castle switch.data matches 1 run scoreboard players set #start_x_bowser_castle switch.data 22001
execute if score #scan_bowser_castle switch.data matches 1 run scoreboard players set #start_y_bowser_castle switch.data 101
execute if score #scan_bowser_castle switch.data matches 1 run scoreboard players set #start_z_bowser_castle switch.data 22001
execute if score #scan_bowser_castle switch.data matches 1 run scoreboard players set #end_x_bowser_castle switch.data 22225
execute if score #scan_bowser_castle switch.data matches 1 run scoreboard players set #end_y_bowser_castle switch.data 180
execute if score #scan_bowser_castle switch.data matches 1 run scoreboard players set #end_z_bowser_castle switch.data 22244
execute if score #scan_bowser_castle switch.data matches 1 run scoreboard players operation #curr_x_bowser_castle switch.data = #start_x_bowser_castle switch.data
execute if score #scan_bowser_castle switch.data matches 1 run scoreboard players operation #curr_y_bowser_castle switch.data = #start_y_bowser_castle switch.data
execute if score #scan_bowser_castle switch.data matches 1 run scoreboard players operation #curr_z_bowser_castle switch.data = #start_z_bowser_castle switch.data
execute if score #scan_bowser_castle switch.data matches 1 run data modify storage switch:doors bowser_castle set value []

execute if score #scan_bowser_castle switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_bowser_castle switch.data matches 30.. summon marker run function switch:maps/survival/bowser_castle/scan_doors_on_marker

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 22000 22000 22012 22245
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 22000 22000 22012 22245

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 22012 22000 22024 22245
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 22012 22000 22024 22245

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 22024 22000 22036 22245
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 22024 22000 22036 22245

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 22036 22000 22048 22245
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 22036 22000 22048 22245

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 22048 22000 22059 22245
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 22048 22000 22059 22245

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 22059 22000 22071 22245
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 22059 22000 22071 22245

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 22071 22000 22083 22245
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 22071 22000 22083 22245

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 22083 22000 22095 22245
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 22083 22000 22095 22245

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 22095 22000 22107 22245
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 22095 22000 22107 22245

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 22107 22000 22119 22245
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 22107 22000 22119 22245

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 22119 22000 22131 22245
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 22119 22000 22131 22245

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 22131 22000 22143 22245
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 22131 22000 22143 22245

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 22143 22000 22155 22245
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 22143 22000 22155 22245

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 22155 22000 22167 22245
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 22155 22000 22167 22245

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 22167 22000 22178 22245
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 22167 22000 22178 22245

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 22178 22000 22190 22245
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 22178 22000 22190 22245

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 22190 22000 22202 22245
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 22190 22000 22202 22245

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 22202 22000 22214 22245
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 22202 22000 22214 22245

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove 22214 22000 22226 22245
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove 22214 22000 22226 22245

execute if score #scan_bowser_castle switch.data matches 909 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"bowser_castle","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"45","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_bowser_castle switch.data matches 909 run data remove storage switch:maps to_scan.bowser_castle
execute if score #scan_bowser_castle switch.data matches 909 run scoreboard players reset #scan_bowser_castle switch.data

execute if score #scan_bowser_castle switch.data matches 1.. run schedule function switch:maps/survival/bowser_castle/scan_doors 1t

