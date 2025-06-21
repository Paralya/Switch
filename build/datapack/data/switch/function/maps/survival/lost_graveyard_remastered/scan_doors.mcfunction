
#> switch:maps/survival/lost_graveyard_remastered/scan_doors
#
# @within	switch:maps/survival/lost_graveyard_remastered/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_lost_graveyard_remastered switch.data 1

execute if score #scan_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 127000 127000 127019 127134
execute if score #scan_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 127000 127000 127019 127134

execute if score #scan_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 127019 127000 127038 127134
execute if score #scan_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 127019 127000 127038 127134

execute if score #scan_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 127038 127000 127056 127134
execute if score #scan_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 127038 127000 127056 127134

execute if score #scan_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 127056 127000 127075 127134
execute if score #scan_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 127056 127000 127075 127134

execute if score #scan_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 127075 127000 127094 127134
execute if score #scan_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 127075 127000 127094 127134

execute if score #scan_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 127094 127000 127112 127134
execute if score #scan_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 127094 127000 127112 127134

execute if score #scan_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 127112 127000 127131 127134
execute if score #scan_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 127112 127000 127131 127134

execute if score #scan_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 127131 127000 127150 127134
execute if score #scan_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 127131 127000 127150 127134

execute if score #scan_lost_graveyard_remastered switch.data matches 1 run data modify storage switch:maps to_scan.lost_graveyard_remastered set value 2b
execute if score #scan_lost_graveyard_remastered switch.data matches 1 run scoreboard players set #start_x_lost_graveyard_remastered switch.data 127001
execute if score #scan_lost_graveyard_remastered switch.data matches 1 run scoreboard players set #start_y_lost_graveyard_remastered switch.data 1
execute if score #scan_lost_graveyard_remastered switch.data matches 1 run scoreboard players set #start_z_lost_graveyard_remastered switch.data 127001
execute if score #scan_lost_graveyard_remastered switch.data matches 1 run scoreboard players set #end_x_lost_graveyard_remastered switch.data 127149
execute if score #scan_lost_graveyard_remastered switch.data matches 1 run scoreboard players set #end_y_lost_graveyard_remastered switch.data 61
execute if score #scan_lost_graveyard_remastered switch.data matches 1 run scoreboard players set #end_z_lost_graveyard_remastered switch.data 127133
execute if score #scan_lost_graveyard_remastered switch.data matches 1 run scoreboard players operation #curr_x_lost_graveyard_remastered switch.data = #start_x_lost_graveyard_remastered switch.data
execute if score #scan_lost_graveyard_remastered switch.data matches 1 run scoreboard players operation #curr_y_lost_graveyard_remastered switch.data = #start_y_lost_graveyard_remastered switch.data
execute if score #scan_lost_graveyard_remastered switch.data matches 1 run scoreboard players operation #curr_z_lost_graveyard_remastered switch.data = #start_z_lost_graveyard_remastered switch.data
execute if score #scan_lost_graveyard_remastered switch.data matches 1 run data modify storage switch:doors lost_graveyard_remastered set value []

execute if score #scan_lost_graveyard_remastered switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_lost_graveyard_remastered switch.data matches 30.. summon marker run function switch:maps/survival/lost_graveyard_remastered/scan_doors_on_marker

execute if score #scan_lost_graveyard_remastered switch.data matches 272 in minecraft:overworld run forceload remove 127000 127000 127019 127134
execute if score #scan_lost_graveyard_remastered switch.data matches 272 in switch:game run forceload remove 127000 127000 127019 127134

execute if score #scan_lost_graveyard_remastered switch.data matches 272 in minecraft:overworld run forceload remove 127019 127000 127038 127134
execute if score #scan_lost_graveyard_remastered switch.data matches 272 in switch:game run forceload remove 127019 127000 127038 127134

execute if score #scan_lost_graveyard_remastered switch.data matches 272 in minecraft:overworld run forceload remove 127038 127000 127056 127134
execute if score #scan_lost_graveyard_remastered switch.data matches 272 in switch:game run forceload remove 127038 127000 127056 127134

execute if score #scan_lost_graveyard_remastered switch.data matches 272 in minecraft:overworld run forceload remove 127056 127000 127075 127134
execute if score #scan_lost_graveyard_remastered switch.data matches 272 in switch:game run forceload remove 127056 127000 127075 127134

execute if score #scan_lost_graveyard_remastered switch.data matches 272 in minecraft:overworld run forceload remove 127075 127000 127094 127134
execute if score #scan_lost_graveyard_remastered switch.data matches 272 in switch:game run forceload remove 127075 127000 127094 127134

execute if score #scan_lost_graveyard_remastered switch.data matches 272 in minecraft:overworld run forceload remove 127094 127000 127112 127134
execute if score #scan_lost_graveyard_remastered switch.data matches 272 in switch:game run forceload remove 127094 127000 127112 127134

execute if score #scan_lost_graveyard_remastered switch.data matches 272 in minecraft:overworld run forceload remove 127112 127000 127131 127134
execute if score #scan_lost_graveyard_remastered switch.data matches 272 in switch:game run forceload remove 127112 127000 127131 127134

execute if score #scan_lost_graveyard_remastered switch.data matches 272 in minecraft:overworld run forceload remove 127131 127000 127150 127134
execute if score #scan_lost_graveyard_remastered switch.data matches 272 in switch:game run forceload remove 127131 127000 127150 127134

execute if score #scan_lost_graveyard_remastered switch.data matches 272 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"lost_graveyard_remastered","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"13","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_lost_graveyard_remastered switch.data matches 272 run data remove storage switch:maps to_scan.lost_graveyard_remastered
execute if score #scan_lost_graveyard_remastered switch.data matches 272 run scoreboard players reset #scan_lost_graveyard_remastered switch.data

execute if score #scan_lost_graveyard_remastered switch.data matches 1.. run schedule function switch:maps/survival/lost_graveyard_remastered/scan_doors 1t

