
#> switch:maps/survival/airship_fortress/scan_doors
#
# @within	switch:maps/survival/airship_fortress/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_airship_fortress switch.data 1

execute if score #scan_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 7169 -5149 7184 -4950
execute if score #scan_airship_fortress switch.data matches 1 in switch:game run forceload add 7169 -5149 7184 -4950

execute if score #scan_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 7184 -5149 7198 -4950
execute if score #scan_airship_fortress switch.data matches 1 in switch:game run forceload add 7184 -5149 7198 -4950

execute if score #scan_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 7198 -5149 7213 -4950
execute if score #scan_airship_fortress switch.data matches 1 in switch:game run forceload add 7198 -5149 7213 -4950

execute if score #scan_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 7213 -5149 7227 -4950
execute if score #scan_airship_fortress switch.data matches 1 in switch:game run forceload add 7213 -5149 7227 -4950

execute if score #scan_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 7227 -5149 7242 -4950
execute if score #scan_airship_fortress switch.data matches 1 in switch:game run forceload add 7227 -5149 7242 -4950

execute if score #scan_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 7242 -5149 7256 -4950
execute if score #scan_airship_fortress switch.data matches 1 in switch:game run forceload add 7242 -5149 7256 -4950

execute if score #scan_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 7256 -5149 7271 -4950
execute if score #scan_airship_fortress switch.data matches 1 in switch:game run forceload add 7256 -5149 7271 -4950

execute if score #scan_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 7271 -5149 7286 -4950
execute if score #scan_airship_fortress switch.data matches 1 in switch:game run forceload add 7271 -5149 7286 -4950

execute if score #scan_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 7286 -5149 7300 -4950
execute if score #scan_airship_fortress switch.data matches 1 in switch:game run forceload add 7286 -5149 7300 -4950

execute if score #scan_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 7300 -5149 7315 -4950
execute if score #scan_airship_fortress switch.data matches 1 in switch:game run forceload add 7300 -5149 7315 -4950

execute if score #scan_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 7315 -5149 7329 -4950
execute if score #scan_airship_fortress switch.data matches 1 in switch:game run forceload add 7315 -5149 7329 -4950

execute if score #scan_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 7329 -5149 7344 -4950
execute if score #scan_airship_fortress switch.data matches 1 in switch:game run forceload add 7329 -5149 7344 -4950

execute if score #scan_airship_fortress switch.data matches 1 run data modify storage switch:maps to_scan.airship_fortress set value 2b
execute if score #scan_airship_fortress switch.data matches 1 run scoreboard players set #start_x_airship_fortress switch.data 7170
execute if score #scan_airship_fortress switch.data matches 1 run scoreboard players set #start_y_airship_fortress switch.data 71
execute if score #scan_airship_fortress switch.data matches 1 run scoreboard players set #start_z_airship_fortress switch.data -5148
execute if score #scan_airship_fortress switch.data matches 1 run scoreboard players set #end_x_airship_fortress switch.data 7343
execute if score #scan_airship_fortress switch.data matches 1 run scoreboard players set #end_y_airship_fortress switch.data 179
execute if score #scan_airship_fortress switch.data matches 1 run scoreboard players set #end_z_airship_fortress switch.data -4951
execute if score #scan_airship_fortress switch.data matches 1 run scoreboard players operation #curr_x_airship_fortress switch.data = #start_x_airship_fortress switch.data
execute if score #scan_airship_fortress switch.data matches 1 run scoreboard players operation #curr_y_airship_fortress switch.data = #start_y_airship_fortress switch.data
execute if score #scan_airship_fortress switch.data matches 1 run scoreboard players operation #curr_z_airship_fortress switch.data = #start_z_airship_fortress switch.data
execute if score #scan_airship_fortress switch.data matches 1 run data modify storage switch:doors airship_fortress set value []

execute if score #scan_airship_fortress switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_airship_fortress switch.data matches 30.. summon marker run function switch:maps/survival/airship_fortress/scan_doors_on_marker

execute if score #scan_airship_fortress switch.data matches 782 in minecraft:overworld run forceload remove 7169 -5149 7184 -4950
execute if score #scan_airship_fortress switch.data matches 782 in switch:game run forceload remove 7169 -5149 7184 -4950

execute if score #scan_airship_fortress switch.data matches 782 in minecraft:overworld run forceload remove 7184 -5149 7198 -4950
execute if score #scan_airship_fortress switch.data matches 782 in switch:game run forceload remove 7184 -5149 7198 -4950

execute if score #scan_airship_fortress switch.data matches 782 in minecraft:overworld run forceload remove 7198 -5149 7213 -4950
execute if score #scan_airship_fortress switch.data matches 782 in switch:game run forceload remove 7198 -5149 7213 -4950

execute if score #scan_airship_fortress switch.data matches 782 in minecraft:overworld run forceload remove 7213 -5149 7227 -4950
execute if score #scan_airship_fortress switch.data matches 782 in switch:game run forceload remove 7213 -5149 7227 -4950

execute if score #scan_airship_fortress switch.data matches 782 in minecraft:overworld run forceload remove 7227 -5149 7242 -4950
execute if score #scan_airship_fortress switch.data matches 782 in switch:game run forceload remove 7227 -5149 7242 -4950

execute if score #scan_airship_fortress switch.data matches 782 in minecraft:overworld run forceload remove 7242 -5149 7256 -4950
execute if score #scan_airship_fortress switch.data matches 782 in switch:game run forceload remove 7242 -5149 7256 -4950

execute if score #scan_airship_fortress switch.data matches 782 in minecraft:overworld run forceload remove 7256 -5149 7271 -4950
execute if score #scan_airship_fortress switch.data matches 782 in switch:game run forceload remove 7256 -5149 7271 -4950

execute if score #scan_airship_fortress switch.data matches 782 in minecraft:overworld run forceload remove 7271 -5149 7286 -4950
execute if score #scan_airship_fortress switch.data matches 782 in switch:game run forceload remove 7271 -5149 7286 -4950

execute if score #scan_airship_fortress switch.data matches 782 in minecraft:overworld run forceload remove 7286 -5149 7300 -4950
execute if score #scan_airship_fortress switch.data matches 782 in switch:game run forceload remove 7286 -5149 7300 -4950

execute if score #scan_airship_fortress switch.data matches 782 in minecraft:overworld run forceload remove 7300 -5149 7315 -4950
execute if score #scan_airship_fortress switch.data matches 782 in switch:game run forceload remove 7300 -5149 7315 -4950

execute if score #scan_airship_fortress switch.data matches 782 in minecraft:overworld run forceload remove 7315 -5149 7329 -4950
execute if score #scan_airship_fortress switch.data matches 782 in switch:game run forceload remove 7315 -5149 7329 -4950

execute if score #scan_airship_fortress switch.data matches 782 in minecraft:overworld run forceload remove 7329 -5149 7344 -4950
execute if score #scan_airship_fortress switch.data matches 782 in switch:game run forceload remove 7329 -5149 7344 -4950

execute if score #scan_airship_fortress switch.data matches 782 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"airship_fortress","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"39","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_airship_fortress switch.data matches 782 run data remove storage switch:maps to_scan.airship_fortress
execute if score #scan_airship_fortress switch.data matches 782 run scoreboard players reset #scan_airship_fortress switch.data

execute if score #scan_airship_fortress switch.data matches 1.. run schedule function switch:maps/survival/airship_fortress/scan_doors 1t

