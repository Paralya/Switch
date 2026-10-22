
#> switch:maps/survival/lost_graveyard_remastered/scan_doors
#
# @within	switch:maps/survival/lost_graveyard_remastered/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_lost_graveyard_remastered switch.data 1

execute if score #scan_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 2000 10000 2019 10134
execute if score #scan_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 2000 10000 2019 10134

execute if score #scan_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 2019 10000 2038 10134
execute if score #scan_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 2019 10000 2038 10134

execute if score #scan_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 2038 10000 2056 10134
execute if score #scan_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 2038 10000 2056 10134

execute if score #scan_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 2056 10000 2075 10134
execute if score #scan_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 2056 10000 2075 10134

execute if score #scan_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 2075 10000 2094 10134
execute if score #scan_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 2075 10000 2094 10134

execute if score #scan_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 2094 10000 2112 10134
execute if score #scan_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 2094 10000 2112 10134

execute if score #scan_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 2112 10000 2131 10134
execute if score #scan_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 2112 10000 2131 10134

execute if score #scan_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 2131 10000 2150 10134
execute if score #scan_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 2131 10000 2150 10134

execute if score #scan_lost_graveyard_remastered switch.data matches 1 run data modify storage switch:maps to_scan.lost_graveyard_remastered set value 2b
execute if score #scan_lost_graveyard_remastered switch.data matches 1 run scoreboard players set #start_x_lost_graveyard_remastered switch.data 2001
execute if score #scan_lost_graveyard_remastered switch.data matches 1 run scoreboard players set #start_y_lost_graveyard_remastered switch.data 101
execute if score #scan_lost_graveyard_remastered switch.data matches 1 run scoreboard players set #start_z_lost_graveyard_remastered switch.data 10001
execute if score #scan_lost_graveyard_remastered switch.data matches 1 run scoreboard players set #end_x_lost_graveyard_remastered switch.data 2149
execute if score #scan_lost_graveyard_remastered switch.data matches 1 run scoreboard players set #end_y_lost_graveyard_remastered switch.data 161
execute if score #scan_lost_graveyard_remastered switch.data matches 1 run scoreboard players set #end_z_lost_graveyard_remastered switch.data 10133
execute if score #scan_lost_graveyard_remastered switch.data matches 1 run scoreboard players operation #curr_x_lost_graveyard_remastered switch.data = #start_x_lost_graveyard_remastered switch.data
execute if score #scan_lost_graveyard_remastered switch.data matches 1 run scoreboard players operation #curr_y_lost_graveyard_remastered switch.data = #start_y_lost_graveyard_remastered switch.data
execute if score #scan_lost_graveyard_remastered switch.data matches 1 run scoreboard players operation #curr_z_lost_graveyard_remastered switch.data = #start_z_lost_graveyard_remastered switch.data
execute if score #scan_lost_graveyard_remastered switch.data matches 1 run data modify storage switch:doors lost_graveyard_remastered set value []

execute if score #scan_lost_graveyard_remastered switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_lost_graveyard_remastered switch.data matches 30.. summon marker run function switch:maps/survival/lost_graveyard_remastered/scan_doors_on_marker

execute if score #scan_lost_graveyard_remastered switch.data matches 272 in minecraft:overworld run forceload remove 2000 10000 2019 10134
execute if score #scan_lost_graveyard_remastered switch.data matches 272 in switch:game run forceload remove 2000 10000 2019 10134

execute if score #scan_lost_graveyard_remastered switch.data matches 272 in minecraft:overworld run forceload remove 2019 10000 2038 10134
execute if score #scan_lost_graveyard_remastered switch.data matches 272 in switch:game run forceload remove 2019 10000 2038 10134

execute if score #scan_lost_graveyard_remastered switch.data matches 272 in minecraft:overworld run forceload remove 2038 10000 2056 10134
execute if score #scan_lost_graveyard_remastered switch.data matches 272 in switch:game run forceload remove 2038 10000 2056 10134

execute if score #scan_lost_graveyard_remastered switch.data matches 272 in minecraft:overworld run forceload remove 2056 10000 2075 10134
execute if score #scan_lost_graveyard_remastered switch.data matches 272 in switch:game run forceload remove 2056 10000 2075 10134

execute if score #scan_lost_graveyard_remastered switch.data matches 272 in minecraft:overworld run forceload remove 2075 10000 2094 10134
execute if score #scan_lost_graveyard_remastered switch.data matches 272 in switch:game run forceload remove 2075 10000 2094 10134

execute if score #scan_lost_graveyard_remastered switch.data matches 272 in minecraft:overworld run forceload remove 2094 10000 2112 10134
execute if score #scan_lost_graveyard_remastered switch.data matches 272 in switch:game run forceload remove 2094 10000 2112 10134

execute if score #scan_lost_graveyard_remastered switch.data matches 272 in minecraft:overworld run forceload remove 2112 10000 2131 10134
execute if score #scan_lost_graveyard_remastered switch.data matches 272 in switch:game run forceload remove 2112 10000 2131 10134

execute if score #scan_lost_graveyard_remastered switch.data matches 272 in minecraft:overworld run forceload remove 2131 10000 2150 10134
execute if score #scan_lost_graveyard_remastered switch.data matches 272 in switch:game run forceload remove 2131 10000 2150 10134

execute if score #scan_lost_graveyard_remastered switch.data matches 272 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"lost_graveyard_remastered","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"13","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_lost_graveyard_remastered switch.data matches 272 run data remove storage switch:maps to_scan.lost_graveyard_remastered
execute if score #scan_lost_graveyard_remastered switch.data matches 272 run scoreboard players reset #scan_lost_graveyard_remastered switch.data

execute if score #scan_lost_graveyard_remastered switch.data matches 1.. run schedule function switch:maps/survival/lost_graveyard_remastered/scan_doors 1t

