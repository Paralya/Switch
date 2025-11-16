
#> switch:maps/survival/dk_mountain/scan_doors
#
# @within	switch:maps/survival/dk_mountain/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_dk_mountain switch.data 1

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19650 20485 19674 20603
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 19650 20485 19674 20603

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19674 20485 19698 20603
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 19674 20485 19698 20603

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19698 20485 19722 20603
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 19698 20485 19722 20603

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19722 20485 19746 20603
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 19722 20485 19746 20603

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19746 20485 19770 20603
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 19746 20485 19770 20603

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19770 20485 19794 20603
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 19770 20485 19794 20603

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19794 20485 19818 20603
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 19794 20485 19818 20603

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19818 20485 19842 20603
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 19818 20485 19842 20603

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19842 20485 19866 20603
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 19842 20485 19866 20603

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19866 20485 19890 20603
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 19866 20485 19890 20603

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19890 20485 19914 20603
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 19890 20485 19914 20603

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19914 20485 19938 20603
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 19914 20485 19938 20603

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19938 20485 19962 20603
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 19938 20485 19962 20603

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19962 20485 19986 20603
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 19962 20485 19986 20603

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19986 20485 20010 20603
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 19986 20485 20010 20603

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 20010 20485 20034 20603
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 20010 20485 20034 20603

execute if score #scan_dk_mountain switch.data matches 1 run data modify storage switch:maps to_scan.dk_mountain set value 2b
execute if score #scan_dk_mountain switch.data matches 1 run scoreboard players set #start_x_dk_mountain switch.data 19651
execute if score #scan_dk_mountain switch.data matches 1 run scoreboard players set #start_y_dk_mountain switch.data 71
execute if score #scan_dk_mountain switch.data matches 1 run scoreboard players set #start_z_dk_mountain switch.data 20486
execute if score #scan_dk_mountain switch.data matches 1 run scoreboard players set #end_x_dk_mountain switch.data 20033
execute if score #scan_dk_mountain switch.data matches 1 run scoreboard players set #end_y_dk_mountain switch.data 211
execute if score #scan_dk_mountain switch.data matches 1 run scoreboard players set #end_z_dk_mountain switch.data 20602
execute if score #scan_dk_mountain switch.data matches 1 run scoreboard players operation #curr_x_dk_mountain switch.data = #start_x_dk_mountain switch.data
execute if score #scan_dk_mountain switch.data matches 1 run scoreboard players operation #curr_y_dk_mountain switch.data = #start_y_dk_mountain switch.data
execute if score #scan_dk_mountain switch.data matches 1 run scoreboard players operation #curr_z_dk_mountain switch.data = #start_z_dk_mountain switch.data
execute if score #scan_dk_mountain switch.data matches 1 run data modify storage switch:doors dk_mountain set value []

execute if score #scan_dk_mountain switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_dk_mountain switch.data matches 30.. summon marker run function switch:maps/survival/dk_mountain/scan_doors_on_marker

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 19650 20485 19674 20603
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 19650 20485 19674 20603

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 19674 20485 19698 20603
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 19674 20485 19698 20603

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 19698 20485 19722 20603
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 19698 20485 19722 20603

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 19722 20485 19746 20603
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 19722 20485 19746 20603

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 19746 20485 19770 20603
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 19746 20485 19770 20603

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 19770 20485 19794 20603
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 19770 20485 19794 20603

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 19794 20485 19818 20603
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 19794 20485 19818 20603

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 19818 20485 19842 20603
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 19818 20485 19842 20603

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 19842 20485 19866 20603
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 19842 20485 19866 20603

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 19866 20485 19890 20603
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 19866 20485 19890 20603

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 19890 20485 19914 20603
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 19890 20485 19914 20603

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 19914 20485 19938 20603
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 19914 20485 19938 20603

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 19938 20485 19962 20603
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 19938 20485 19962 20603

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 19962 20485 19986 20603
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 19962 20485 19986 20603

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 19986 20485 20010 20603
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 19986 20485 20010 20603

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 20010 20485 20034 20603
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 20010 20485 20034 20603

execute if score #scan_dk_mountain switch.data matches 1294 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"dk_mountain","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"64","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_dk_mountain switch.data matches 1294 run data remove storage switch:maps to_scan.dk_mountain
execute if score #scan_dk_mountain switch.data matches 1294 run scoreboard players reset #scan_dk_mountain switch.data

execute if score #scan_dk_mountain switch.data matches 1.. run schedule function switch:maps/survival/dk_mountain/scan_doors 1t

