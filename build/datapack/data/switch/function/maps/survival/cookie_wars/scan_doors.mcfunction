
#> switch:maps/survival/cookie_wars/scan_doors
#
# @within	switch:maps/survival/cookie_wars/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_cookie_wars switch.data 1

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49000 49000 49014 49200
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add 49000 49000 49014 49200

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49014 49000 49029 49200
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add 49014 49000 49029 49200

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49029 49000 49043 49200
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add 49029 49000 49043 49200

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49043 49000 49057 49200
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add 49043 49000 49057 49200

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49057 49000 49071 49200
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add 49057 49000 49071 49200

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49071 49000 49086 49200
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add 49071 49000 49086 49200

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49086 49000 49100 49200
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add 49086 49000 49100 49200

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49100 49000 49114 49200
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add 49100 49000 49114 49200

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49114 49000 49129 49200
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add 49114 49000 49129 49200

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49129 49000 49143 49200
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add 49129 49000 49143 49200

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49143 49000 49157 49200
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add 49143 49000 49157 49200

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49157 49000 49171 49200
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add 49157 49000 49171 49200

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49171 49000 49186 49200
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add 49171 49000 49186 49200

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49186 49000 49200 49200
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add 49186 49000 49200 49200

execute if score #scan_cookie_wars switch.data matches 1 run data modify storage switch:maps to_scan.cookie_wars set value 2b
execute if score #scan_cookie_wars switch.data matches 1 run scoreboard players set #start_x_cookie_wars switch.data 49001
execute if score #scan_cookie_wars switch.data matches 1 run scoreboard players set #start_y_cookie_wars switch.data 101
execute if score #scan_cookie_wars switch.data matches 1 run scoreboard players set #start_z_cookie_wars switch.data 49001
execute if score #scan_cookie_wars switch.data matches 1 run scoreboard players set #end_x_cookie_wars switch.data 49199
execute if score #scan_cookie_wars switch.data matches 1 run scoreboard players set #end_y_cookie_wars switch.data 146
execute if score #scan_cookie_wars switch.data matches 1 run scoreboard players set #end_z_cookie_wars switch.data 49199
execute if score #scan_cookie_wars switch.data matches 1 run scoreboard players operation #curr_x_cookie_wars switch.data = #start_x_cookie_wars switch.data
execute if score #scan_cookie_wars switch.data matches 1 run scoreboard players operation #curr_y_cookie_wars switch.data = #start_y_cookie_wars switch.data
execute if score #scan_cookie_wars switch.data matches 1 run scoreboard players operation #curr_z_cookie_wars switch.data = #start_z_cookie_wars switch.data
execute if score #scan_cookie_wars switch.data matches 1 run data modify storage switch:doors cookie_wars set value []

execute if score #scan_cookie_wars switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_cookie_wars switch.data matches 30.. summon marker run function switch:maps/survival/cookie_wars/scan_doors_on_marker

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove 49000 49000 49014 49200
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove 49000 49000 49014 49200

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove 49014 49000 49029 49200
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove 49014 49000 49029 49200

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove 49029 49000 49043 49200
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove 49029 49000 49043 49200

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove 49043 49000 49057 49200
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove 49043 49000 49057 49200

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove 49057 49000 49071 49200
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove 49057 49000 49071 49200

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove 49071 49000 49086 49200
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove 49071 49000 49086 49200

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove 49086 49000 49100 49200
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove 49086 49000 49100 49200

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove 49100 49000 49114 49200
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove 49100 49000 49114 49200

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove 49114 49000 49129 49200
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove 49114 49000 49129 49200

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove 49129 49000 49143 49200
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove 49129 49000 49143 49200

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove 49143 49000 49157 49200
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove 49143 49000 49157 49200

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove 49157 49000 49171 49200
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove 49157 49000 49171 49200

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove 49171 49000 49186 49200
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove 49171 49000 49186 49200

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove 49186 49000 49200 49200
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove 49186 49000 49200 49200

execute if score #scan_cookie_wars switch.data matches 395 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"cookie_wars","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"19","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_cookie_wars switch.data matches 395 run data remove storage switch:maps to_scan.cookie_wars
execute if score #scan_cookie_wars switch.data matches 395 run scoreboard players reset #scan_cookie_wars switch.data

execute if score #scan_cookie_wars switch.data matches 1.. run schedule function switch:maps/survival/cookie_wars/scan_doors 1t

