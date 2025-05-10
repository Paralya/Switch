
#> switch:maps/survival/sakura_land/scan_doors
#
# @within	switch:maps/survival/sakura_land/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_sakura_land switch.data 1

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19821 19979 19833 20228
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 19821 19979 19833 20228

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19833 19979 19845 20228
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 19833 19979 19845 20228

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19845 19979 19856 20228
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 19845 19979 19856 20228

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19856 19979 19868 20228
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 19856 19979 19868 20228

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19868 19979 19880 20228
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 19868 19979 19880 20228

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19880 19979 19892 20228
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 19880 19979 19892 20228

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19892 19979 19903 20228
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 19892 19979 19903 20228

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19903 19979 19915 20228
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 19903 19979 19915 20228

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19915 19979 19927 20228
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 19915 19979 19927 20228

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19927 19979 19939 20228
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 19927 19979 19939 20228

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19939 19979 19950 20228
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 19939 19979 19950 20228

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19950 19979 19962 20228
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 19950 19979 19962 20228

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19962 19979 19974 20228
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 19962 19979 19974 20228

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19974 19979 19986 20228
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 19974 19979 19986 20228

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19986 19979 19997 20228
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 19986 19979 19997 20228

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19997 19979 20009 20228
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 19997 19979 20009 20228

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 20009 19979 20021 20228
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 20009 19979 20021 20228

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 20021 19979 20033 20228
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 20021 19979 20033 20228

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 20033 19979 20044 20228
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 20033 19979 20044 20228

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 20044 19979 20056 20228
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 20044 19979 20056 20228

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 20056 19979 20068 20228
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 20056 19979 20068 20228

execute if score #scan_sakura_land switch.data matches 1 run data modify storage switch:maps to_scan.sakura_land set value 2b
execute if score #scan_sakura_land switch.data matches 1 run scoreboard players set #start_x_sakura_land switch.data 19822
execute if score #scan_sakura_land switch.data matches 1 run scoreboard players set #start_y_sakura_land switch.data 86
execute if score #scan_sakura_land switch.data matches 1 run scoreboard players set #start_z_sakura_land switch.data 19980
execute if score #scan_sakura_land switch.data matches 1 run scoreboard players set #end_x_sakura_land switch.data 20067
execute if score #scan_sakura_land switch.data matches 1 run scoreboard players set #end_y_sakura_land switch.data 131
execute if score #scan_sakura_land switch.data matches 1 run scoreboard players set #end_z_sakura_land switch.data 20227
execute if score #scan_sakura_land switch.data matches 1 run scoreboard players operation #curr_x_sakura_land switch.data = #start_x_sakura_land switch.data
execute if score #scan_sakura_land switch.data matches 1 run scoreboard players operation #curr_y_sakura_land switch.data = #start_y_sakura_land switch.data
execute if score #scan_sakura_land switch.data matches 1 run scoreboard players operation #curr_z_sakura_land switch.data = #start_z_sakura_land switch.data
execute if score #scan_sakura_land switch.data matches 1 run data modify storage switch:doors sakura_land set value []


execute if score #scan_sakura_land switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_sakura_land switch.data matches 30.. summon marker run function switch:maps/survival/sakura_land/scan_doors_on_marker

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 19821 19979 19833 20228
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 19821 19979 19833 20228

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 19833 19979 19845 20228
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 19833 19979 19845 20228

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 19845 19979 19856 20228
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 19845 19979 19856 20228

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 19856 19979 19868 20228
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 19856 19979 19868 20228

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 19868 19979 19880 20228
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 19868 19979 19880 20228

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 19880 19979 19892 20228
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 19880 19979 19892 20228

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 19892 19979 19903 20228
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 19892 19979 19903 20228

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 19903 19979 19915 20228
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 19903 19979 19915 20228

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 19915 19979 19927 20228
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 19915 19979 19927 20228

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 19927 19979 19939 20228
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 19927 19979 19939 20228

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 19939 19979 19950 20228
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 19939 19979 19950 20228

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 19950 19979 19962 20228
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 19950 19979 19962 20228

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 19962 19979 19974 20228
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 19962 19979 19974 20228

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 19974 19979 19986 20228
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 19974 19979 19986 20228

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 19986 19979 19997 20228
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 19986 19979 19997 20228

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 19997 19979 20009 20228
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 19997 19979 20009 20228

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 20009 19979 20021 20228
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 20009 19979 20021 20228

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 20021 19979 20033 20228
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 20021 19979 20033 20228

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 20033 19979 20044 20228
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 20033 19979 20044 20228

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 20044 19979 20056 20228
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 20044 19979 20056 20228

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 20056 19979 20068 20228
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 20056 19979 20068 20228

execute if score #scan_sakura_land switch.data matches 592 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"sakura_land","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"29","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_sakura_land switch.data matches 592 run data remove storage switch:maps to_scan.sakura_land
execute if score #scan_sakura_land switch.data matches 592 run scoreboard players reset #scan_sakura_land switch.data

execute if score #scan_sakura_land switch.data matches 1.. run schedule function switch:maps/survival/sakura_land/scan_doors 1t

