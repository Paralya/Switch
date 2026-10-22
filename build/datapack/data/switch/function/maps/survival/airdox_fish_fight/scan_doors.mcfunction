
#> switch:maps/survival/airdox_fish_fight/scan_doors
#
# @within	switch:maps/survival/airdox_fish_fight/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_airdox_fish_fight switch.data 1

execute if score #scan_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 0 -12000 17 -11849
execute if score #scan_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 0 -12000 17 -11849

execute if score #scan_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 17 -12000 34 -11849
execute if score #scan_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 17 -12000 34 -11849

execute if score #scan_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 34 -12000 51 -11849
execute if score #scan_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 34 -12000 51 -11849

execute if score #scan_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 51 -12000 68 -11849
execute if score #scan_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 51 -12000 68 -11849

execute if score #scan_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 68 -12000 84 -11849
execute if score #scan_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 68 -12000 84 -11849

execute if score #scan_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 84 -12000 101 -11849
execute if score #scan_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 84 -12000 101 -11849

execute if score #scan_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 101 -12000 118 -11849
execute if score #scan_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 101 -12000 118 -11849

execute if score #scan_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 118 -12000 135 -11849
execute if score #scan_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 118 -12000 135 -11849

execute if score #scan_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 135 -12000 152 -11849
execute if score #scan_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 135 -12000 152 -11849

execute if score #scan_airdox_fish_fight switch.data matches 1 run data modify storage switch:maps to_scan.airdox_fish_fight set value 2b
execute if score #scan_airdox_fish_fight switch.data matches 1 run scoreboard players set #start_x_airdox_fish_fight switch.data 1
execute if score #scan_airdox_fish_fight switch.data matches 1 run scoreboard players set #start_y_airdox_fish_fight switch.data 101
execute if score #scan_airdox_fish_fight switch.data matches 1 run scoreboard players set #start_z_airdox_fish_fight switch.data -11999
execute if score #scan_airdox_fish_fight switch.data matches 1 run scoreboard players set #end_x_airdox_fish_fight switch.data 151
execute if score #scan_airdox_fish_fight switch.data matches 1 run scoreboard players set #end_y_airdox_fish_fight switch.data 198
execute if score #scan_airdox_fish_fight switch.data matches 1 run scoreboard players set #end_z_airdox_fish_fight switch.data -11850
execute if score #scan_airdox_fish_fight switch.data matches 1 run scoreboard players operation #curr_x_airdox_fish_fight switch.data = #start_x_airdox_fish_fight switch.data
execute if score #scan_airdox_fish_fight switch.data matches 1 run scoreboard players operation #curr_y_airdox_fish_fight switch.data = #start_y_airdox_fish_fight switch.data
execute if score #scan_airdox_fish_fight switch.data matches 1 run scoreboard players operation #curr_z_airdox_fish_fight switch.data = #start_z_airdox_fish_fight switch.data
execute if score #scan_airdox_fish_fight switch.data matches 1 run data modify storage switch:doors airdox_fish_fight set value []

execute if score #scan_airdox_fish_fight switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_airdox_fish_fight switch.data matches 30.. summon marker run function switch:maps/survival/airdox_fish_fight/scan_doors_on_marker

execute if score #scan_airdox_fish_fight switch.data matches 474 in minecraft:overworld run forceload remove 0 -12000 17 -11849
execute if score #scan_airdox_fish_fight switch.data matches 474 in switch:game run forceload remove 0 -12000 17 -11849

execute if score #scan_airdox_fish_fight switch.data matches 474 in minecraft:overworld run forceload remove 17 -12000 34 -11849
execute if score #scan_airdox_fish_fight switch.data matches 474 in switch:game run forceload remove 17 -12000 34 -11849

execute if score #scan_airdox_fish_fight switch.data matches 474 in minecraft:overworld run forceload remove 34 -12000 51 -11849
execute if score #scan_airdox_fish_fight switch.data matches 474 in switch:game run forceload remove 34 -12000 51 -11849

execute if score #scan_airdox_fish_fight switch.data matches 474 in minecraft:overworld run forceload remove 51 -12000 68 -11849
execute if score #scan_airdox_fish_fight switch.data matches 474 in switch:game run forceload remove 51 -12000 68 -11849

execute if score #scan_airdox_fish_fight switch.data matches 474 in minecraft:overworld run forceload remove 68 -12000 84 -11849
execute if score #scan_airdox_fish_fight switch.data matches 474 in switch:game run forceload remove 68 -12000 84 -11849

execute if score #scan_airdox_fish_fight switch.data matches 474 in minecraft:overworld run forceload remove 84 -12000 101 -11849
execute if score #scan_airdox_fish_fight switch.data matches 474 in switch:game run forceload remove 84 -12000 101 -11849

execute if score #scan_airdox_fish_fight switch.data matches 474 in minecraft:overworld run forceload remove 101 -12000 118 -11849
execute if score #scan_airdox_fish_fight switch.data matches 474 in switch:game run forceload remove 101 -12000 118 -11849

execute if score #scan_airdox_fish_fight switch.data matches 474 in minecraft:overworld run forceload remove 118 -12000 135 -11849
execute if score #scan_airdox_fish_fight switch.data matches 474 in switch:game run forceload remove 118 -12000 135 -11849

execute if score #scan_airdox_fish_fight switch.data matches 474 in minecraft:overworld run forceload remove 135 -12000 152 -11849
execute if score #scan_airdox_fish_fight switch.data matches 474 in switch:game run forceload remove 135 -12000 152 -11849

execute if score #scan_airdox_fish_fight switch.data matches 474 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"airdox_fish_fight","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"23","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_airdox_fish_fight switch.data matches 474 run data remove storage switch:maps to_scan.airdox_fish_fight
execute if score #scan_airdox_fish_fight switch.data matches 474 run scoreboard players reset #scan_airdox_fish_fight switch.data

execute if score #scan_airdox_fish_fight switch.data matches 1.. run schedule function switch:maps/survival/airdox_fish_fight/scan_doors 1t

