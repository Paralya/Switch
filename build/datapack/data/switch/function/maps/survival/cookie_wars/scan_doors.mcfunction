
#> switch:maps/survival/cookie_wars/scan_doors
#
# @within	switch:maps/survival/cookie_wars/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_cookie_wars switch.data 1

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add -7900 -1900 -7886 -1700
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add -7900 -1900 -7886 -1700

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add -7886 -1900 -7871 -1700
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add -7886 -1900 -7871 -1700

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add -7871 -1900 -7857 -1700
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add -7871 -1900 -7857 -1700

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add -7857 -1900 -7843 -1700
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add -7857 -1900 -7843 -1700

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add -7843 -1900 -7829 -1700
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add -7843 -1900 -7829 -1700

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add -7829 -1900 -7814 -1700
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add -7829 -1900 -7814 -1700

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add -7814 -1900 -7800 -1700
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add -7814 -1900 -7800 -1700

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add -7800 -1900 -7786 -1700
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add -7800 -1900 -7786 -1700

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add -7786 -1900 -7771 -1700
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add -7786 -1900 -7771 -1700

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add -7771 -1900 -7757 -1700
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add -7771 -1900 -7757 -1700

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add -7757 -1900 -7743 -1700
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add -7757 -1900 -7743 -1700

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add -7743 -1900 -7729 -1700
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add -7743 -1900 -7729 -1700

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add -7729 -1900 -7714 -1700
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add -7729 -1900 -7714 -1700

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add -7714 -1900 -7700 -1700
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add -7714 -1900 -7700 -1700

execute if score #scan_cookie_wars switch.data matches 1 run data modify storage switch:maps to_scan.cookie_wars set value 2b
execute if score #scan_cookie_wars switch.data matches 1 run scoreboard players set #start_x_cookie_wars switch.data -7899
execute if score #scan_cookie_wars switch.data matches 1 run scoreboard players set #start_y_cookie_wars switch.data 101
execute if score #scan_cookie_wars switch.data matches 1 run scoreboard players set #start_z_cookie_wars switch.data -1899
execute if score #scan_cookie_wars switch.data matches 1 run scoreboard players set #end_x_cookie_wars switch.data -7701
execute if score #scan_cookie_wars switch.data matches 1 run scoreboard players set #end_y_cookie_wars switch.data 146
execute if score #scan_cookie_wars switch.data matches 1 run scoreboard players set #end_z_cookie_wars switch.data -1701
execute if score #scan_cookie_wars switch.data matches 1 run scoreboard players operation #curr_x_cookie_wars switch.data = #start_x_cookie_wars switch.data
execute if score #scan_cookie_wars switch.data matches 1 run scoreboard players operation #curr_y_cookie_wars switch.data = #start_y_cookie_wars switch.data
execute if score #scan_cookie_wars switch.data matches 1 run scoreboard players operation #curr_z_cookie_wars switch.data = #start_z_cookie_wars switch.data
execute if score #scan_cookie_wars switch.data matches 1 run data modify storage switch:doors cookie_wars set value []

execute if score #scan_cookie_wars switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_cookie_wars switch.data matches 30.. summon marker run function switch:maps/survival/cookie_wars/scan_doors_on_marker

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove -7900 -1900 -7886 -1700
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove -7900 -1900 -7886 -1700

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove -7886 -1900 -7871 -1700
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove -7886 -1900 -7871 -1700

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove -7871 -1900 -7857 -1700
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove -7871 -1900 -7857 -1700

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove -7857 -1900 -7843 -1700
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove -7857 -1900 -7843 -1700

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove -7843 -1900 -7829 -1700
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove -7843 -1900 -7829 -1700

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove -7829 -1900 -7814 -1700
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove -7829 -1900 -7814 -1700

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove -7814 -1900 -7800 -1700
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove -7814 -1900 -7800 -1700

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove -7800 -1900 -7786 -1700
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove -7800 -1900 -7786 -1700

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove -7786 -1900 -7771 -1700
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove -7786 -1900 -7771 -1700

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove -7771 -1900 -7757 -1700
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove -7771 -1900 -7757 -1700

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove -7757 -1900 -7743 -1700
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove -7757 -1900 -7743 -1700

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove -7743 -1900 -7729 -1700
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove -7743 -1900 -7729 -1700

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove -7729 -1900 -7714 -1700
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove -7729 -1900 -7714 -1700

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove -7714 -1900 -7700 -1700
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove -7714 -1900 -7700 -1700

execute if score #scan_cookie_wars switch.data matches 395 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"cookie_wars","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"19","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_cookie_wars switch.data matches 395 run data remove storage switch:maps to_scan.cookie_wars
execute if score #scan_cookie_wars switch.data matches 395 run scoreboard players reset #scan_cookie_wars switch.data

execute if score #scan_cookie_wars switch.data matches 1.. run schedule function switch:maps/survival/cookie_wars/scan_doors 1t

