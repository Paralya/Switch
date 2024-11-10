
#> switch:maps/survival/desert_grand_library/scan_doors
#
# @within	switch:maps/survival/desert_grand_library/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_desert_grand_library switch.data 1

execute if score #scan_desert_grand_library switch.data matches 1 in minecraft:overworld run forceload add 46971 46971 46993 47042
execute if score #scan_desert_grand_library switch.data matches 1 in switch:game run forceload add 46971 46971 46993 47042

execute if score #scan_desert_grand_library switch.data matches 1 in minecraft:overworld run forceload add 46993 46971 47014 47042
execute if score #scan_desert_grand_library switch.data matches 1 in switch:game run forceload add 46993 46971 47014 47042

execute if score #scan_desert_grand_library switch.data matches 1 in minecraft:overworld run forceload add 47014 46971 47036 47042
execute if score #scan_desert_grand_library switch.data matches 1 in switch:game run forceload add 47014 46971 47036 47042

execute if score #scan_desert_grand_library switch.data matches 1 run data modify storage switch:maps to_scan.desert_grand_library set value 2b
execute if score #scan_desert_grand_library switch.data matches 1 run scoreboard players set #start_x_desert_grand_library switch.data 46972
execute if score #scan_desert_grand_library switch.data matches 1 run scoreboard players set #start_y_desert_grand_library switch.data 1
execute if score #scan_desert_grand_library switch.data matches 1 run scoreboard players set #start_z_desert_grand_library switch.data 46972
execute if score #scan_desert_grand_library switch.data matches 1 run scoreboard players set #end_x_desert_grand_library switch.data 47035
execute if score #scan_desert_grand_library switch.data matches 1 run scoreboard players set #end_y_desert_grand_library switch.data 41
execute if score #scan_desert_grand_library switch.data matches 1 run scoreboard players set #end_z_desert_grand_library switch.data 47041
execute if score #scan_desert_grand_library switch.data matches 1 run scoreboard players operation #curr_x_desert_grand_library switch.data = #start_x_desert_grand_library switch.data
execute if score #scan_desert_grand_library switch.data matches 1 run scoreboard players operation #curr_y_desert_grand_library switch.data = #start_y_desert_grand_library switch.data
execute if score #scan_desert_grand_library switch.data matches 1 run scoreboard players operation #curr_z_desert_grand_library switch.data = #start_z_desert_grand_library switch.data
execute if score #scan_desert_grand_library switch.data matches 1 run data modify storage switch:doors desert_grand_library set value []


execute if score #scan_desert_grand_library switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_desert_grand_library switch.data matches 30.. summon marker run function switch:maps/survival/desert_grand_library/scan_doors_on_marker

execute if score #scan_desert_grand_library switch.data matches 67 in minecraft:overworld run forceload remove 46971 46971 46993 47042
execute if score #scan_desert_grand_library switch.data matches 67 in switch:game run forceload remove 46971 46971 46993 47042

execute if score #scan_desert_grand_library switch.data matches 67 in minecraft:overworld run forceload remove 46993 46971 47014 47042
execute if score #scan_desert_grand_library switch.data matches 67 in switch:game run forceload remove 46993 46971 47014 47042

execute if score #scan_desert_grand_library switch.data matches 67 in minecraft:overworld run forceload remove 47014 46971 47036 47042
execute if score #scan_desert_grand_library switch.data matches 67 in switch:game run forceload remove 47014 46971 47036 47042

execute if score #scan_desert_grand_library switch.data matches 67 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"desert_grand_library","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"3","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_desert_grand_library switch.data matches 67 run data remove storage switch:maps to_scan.desert_grand_library
execute if score #scan_desert_grand_library switch.data matches 67 run scoreboard players reset #scan_desert_grand_library switch.data

execute if score #scan_desert_grand_library switch.data matches 1.. run schedule function switch:maps/survival/desert_grand_library/scan_doors 1t

