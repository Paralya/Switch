
#> switch:maps/survival/cookie_wars/scan_doors
#
# @within	switch:maps/survival/cookie_wars/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_cookie_wars switch.data 1

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 48900 48900 48914 49100
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add 48900 48900 48914 49100

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 48914 48900 48929 49100
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add 48914 48900 48929 49100

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 48929 48900 48943 49100
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add 48929 48900 48943 49100

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 48943 48900 48957 49100
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add 48943 48900 48957 49100

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 48957 48900 48971 49100
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add 48957 48900 48971 49100

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 48971 48900 48986 49100
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add 48971 48900 48986 49100

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 48986 48900 49000 49100
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add 48986 48900 49000 49100

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49000 48900 49014 49100
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add 49000 48900 49014 49100

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49014 48900 49029 49100
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add 49014 48900 49029 49100

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49029 48900 49043 49100
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add 49029 48900 49043 49100

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49043 48900 49057 49100
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add 49043 48900 49057 49100

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49057 48900 49071 49100
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add 49057 48900 49071 49100

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49071 48900 49086 49100
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add 49071 48900 49086 49100

execute if score #scan_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49086 48900 49100 49100
execute if score #scan_cookie_wars switch.data matches 1 in switch:game run forceload add 49086 48900 49100 49100

execute if score #scan_cookie_wars switch.data matches 1 run data modify storage switch:maps to_scan.cookie_wars set value 2b
execute if score #scan_cookie_wars switch.data matches 1 run scoreboard players set #start_x_cookie_wars switch.data 48901
execute if score #scan_cookie_wars switch.data matches 1 run scoreboard players set #start_y_cookie_wars switch.data 1
execute if score #scan_cookie_wars switch.data matches 1 run scoreboard players set #start_z_cookie_wars switch.data 48901
execute if score #scan_cookie_wars switch.data matches 1 run scoreboard players set #end_x_cookie_wars switch.data 49099
execute if score #scan_cookie_wars switch.data matches 1 run scoreboard players set #end_y_cookie_wars switch.data 46
execute if score #scan_cookie_wars switch.data matches 1 run scoreboard players set #end_z_cookie_wars switch.data 49099
execute if score #scan_cookie_wars switch.data matches 1 run scoreboard players operation #curr_x_cookie_wars switch.data = #start_x_cookie_wars switch.data
execute if score #scan_cookie_wars switch.data matches 1 run scoreboard players operation #curr_y_cookie_wars switch.data = #start_y_cookie_wars switch.data
execute if score #scan_cookie_wars switch.data matches 1 run scoreboard players operation #curr_z_cookie_wars switch.data = #start_z_cookie_wars switch.data
execute if score #scan_cookie_wars switch.data matches 1 run data modify storage switch:doors cookie_wars set value []

execute if score #scan_cookie_wars switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_cookie_wars switch.data matches 30.. summon marker run function switch:maps/survival/cookie_wars/scan_doors_on_marker

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove 48900 48900 48914 49100
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove 48900 48900 48914 49100

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove 48914 48900 48929 49100
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove 48914 48900 48929 49100

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove 48929 48900 48943 49100
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove 48929 48900 48943 49100

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove 48943 48900 48957 49100
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove 48943 48900 48957 49100

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove 48957 48900 48971 49100
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove 48957 48900 48971 49100

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove 48971 48900 48986 49100
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove 48971 48900 48986 49100

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove 48986 48900 49000 49100
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove 48986 48900 49000 49100

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove 49000 48900 49014 49100
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove 49000 48900 49014 49100

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove 49014 48900 49029 49100
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove 49014 48900 49029 49100

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove 49029 48900 49043 49100
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove 49029 48900 49043 49100

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove 49043 48900 49057 49100
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove 49043 48900 49057 49100

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove 49057 48900 49071 49100
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove 49057 48900 49071 49100

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove 49071 48900 49086 49100
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove 49071 48900 49086 49100

execute if score #scan_cookie_wars switch.data matches 395 in minecraft:overworld run forceload remove 49086 48900 49100 49100
execute if score #scan_cookie_wars switch.data matches 395 in switch:game run forceload remove 49086 48900 49100 49100

execute if score #scan_cookie_wars switch.data matches 395 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"cookie_wars","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"19","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_cookie_wars switch.data matches 395 run data remove storage switch:maps to_scan.cookie_wars
execute if score #scan_cookie_wars switch.data matches 395 run scoreboard players reset #scan_cookie_wars switch.data

execute if score #scan_cookie_wars switch.data matches 1.. run schedule function switch:maps/survival/cookie_wars/scan_doors 1t

