
#> switch:maps/survival/vilarles_castillo/scan_doors
#
# @within	switch:maps/survival/vilarles_castillo/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_vilarles_castillo switch.data 1

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52000 52000 52016 52173
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52000 52000 52016 52173

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52016 52000 52032 52173
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52016 52000 52032 52173

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52032 52000 52048 52173
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52032 52000 52048 52173

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52048 52000 52064 52173
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52048 52000 52064 52173

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52064 52000 52080 52173
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52064 52000 52080 52173

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52080 52000 52097 52173
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52080 52000 52097 52173

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52097 52000 52113 52173
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52097 52000 52113 52173

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52113 52000 52129 52173
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52113 52000 52129 52173

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52129 52000 52145 52173
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52129 52000 52145 52173

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52145 52000 52161 52173
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52145 52000 52161 52173

execute if score #scan_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52161 52000 52177 52173
execute if score #scan_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52161 52000 52177 52173

execute if score #scan_vilarles_castillo switch.data matches 1 run data modify storage switch:maps to_scan.vilarles_castillo set value 2b
execute if score #scan_vilarles_castillo switch.data matches 1 run scoreboard players set #start_x_vilarles_castillo switch.data 52001
execute if score #scan_vilarles_castillo switch.data matches 1 run scoreboard players set #start_y_vilarles_castillo switch.data 101
execute if score #scan_vilarles_castillo switch.data matches 1 run scoreboard players set #start_z_vilarles_castillo switch.data 52001
execute if score #scan_vilarles_castillo switch.data matches 1 run scoreboard players set #end_x_vilarles_castillo switch.data 52176
execute if score #scan_vilarles_castillo switch.data matches 1 run scoreboard players set #end_y_vilarles_castillo switch.data 255
execute if score #scan_vilarles_castillo switch.data matches 1 run scoreboard players set #end_z_vilarles_castillo switch.data 52172
execute if score #scan_vilarles_castillo switch.data matches 1 run scoreboard players operation #curr_x_vilarles_castillo switch.data = #start_x_vilarles_castillo switch.data
execute if score #scan_vilarles_castillo switch.data matches 1 run scoreboard players operation #curr_y_vilarles_castillo switch.data = #start_y_vilarles_castillo switch.data
execute if score #scan_vilarles_castillo switch.data matches 1 run scoreboard players operation #curr_z_vilarles_castillo switch.data = #start_z_vilarles_castillo switch.data
execute if score #scan_vilarles_castillo switch.data matches 1 run data modify storage switch:doors vilarles_castillo set value []

execute if score #scan_vilarles_castillo switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_vilarles_castillo switch.data matches 30.. summon marker run function switch:maps/survival/vilarles_castillo/scan_doors_on_marker

execute if score #scan_vilarles_castillo switch.data matches 969 in minecraft:overworld run forceload remove 52000 52000 52016 52173
execute if score #scan_vilarles_castillo switch.data matches 969 in switch:game run forceload remove 52000 52000 52016 52173

execute if score #scan_vilarles_castillo switch.data matches 969 in minecraft:overworld run forceload remove 52016 52000 52032 52173
execute if score #scan_vilarles_castillo switch.data matches 969 in switch:game run forceload remove 52016 52000 52032 52173

execute if score #scan_vilarles_castillo switch.data matches 969 in minecraft:overworld run forceload remove 52032 52000 52048 52173
execute if score #scan_vilarles_castillo switch.data matches 969 in switch:game run forceload remove 52032 52000 52048 52173

execute if score #scan_vilarles_castillo switch.data matches 969 in minecraft:overworld run forceload remove 52048 52000 52064 52173
execute if score #scan_vilarles_castillo switch.data matches 969 in switch:game run forceload remove 52048 52000 52064 52173

execute if score #scan_vilarles_castillo switch.data matches 969 in minecraft:overworld run forceload remove 52064 52000 52080 52173
execute if score #scan_vilarles_castillo switch.data matches 969 in switch:game run forceload remove 52064 52000 52080 52173

execute if score #scan_vilarles_castillo switch.data matches 969 in minecraft:overworld run forceload remove 52080 52000 52097 52173
execute if score #scan_vilarles_castillo switch.data matches 969 in switch:game run forceload remove 52080 52000 52097 52173

execute if score #scan_vilarles_castillo switch.data matches 969 in minecraft:overworld run forceload remove 52097 52000 52113 52173
execute if score #scan_vilarles_castillo switch.data matches 969 in switch:game run forceload remove 52097 52000 52113 52173

execute if score #scan_vilarles_castillo switch.data matches 969 in minecraft:overworld run forceload remove 52113 52000 52129 52173
execute if score #scan_vilarles_castillo switch.data matches 969 in switch:game run forceload remove 52113 52000 52129 52173

execute if score #scan_vilarles_castillo switch.data matches 969 in minecraft:overworld run forceload remove 52129 52000 52145 52173
execute if score #scan_vilarles_castillo switch.data matches 969 in switch:game run forceload remove 52129 52000 52145 52173

execute if score #scan_vilarles_castillo switch.data matches 969 in minecraft:overworld run forceload remove 52145 52000 52161 52173
execute if score #scan_vilarles_castillo switch.data matches 969 in switch:game run forceload remove 52145 52000 52161 52173

execute if score #scan_vilarles_castillo switch.data matches 969 in minecraft:overworld run forceload remove 52161 52000 52177 52173
execute if score #scan_vilarles_castillo switch.data matches 969 in switch:game run forceload remove 52161 52000 52177 52173

execute if score #scan_vilarles_castillo switch.data matches 969 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"vilarles_castillo","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"48","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_vilarles_castillo switch.data matches 969 run data remove storage switch:maps to_scan.vilarles_castillo
execute if score #scan_vilarles_castillo switch.data matches 969 run scoreboard players reset #scan_vilarles_castillo switch.data

execute if score #scan_vilarles_castillo switch.data matches 1.. run schedule function switch:maps/survival/vilarles_castillo/scan_doors 1t

