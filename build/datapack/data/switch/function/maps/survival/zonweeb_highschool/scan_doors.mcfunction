
#> switch:maps/survival/zonweeb_highschool/scan_doors
#
# @within	switch:maps/survival/zonweeb_highschool/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_zonweeb_highschool switch.data 1

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 53000 53000 53012 53218
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 53000 53000 53012 53218

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 53012 53000 53025 53218
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 53012 53000 53025 53218

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 53025 53000 53038 53218
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 53025 53000 53038 53218

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 53038 53000 53050 53218
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 53038 53000 53050 53218

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 53050 53000 53062 53218
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 53050 53000 53062 53218

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 53062 53000 53075 53218
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 53062 53000 53075 53218

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 53075 53000 53088 53218
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 53075 53000 53088 53218

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 53088 53000 53100 53218
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 53088 53000 53100 53218

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 53100 53000 53112 53218
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 53100 53000 53112 53218

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 53112 53000 53125 53218
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 53112 53000 53125 53218

execute if score #scan_zonweeb_highschool switch.data matches 1 run data modify storage switch:maps to_scan.zonweeb_highschool set value 2b
execute if score #scan_zonweeb_highschool switch.data matches 1 run scoreboard players set #start_x_zonweeb_highschool switch.data 53001
execute if score #scan_zonweeb_highschool switch.data matches 1 run scoreboard players set #start_y_zonweeb_highschool switch.data 101
execute if score #scan_zonweeb_highschool switch.data matches 1 run scoreboard players set #start_z_zonweeb_highschool switch.data 53001
execute if score #scan_zonweeb_highschool switch.data matches 1 run scoreboard players set #end_x_zonweeb_highschool switch.data 53124
execute if score #scan_zonweeb_highschool switch.data matches 1 run scoreboard players set #end_y_zonweeb_highschool switch.data 157
execute if score #scan_zonweeb_highschool switch.data matches 1 run scoreboard players set #end_z_zonweeb_highschool switch.data 53217
execute if score #scan_zonweeb_highschool switch.data matches 1 run scoreboard players operation #curr_x_zonweeb_highschool switch.data = #start_x_zonweeb_highschool switch.data
execute if score #scan_zonweeb_highschool switch.data matches 1 run scoreboard players operation #curr_y_zonweeb_highschool switch.data = #start_y_zonweeb_highschool switch.data
execute if score #scan_zonweeb_highschool switch.data matches 1 run scoreboard players operation #curr_z_zonweeb_highschool switch.data = #start_z_zonweeb_highschool switch.data
execute if score #scan_zonweeb_highschool switch.data matches 1 run data modify storage switch:doors zonweeb_highschool set value []

execute if score #scan_zonweeb_highschool switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_zonweeb_highschool switch.data matches 30.. summon marker run function switch:maps/survival/zonweeb_highschool/scan_doors_on_marker

execute if score #scan_zonweeb_highschool switch.data matches 337 in minecraft:overworld run forceload remove 53000 53000 53012 53218
execute if score #scan_zonweeb_highschool switch.data matches 337 in switch:game run forceload remove 53000 53000 53012 53218

execute if score #scan_zonweeb_highschool switch.data matches 337 in minecraft:overworld run forceload remove 53012 53000 53025 53218
execute if score #scan_zonweeb_highschool switch.data matches 337 in switch:game run forceload remove 53012 53000 53025 53218

execute if score #scan_zonweeb_highschool switch.data matches 337 in minecraft:overworld run forceload remove 53025 53000 53038 53218
execute if score #scan_zonweeb_highschool switch.data matches 337 in switch:game run forceload remove 53025 53000 53038 53218

execute if score #scan_zonweeb_highschool switch.data matches 337 in minecraft:overworld run forceload remove 53038 53000 53050 53218
execute if score #scan_zonweeb_highschool switch.data matches 337 in switch:game run forceload remove 53038 53000 53050 53218

execute if score #scan_zonweeb_highschool switch.data matches 337 in minecraft:overworld run forceload remove 53050 53000 53062 53218
execute if score #scan_zonweeb_highschool switch.data matches 337 in switch:game run forceload remove 53050 53000 53062 53218

execute if score #scan_zonweeb_highschool switch.data matches 337 in minecraft:overworld run forceload remove 53062 53000 53075 53218
execute if score #scan_zonweeb_highschool switch.data matches 337 in switch:game run forceload remove 53062 53000 53075 53218

execute if score #scan_zonweeb_highschool switch.data matches 337 in minecraft:overworld run forceload remove 53075 53000 53088 53218
execute if score #scan_zonweeb_highschool switch.data matches 337 in switch:game run forceload remove 53075 53000 53088 53218

execute if score #scan_zonweeb_highschool switch.data matches 337 in minecraft:overworld run forceload remove 53088 53000 53100 53218
execute if score #scan_zonweeb_highschool switch.data matches 337 in switch:game run forceload remove 53088 53000 53100 53218

execute if score #scan_zonweeb_highschool switch.data matches 337 in minecraft:overworld run forceload remove 53100 53000 53112 53218
execute if score #scan_zonweeb_highschool switch.data matches 337 in switch:game run forceload remove 53100 53000 53112 53218

execute if score #scan_zonweeb_highschool switch.data matches 337 in minecraft:overworld run forceload remove 53112 53000 53125 53218
execute if score #scan_zonweeb_highschool switch.data matches 337 in switch:game run forceload remove 53112 53000 53125 53218

execute if score #scan_zonweeb_highschool switch.data matches 337 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"zonweeb_highschool","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"16","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_zonweeb_highschool switch.data matches 337 run data remove storage switch:maps to_scan.zonweeb_highschool
execute if score #scan_zonweeb_highschool switch.data matches 337 run scoreboard players reset #scan_zonweeb_highschool switch.data

execute if score #scan_zonweeb_highschool switch.data matches 1.. run schedule function switch:maps/survival/zonweeb_highschool/scan_doors 1t

