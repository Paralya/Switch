
#> switch:maps/survival/airdox_fish_fight/scan_doors
#
# @within	switch:maps/survival/airdox_fish_fight/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_airdox_fish_fight switch.data 1

execute if score #scan_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 155924 155924 155941 156075
execute if score #scan_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 155924 155924 155941 156075

execute if score #scan_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 155941 155924 155958 156075
execute if score #scan_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 155941 155924 155958 156075

execute if score #scan_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 155958 155924 155975 156075
execute if score #scan_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 155958 155924 155975 156075

execute if score #scan_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 155975 155924 155992 156075
execute if score #scan_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 155975 155924 155992 156075

execute if score #scan_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 155992 155924 156008 156075
execute if score #scan_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 155992 155924 156008 156075

execute if score #scan_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 156008 155924 156025 156075
execute if score #scan_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 156008 155924 156025 156075

execute if score #scan_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 156025 155924 156042 156075
execute if score #scan_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 156025 155924 156042 156075

execute if score #scan_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 156042 155924 156059 156075
execute if score #scan_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 156042 155924 156059 156075

execute if score #scan_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 156059 155924 156076 156075
execute if score #scan_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 156059 155924 156076 156075

execute if score #scan_airdox_fish_fight switch.data matches 1 run data modify storage switch:maps to_scan.airdox_fish_fight set value 2b
execute if score #scan_airdox_fish_fight switch.data matches 1 run scoreboard players set #start_x_airdox_fish_fight switch.data 155925
execute if score #scan_airdox_fish_fight switch.data matches 1 run scoreboard players set #start_y_airdox_fish_fight switch.data -51
execute if score #scan_airdox_fish_fight switch.data matches 1 run scoreboard players set #start_z_airdox_fish_fight switch.data 155925
execute if score #scan_airdox_fish_fight switch.data matches 1 run scoreboard players set #end_x_airdox_fish_fight switch.data 156075
execute if score #scan_airdox_fish_fight switch.data matches 1 run scoreboard players set #end_y_airdox_fish_fight switch.data 67
execute if score #scan_airdox_fish_fight switch.data matches 1 run scoreboard players set #end_z_airdox_fish_fight switch.data 156074
execute if score #scan_airdox_fish_fight switch.data matches 1 run scoreboard players operation #curr_x_airdox_fish_fight switch.data = #start_x_airdox_fish_fight switch.data
execute if score #scan_airdox_fish_fight switch.data matches 1 run scoreboard players operation #curr_y_airdox_fish_fight switch.data = #start_y_airdox_fish_fight switch.data
execute if score #scan_airdox_fish_fight switch.data matches 1 run scoreboard players operation #curr_z_airdox_fish_fight switch.data = #start_z_airdox_fish_fight switch.data
execute if score #scan_airdox_fish_fight switch.data matches 1 run data modify storage switch:doors airdox_fish_fight set value []

execute if score #scan_airdox_fish_fight switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_airdox_fish_fight switch.data matches 30.. summon marker run function switch:maps/survival/airdox_fish_fight/scan_doors_on_marker

execute if score #scan_airdox_fish_fight switch.data matches 570 in minecraft:overworld run forceload remove 155924 155924 155941 156075
execute if score #scan_airdox_fish_fight switch.data matches 570 in switch:game run forceload remove 155924 155924 155941 156075

execute if score #scan_airdox_fish_fight switch.data matches 570 in minecraft:overworld run forceload remove 155941 155924 155958 156075
execute if score #scan_airdox_fish_fight switch.data matches 570 in switch:game run forceload remove 155941 155924 155958 156075

execute if score #scan_airdox_fish_fight switch.data matches 570 in minecraft:overworld run forceload remove 155958 155924 155975 156075
execute if score #scan_airdox_fish_fight switch.data matches 570 in switch:game run forceload remove 155958 155924 155975 156075

execute if score #scan_airdox_fish_fight switch.data matches 570 in minecraft:overworld run forceload remove 155975 155924 155992 156075
execute if score #scan_airdox_fish_fight switch.data matches 570 in switch:game run forceload remove 155975 155924 155992 156075

execute if score #scan_airdox_fish_fight switch.data matches 570 in minecraft:overworld run forceload remove 155992 155924 156008 156075
execute if score #scan_airdox_fish_fight switch.data matches 570 in switch:game run forceload remove 155992 155924 156008 156075

execute if score #scan_airdox_fish_fight switch.data matches 570 in minecraft:overworld run forceload remove 156008 155924 156025 156075
execute if score #scan_airdox_fish_fight switch.data matches 570 in switch:game run forceload remove 156008 155924 156025 156075

execute if score #scan_airdox_fish_fight switch.data matches 570 in minecraft:overworld run forceload remove 156025 155924 156042 156075
execute if score #scan_airdox_fish_fight switch.data matches 570 in switch:game run forceload remove 156025 155924 156042 156075

execute if score #scan_airdox_fish_fight switch.data matches 570 in minecraft:overworld run forceload remove 156042 155924 156059 156075
execute if score #scan_airdox_fish_fight switch.data matches 570 in switch:game run forceload remove 156042 155924 156059 156075

execute if score #scan_airdox_fish_fight switch.data matches 570 in minecraft:overworld run forceload remove 156059 155924 156076 156075
execute if score #scan_airdox_fish_fight switch.data matches 570 in switch:game run forceload remove 156059 155924 156076 156075

execute if score #scan_airdox_fish_fight switch.data matches 570 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"airdox_fish_fight","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"28","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_airdox_fish_fight switch.data matches 570 run data remove storage switch:maps to_scan.airdox_fish_fight
execute if score #scan_airdox_fish_fight switch.data matches 570 run scoreboard players reset #scan_airdox_fish_fight switch.data

execute if score #scan_airdox_fish_fight switch.data matches 1.. run schedule function switch:maps/survival/airdox_fish_fight/scan_doors 1t

