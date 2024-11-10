
#> switch:maps/survival/zonweeb_highschool/scan_doors
#
# @within	switch:maps/survival/zonweeb_highschool/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_zonweeb_highschool switch.data 1

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 52915 52876 52928 53094
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 52915 52876 52928 53094

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 52928 52876 52940 53094
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 52928 52876 52940 53094

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 52940 52876 52952 53094
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 52940 52876 52952 53094

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 52952 52876 52965 53094
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 52952 52876 52965 53094

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 52965 52876 52978 53094
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 52965 52876 52978 53094

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 52978 52876 52990 53094
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 52978 52876 52990 53094

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 52990 52876 53002 53094
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 52990 52876 53002 53094

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 53002 52876 53015 53094
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 53002 52876 53015 53094

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 53015 52876 53028 53094
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 53015 52876 53028 53094

execute if score #scan_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 53028 52876 53040 53094
execute if score #scan_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 53028 52876 53040 53094

execute if score #scan_zonweeb_highschool switch.data matches 1 run data modify storage switch:maps to_scan.zonweeb_highschool set value 2b
execute if score #scan_zonweeb_highschool switch.data matches 1 run scoreboard players set #start_x_zonweeb_highschool switch.data 52916
execute if score #scan_zonweeb_highschool switch.data matches 1 run scoreboard players set #start_y_zonweeb_highschool switch.data 1
execute if score #scan_zonweeb_highschool switch.data matches 1 run scoreboard players set #start_z_zonweeb_highschool switch.data 52877
execute if score #scan_zonweeb_highschool switch.data matches 1 run scoreboard players set #end_x_zonweeb_highschool switch.data 53039
execute if score #scan_zonweeb_highschool switch.data matches 1 run scoreboard players set #end_y_zonweeb_highschool switch.data 56
execute if score #scan_zonweeb_highschool switch.data matches 1 run scoreboard players set #end_z_zonweeb_highschool switch.data 53093
execute if score #scan_zonweeb_highschool switch.data matches 1 run scoreboard players operation #curr_x_zonweeb_highschool switch.data = #start_x_zonweeb_highschool switch.data
execute if score #scan_zonweeb_highschool switch.data matches 1 run scoreboard players operation #curr_y_zonweeb_highschool switch.data = #start_y_zonweeb_highschool switch.data
execute if score #scan_zonweeb_highschool switch.data matches 1 run scoreboard players operation #curr_z_zonweeb_highschool switch.data = #start_z_zonweeb_highschool switch.data
execute if score #scan_zonweeb_highschool switch.data matches 1 run data modify storage switch:doors zonweeb_highschool set value []


execute if score #scan_zonweeb_highschool switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_zonweeb_highschool switch.data matches 30.. summon marker run function switch:maps/survival/zonweeb_highschool/scan_doors_on_marker

execute if score #scan_zonweeb_highschool switch.data matches 332 in minecraft:overworld run forceload remove 52915 52876 52928 53094
execute if score #scan_zonweeb_highschool switch.data matches 332 in switch:game run forceload remove 52915 52876 52928 53094

execute if score #scan_zonweeb_highschool switch.data matches 332 in minecraft:overworld run forceload remove 52928 52876 52940 53094
execute if score #scan_zonweeb_highschool switch.data matches 332 in switch:game run forceload remove 52928 52876 52940 53094

execute if score #scan_zonweeb_highschool switch.data matches 332 in minecraft:overworld run forceload remove 52940 52876 52952 53094
execute if score #scan_zonweeb_highschool switch.data matches 332 in switch:game run forceload remove 52940 52876 52952 53094

execute if score #scan_zonweeb_highschool switch.data matches 332 in minecraft:overworld run forceload remove 52952 52876 52965 53094
execute if score #scan_zonweeb_highschool switch.data matches 332 in switch:game run forceload remove 52952 52876 52965 53094

execute if score #scan_zonweeb_highschool switch.data matches 332 in minecraft:overworld run forceload remove 52965 52876 52978 53094
execute if score #scan_zonweeb_highschool switch.data matches 332 in switch:game run forceload remove 52965 52876 52978 53094

execute if score #scan_zonweeb_highschool switch.data matches 332 in minecraft:overworld run forceload remove 52978 52876 52990 53094
execute if score #scan_zonweeb_highschool switch.data matches 332 in switch:game run forceload remove 52978 52876 52990 53094

execute if score #scan_zonweeb_highschool switch.data matches 332 in minecraft:overworld run forceload remove 52990 52876 53002 53094
execute if score #scan_zonweeb_highschool switch.data matches 332 in switch:game run forceload remove 52990 52876 53002 53094

execute if score #scan_zonweeb_highschool switch.data matches 332 in minecraft:overworld run forceload remove 53002 52876 53015 53094
execute if score #scan_zonweeb_highschool switch.data matches 332 in switch:game run forceload remove 53002 52876 53015 53094

execute if score #scan_zonweeb_highschool switch.data matches 332 in minecraft:overworld run forceload remove 53015 52876 53028 53094
execute if score #scan_zonweeb_highschool switch.data matches 332 in switch:game run forceload remove 53015 52876 53028 53094

execute if score #scan_zonweeb_highschool switch.data matches 332 in minecraft:overworld run forceload remove 53028 52876 53040 53094
execute if score #scan_zonweeb_highschool switch.data matches 332 in switch:game run forceload remove 53028 52876 53040 53094

execute if score #scan_zonweeb_highschool switch.data matches 332 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"zonweeb_highschool","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"16","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_zonweeb_highschool switch.data matches 332 run data remove storage switch:maps to_scan.zonweeb_highschool
execute if score #scan_zonweeb_highschool switch.data matches 332 run scoreboard players reset #scan_zonweeb_highschool switch.data

execute if score #scan_zonweeb_highschool switch.data matches 1.. run schedule function switch:maps/survival/zonweeb_highschool/scan_doors 1t

