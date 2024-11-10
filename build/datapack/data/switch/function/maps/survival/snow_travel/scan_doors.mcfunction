
#> switch:maps/survival/snow_travel/scan_doors
#
# @within	switch:maps/survival/snow_travel/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_snow_travel switch.data 1

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 22896 22904 22910 23109
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 22896 22904 22910 23109

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 22910 22904 22924 23109
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 22910 22904 22924 23109

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 22924 22904 22937 23109
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 22924 22904 22937 23109

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 22937 22904 22951 23109
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 22937 22904 22951 23109

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 22951 22904 22965 23109
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 22951 22904 22965 23109

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 22965 22904 22979 23109
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 22965 22904 22979 23109

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 22979 22904 22993 23109
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 22979 22904 22993 23109

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 22993 22904 23006 23109
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 22993 22904 23006 23109

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23006 22904 23020 23109
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 23006 22904 23020 23109

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23020 22904 23034 23109
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 23020 22904 23034 23109

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23034 22904 23048 23109
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 23034 22904 23048 23109

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23048 22904 23062 23109
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 23048 22904 23062 23109

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23062 22904 23075 23109
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 23062 22904 23075 23109

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23075 22904 23089 23109
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 23075 22904 23089 23109

execute if score #scan_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23089 22904 23103 23109
execute if score #scan_snow_travel switch.data matches 1 in switch:game run forceload add 23089 22904 23103 23109

execute if score #scan_snow_travel switch.data matches 1 run data modify storage switch:maps to_scan.snow_travel set value 2b
execute if score #scan_snow_travel switch.data matches 1 run scoreboard players set #start_x_snow_travel switch.data 22897
execute if score #scan_snow_travel switch.data matches 1 run scoreboard players set #start_y_snow_travel switch.data 1
execute if score #scan_snow_travel switch.data matches 1 run scoreboard players set #start_z_snow_travel switch.data 22905
execute if score #scan_snow_travel switch.data matches 1 run scoreboard players set #end_x_snow_travel switch.data 23102
execute if score #scan_snow_travel switch.data matches 1 run scoreboard players set #end_y_snow_travel switch.data 85
execute if score #scan_snow_travel switch.data matches 1 run scoreboard players set #end_z_snow_travel switch.data 23108
execute if score #scan_snow_travel switch.data matches 1 run scoreboard players operation #curr_x_snow_travel switch.data = #start_x_snow_travel switch.data
execute if score #scan_snow_travel switch.data matches 1 run scoreboard players operation #curr_y_snow_travel switch.data = #start_y_snow_travel switch.data
execute if score #scan_snow_travel switch.data matches 1 run scoreboard players operation #curr_z_snow_travel switch.data = #start_z_snow_travel switch.data
execute if score #scan_snow_travel switch.data matches 1 run data modify storage switch:doors snow_travel set value []


execute if score #scan_snow_travel switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_snow_travel switch.data matches 30.. summon marker run function switch:maps/survival/snow_travel/scan_doors_on_marker

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 22896 22904 22910 23109
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 22896 22904 22910 23109

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 22910 22904 22924 23109
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 22910 22904 22924 23109

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 22924 22904 22937 23109
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 22924 22904 22937 23109

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 22937 22904 22951 23109
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 22937 22904 22951 23109

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 22951 22904 22965 23109
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 22951 22904 22965 23109

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 22965 22904 22979 23109
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 22965 22904 22979 23109

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 22979 22904 22993 23109
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 22979 22904 22993 23109

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 22993 22904 23006 23109
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 22993 22904 23006 23109

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 23006 22904 23020 23109
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 23006 22904 23020 23109

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 23020 22904 23034 23109
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 23020 22904 23034 23109

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 23034 22904 23048 23109
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 23034 22904 23048 23109

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 23048 22904 23062 23109
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 23048 22904 23062 23109

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 23062 22904 23075 23109
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 23062 22904 23075 23109

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 23075 22904 23089 23109
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 23075 22904 23089 23109

execute if score #scan_snow_travel switch.data matches 745 in minecraft:overworld run forceload remove 23089 22904 23103 23109
execute if score #scan_snow_travel switch.data matches 745 in switch:game run forceload remove 23089 22904 23103 23109

execute if score #scan_snow_travel switch.data matches 745 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"snow_travel","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"37","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_snow_travel switch.data matches 745 run data remove storage switch:maps to_scan.snow_travel
execute if score #scan_snow_travel switch.data matches 745 run scoreboard players reset #scan_snow_travel switch.data

execute if score #scan_snow_travel switch.data matches 1.. run schedule function switch:maps/survival/snow_travel/scan_doors 1t

