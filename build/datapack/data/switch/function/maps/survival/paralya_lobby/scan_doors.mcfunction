
#> switch:maps/survival/paralya_lobby/scan_doors
#
# @within	switch:maps/survival/paralya_lobby/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_paralya_lobby switch.data 1

execute if score #scan_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add -10000 -6000 -9986 -5800
execute if score #scan_paralya_lobby switch.data matches 1 in switch:game run forceload add -10000 -6000 -9986 -5800

execute if score #scan_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add -9986 -6000 -9971 -5800
execute if score #scan_paralya_lobby switch.data matches 1 in switch:game run forceload add -9986 -6000 -9971 -5800

execute if score #scan_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add -9971 -6000 -9957 -5800
execute if score #scan_paralya_lobby switch.data matches 1 in switch:game run forceload add -9971 -6000 -9957 -5800

execute if score #scan_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add -9957 -6000 -9943 -5800
execute if score #scan_paralya_lobby switch.data matches 1 in switch:game run forceload add -9957 -6000 -9943 -5800

execute if score #scan_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add -9943 -6000 -9929 -5800
execute if score #scan_paralya_lobby switch.data matches 1 in switch:game run forceload add -9943 -6000 -9929 -5800

execute if score #scan_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add -9929 -6000 -9914 -5800
execute if score #scan_paralya_lobby switch.data matches 1 in switch:game run forceload add -9929 -6000 -9914 -5800

execute if score #scan_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add -9914 -6000 -9900 -5800
execute if score #scan_paralya_lobby switch.data matches 1 in switch:game run forceload add -9914 -6000 -9900 -5800

execute if score #scan_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add -9900 -6000 -9886 -5800
execute if score #scan_paralya_lobby switch.data matches 1 in switch:game run forceload add -9900 -6000 -9886 -5800

execute if score #scan_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add -9886 -6000 -9871 -5800
execute if score #scan_paralya_lobby switch.data matches 1 in switch:game run forceload add -9886 -6000 -9871 -5800

execute if score #scan_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add -9871 -6000 -9857 -5800
execute if score #scan_paralya_lobby switch.data matches 1 in switch:game run forceload add -9871 -6000 -9857 -5800

execute if score #scan_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add -9857 -6000 -9843 -5800
execute if score #scan_paralya_lobby switch.data matches 1 in switch:game run forceload add -9857 -6000 -9843 -5800

execute if score #scan_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add -9843 -6000 -9829 -5800
execute if score #scan_paralya_lobby switch.data matches 1 in switch:game run forceload add -9843 -6000 -9829 -5800

execute if score #scan_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add -9829 -6000 -9814 -5800
execute if score #scan_paralya_lobby switch.data matches 1 in switch:game run forceload add -9829 -6000 -9814 -5800

execute if score #scan_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add -9814 -6000 -9800 -5800
execute if score #scan_paralya_lobby switch.data matches 1 in switch:game run forceload add -9814 -6000 -9800 -5800

execute if score #scan_paralya_lobby switch.data matches 1 run data modify storage switch:maps to_scan.paralya_lobby set value 2b
execute if score #scan_paralya_lobby switch.data matches 1 run scoreboard players set #start_x_paralya_lobby switch.data -9999
execute if score #scan_paralya_lobby switch.data matches 1 run scoreboard players set #start_y_paralya_lobby switch.data 101
execute if score #scan_paralya_lobby switch.data matches 1 run scoreboard players set #start_z_paralya_lobby switch.data -5999
execute if score #scan_paralya_lobby switch.data matches 1 run scoreboard players set #end_x_paralya_lobby switch.data -9801
execute if score #scan_paralya_lobby switch.data matches 1 run scoreboard players set #end_y_paralya_lobby switch.data 260
execute if score #scan_paralya_lobby switch.data matches 1 run scoreboard players set #end_z_paralya_lobby switch.data -5801
execute if score #scan_paralya_lobby switch.data matches 1 run scoreboard players operation #curr_x_paralya_lobby switch.data = #start_x_paralya_lobby switch.data
execute if score #scan_paralya_lobby switch.data matches 1 run scoreboard players operation #curr_y_paralya_lobby switch.data = #start_y_paralya_lobby switch.data
execute if score #scan_paralya_lobby switch.data matches 1 run scoreboard players operation #curr_z_paralya_lobby switch.data = #start_z_paralya_lobby switch.data
execute if score #scan_paralya_lobby switch.data matches 1 run data modify storage switch:doors paralya_lobby set value []

execute if score #scan_paralya_lobby switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_paralya_lobby switch.data matches 30.. summon marker run function switch:maps/survival/paralya_lobby/scan_doors_on_marker

execute if score #scan_paralya_lobby switch.data matches 1298 in minecraft:overworld run forceload remove -10000 -6000 -9986 -5800
execute if score #scan_paralya_lobby switch.data matches 1298 in switch:game run forceload remove -10000 -6000 -9986 -5800

execute if score #scan_paralya_lobby switch.data matches 1298 in minecraft:overworld run forceload remove -9986 -6000 -9971 -5800
execute if score #scan_paralya_lobby switch.data matches 1298 in switch:game run forceload remove -9986 -6000 -9971 -5800

execute if score #scan_paralya_lobby switch.data matches 1298 in minecraft:overworld run forceload remove -9971 -6000 -9957 -5800
execute if score #scan_paralya_lobby switch.data matches 1298 in switch:game run forceload remove -9971 -6000 -9957 -5800

execute if score #scan_paralya_lobby switch.data matches 1298 in minecraft:overworld run forceload remove -9957 -6000 -9943 -5800
execute if score #scan_paralya_lobby switch.data matches 1298 in switch:game run forceload remove -9957 -6000 -9943 -5800

execute if score #scan_paralya_lobby switch.data matches 1298 in minecraft:overworld run forceload remove -9943 -6000 -9929 -5800
execute if score #scan_paralya_lobby switch.data matches 1298 in switch:game run forceload remove -9943 -6000 -9929 -5800

execute if score #scan_paralya_lobby switch.data matches 1298 in minecraft:overworld run forceload remove -9929 -6000 -9914 -5800
execute if score #scan_paralya_lobby switch.data matches 1298 in switch:game run forceload remove -9929 -6000 -9914 -5800

execute if score #scan_paralya_lobby switch.data matches 1298 in minecraft:overworld run forceload remove -9914 -6000 -9900 -5800
execute if score #scan_paralya_lobby switch.data matches 1298 in switch:game run forceload remove -9914 -6000 -9900 -5800

execute if score #scan_paralya_lobby switch.data matches 1298 in minecraft:overworld run forceload remove -9900 -6000 -9886 -5800
execute if score #scan_paralya_lobby switch.data matches 1298 in switch:game run forceload remove -9900 -6000 -9886 -5800

execute if score #scan_paralya_lobby switch.data matches 1298 in minecraft:overworld run forceload remove -9886 -6000 -9871 -5800
execute if score #scan_paralya_lobby switch.data matches 1298 in switch:game run forceload remove -9886 -6000 -9871 -5800

execute if score #scan_paralya_lobby switch.data matches 1298 in minecraft:overworld run forceload remove -9871 -6000 -9857 -5800
execute if score #scan_paralya_lobby switch.data matches 1298 in switch:game run forceload remove -9871 -6000 -9857 -5800

execute if score #scan_paralya_lobby switch.data matches 1298 in minecraft:overworld run forceload remove -9857 -6000 -9843 -5800
execute if score #scan_paralya_lobby switch.data matches 1298 in switch:game run forceload remove -9857 -6000 -9843 -5800

execute if score #scan_paralya_lobby switch.data matches 1298 in minecraft:overworld run forceload remove -9843 -6000 -9829 -5800
execute if score #scan_paralya_lobby switch.data matches 1298 in switch:game run forceload remove -9843 -6000 -9829 -5800

execute if score #scan_paralya_lobby switch.data matches 1298 in minecraft:overworld run forceload remove -9829 -6000 -9814 -5800
execute if score #scan_paralya_lobby switch.data matches 1298 in switch:game run forceload remove -9829 -6000 -9814 -5800

execute if score #scan_paralya_lobby switch.data matches 1298 in minecraft:overworld run forceload remove -9814 -6000 -9800 -5800
execute if score #scan_paralya_lobby switch.data matches 1298 in switch:game run forceload remove -9814 -6000 -9800 -5800

execute if score #scan_paralya_lobby switch.data matches 1298 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"paralya_lobby","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"64","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_paralya_lobby switch.data matches 1298 run data remove storage switch:maps to_scan.paralya_lobby
execute if score #scan_paralya_lobby switch.data matches 1298 run scoreboard players reset #scan_paralya_lobby switch.data

execute if score #scan_paralya_lobby switch.data matches 1.. run schedule function switch:maps/survival/paralya_lobby/scan_doors 1t

