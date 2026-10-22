
#> switch:maps/survival/bowser_castle/scan_doors
#
# @within	switch:maps/survival/bowser_castle/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_bowser_castle switch.data 1

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -6000 -2000 -5988 -1755
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add -6000 -2000 -5988 -1755

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5988 -2000 -5976 -1755
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add -5988 -2000 -5976 -1755

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5976 -2000 -5964 -1755
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add -5976 -2000 -5964 -1755

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5964 -2000 -5952 -1755
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add -5964 -2000 -5952 -1755

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5952 -2000 -5941 -1755
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add -5952 -2000 -5941 -1755

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5941 -2000 -5929 -1755
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add -5941 -2000 -5929 -1755

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5929 -2000 -5917 -1755
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add -5929 -2000 -5917 -1755

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5917 -2000 -5905 -1755
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add -5917 -2000 -5905 -1755

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5905 -2000 -5893 -1755
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add -5905 -2000 -5893 -1755

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5893 -2000 -5881 -1755
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add -5893 -2000 -5881 -1755

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5881 -2000 -5869 -1755
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add -5881 -2000 -5869 -1755

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5869 -2000 -5857 -1755
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add -5869 -2000 -5857 -1755

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5857 -2000 -5845 -1755
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add -5857 -2000 -5845 -1755

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5845 -2000 -5833 -1755
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add -5845 -2000 -5833 -1755

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5833 -2000 -5822 -1755
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add -5833 -2000 -5822 -1755

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5822 -2000 -5810 -1755
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add -5822 -2000 -5810 -1755

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5810 -2000 -5798 -1755
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add -5810 -2000 -5798 -1755

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5798 -2000 -5786 -1755
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add -5798 -2000 -5786 -1755

execute if score #scan_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5786 -2000 -5774 -1755
execute if score #scan_bowser_castle switch.data matches 1 in switch:game run forceload add -5786 -2000 -5774 -1755

execute if score #scan_bowser_castle switch.data matches 1 run data modify storage switch:maps to_scan.bowser_castle set value 2b
execute if score #scan_bowser_castle switch.data matches 1 run scoreboard players set #start_x_bowser_castle switch.data -5999
execute if score #scan_bowser_castle switch.data matches 1 run scoreboard players set #start_y_bowser_castle switch.data 101
execute if score #scan_bowser_castle switch.data matches 1 run scoreboard players set #start_z_bowser_castle switch.data -1999
execute if score #scan_bowser_castle switch.data matches 1 run scoreboard players set #end_x_bowser_castle switch.data -5775
execute if score #scan_bowser_castle switch.data matches 1 run scoreboard players set #end_y_bowser_castle switch.data 180
execute if score #scan_bowser_castle switch.data matches 1 run scoreboard players set #end_z_bowser_castle switch.data -1756
execute if score #scan_bowser_castle switch.data matches 1 run scoreboard players operation #curr_x_bowser_castle switch.data = #start_x_bowser_castle switch.data
execute if score #scan_bowser_castle switch.data matches 1 run scoreboard players operation #curr_y_bowser_castle switch.data = #start_y_bowser_castle switch.data
execute if score #scan_bowser_castle switch.data matches 1 run scoreboard players operation #curr_z_bowser_castle switch.data = #start_z_bowser_castle switch.data
execute if score #scan_bowser_castle switch.data matches 1 run data modify storage switch:doors bowser_castle set value []

execute if score #scan_bowser_castle switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_bowser_castle switch.data matches 30.. summon marker run function switch:maps/survival/bowser_castle/scan_doors_on_marker

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove -6000 -2000 -5988 -1755
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove -6000 -2000 -5988 -1755

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove -5988 -2000 -5976 -1755
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove -5988 -2000 -5976 -1755

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove -5976 -2000 -5964 -1755
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove -5976 -2000 -5964 -1755

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove -5964 -2000 -5952 -1755
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove -5964 -2000 -5952 -1755

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove -5952 -2000 -5941 -1755
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove -5952 -2000 -5941 -1755

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove -5941 -2000 -5929 -1755
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove -5941 -2000 -5929 -1755

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove -5929 -2000 -5917 -1755
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove -5929 -2000 -5917 -1755

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove -5917 -2000 -5905 -1755
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove -5917 -2000 -5905 -1755

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove -5905 -2000 -5893 -1755
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove -5905 -2000 -5893 -1755

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove -5893 -2000 -5881 -1755
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove -5893 -2000 -5881 -1755

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove -5881 -2000 -5869 -1755
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove -5881 -2000 -5869 -1755

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove -5869 -2000 -5857 -1755
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove -5869 -2000 -5857 -1755

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove -5857 -2000 -5845 -1755
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove -5857 -2000 -5845 -1755

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove -5845 -2000 -5833 -1755
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove -5845 -2000 -5833 -1755

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove -5833 -2000 -5822 -1755
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove -5833 -2000 -5822 -1755

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove -5822 -2000 -5810 -1755
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove -5822 -2000 -5810 -1755

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove -5810 -2000 -5798 -1755
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove -5810 -2000 -5798 -1755

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove -5798 -2000 -5786 -1755
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove -5798 -2000 -5786 -1755

execute if score #scan_bowser_castle switch.data matches 909 in minecraft:overworld run forceload remove -5786 -2000 -5774 -1755
execute if score #scan_bowser_castle switch.data matches 909 in switch:game run forceload remove -5786 -2000 -5774 -1755

execute if score #scan_bowser_castle switch.data matches 909 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"bowser_castle","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"45","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_bowser_castle switch.data matches 909 run data remove storage switch:maps to_scan.bowser_castle
execute if score #scan_bowser_castle switch.data matches 909 run scoreboard players reset #scan_bowser_castle switch.data

execute if score #scan_bowser_castle switch.data matches 1.. run schedule function switch:maps/survival/bowser_castle/scan_doors 1t

