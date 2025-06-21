
#> switch:maps/survival/luxium_spectres_remake/scan_doors
#
# @within	switch:maps/survival/luxium_spectres_remake/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_luxium_spectres_remake switch.data 1

execute if score #scan_luxium_spectres_remake switch.data matches 1 in minecraft:overworld run forceload add 142000 142000 142021 142106
execute if score #scan_luxium_spectres_remake switch.data matches 1 in switch:game run forceload add 142000 142000 142021 142106

execute if score #scan_luxium_spectres_remake switch.data matches 1 in minecraft:overworld run forceload add 142021 142000 142042 142106
execute if score #scan_luxium_spectres_remake switch.data matches 1 in switch:game run forceload add 142021 142000 142042 142106

execute if score #scan_luxium_spectres_remake switch.data matches 1 in minecraft:overworld run forceload add 142042 142000 142064 142106
execute if score #scan_luxium_spectres_remake switch.data matches 1 in switch:game run forceload add 142042 142000 142064 142106

execute if score #scan_luxium_spectres_remake switch.data matches 1 in minecraft:overworld run forceload add 142064 142000 142085 142106
execute if score #scan_luxium_spectres_remake switch.data matches 1 in switch:game run forceload add 142064 142000 142085 142106

execute if score #scan_luxium_spectres_remake switch.data matches 1 in minecraft:overworld run forceload add 142085 142000 142106 142106
execute if score #scan_luxium_spectres_remake switch.data matches 1 in switch:game run forceload add 142085 142000 142106 142106

execute if score #scan_luxium_spectres_remake switch.data matches 1 run data modify storage switch:maps to_scan.luxium_spectres_remake set value 2b
execute if score #scan_luxium_spectres_remake switch.data matches 1 run scoreboard players set #start_x_luxium_spectres_remake switch.data 142001
execute if score #scan_luxium_spectres_remake switch.data matches 1 run scoreboard players set #start_y_luxium_spectres_remake switch.data 1
execute if score #scan_luxium_spectres_remake switch.data matches 1 run scoreboard players set #start_z_luxium_spectres_remake switch.data 142001
execute if score #scan_luxium_spectres_remake switch.data matches 1 run scoreboard players set #end_x_luxium_spectres_remake switch.data 142105
execute if score #scan_luxium_spectres_remake switch.data matches 1 run scoreboard players set #end_y_luxium_spectres_remake switch.data 81
execute if score #scan_luxium_spectres_remake switch.data matches 1 run scoreboard players set #end_z_luxium_spectres_remake switch.data 142105
execute if score #scan_luxium_spectres_remake switch.data matches 1 run scoreboard players operation #curr_x_luxium_spectres_remake switch.data = #start_x_luxium_spectres_remake switch.data
execute if score #scan_luxium_spectres_remake switch.data matches 1 run scoreboard players operation #curr_y_luxium_spectres_remake switch.data = #start_y_luxium_spectres_remake switch.data
execute if score #scan_luxium_spectres_remake switch.data matches 1 run scoreboard players operation #curr_z_luxium_spectres_remake switch.data = #start_z_luxium_spectres_remake switch.data
execute if score #scan_luxium_spectres_remake switch.data matches 1 run data modify storage switch:doors luxium_spectres_remake set value []

execute if score #scan_luxium_spectres_remake switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_luxium_spectres_remake switch.data matches 30.. summon marker run function switch:maps/survival/luxium_spectres_remake/scan_doors_on_marker

execute if score #scan_luxium_spectres_remake switch.data matches 209 in minecraft:overworld run forceload remove 142000 142000 142021 142106
execute if score #scan_luxium_spectres_remake switch.data matches 209 in switch:game run forceload remove 142000 142000 142021 142106

execute if score #scan_luxium_spectres_remake switch.data matches 209 in minecraft:overworld run forceload remove 142021 142000 142042 142106
execute if score #scan_luxium_spectres_remake switch.data matches 209 in switch:game run forceload remove 142021 142000 142042 142106

execute if score #scan_luxium_spectres_remake switch.data matches 209 in minecraft:overworld run forceload remove 142042 142000 142064 142106
execute if score #scan_luxium_spectres_remake switch.data matches 209 in switch:game run forceload remove 142042 142000 142064 142106

execute if score #scan_luxium_spectres_remake switch.data matches 209 in minecraft:overworld run forceload remove 142064 142000 142085 142106
execute if score #scan_luxium_spectres_remake switch.data matches 209 in switch:game run forceload remove 142064 142000 142085 142106

execute if score #scan_luxium_spectres_remake switch.data matches 209 in minecraft:overworld run forceload remove 142085 142000 142106 142106
execute if score #scan_luxium_spectres_remake switch.data matches 209 in switch:game run forceload remove 142085 142000 142106 142106

execute if score #scan_luxium_spectres_remake switch.data matches 209 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"luxium_spectres_remake","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"10","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_luxium_spectres_remake switch.data matches 209 run data remove storage switch:maps to_scan.luxium_spectres_remake
execute if score #scan_luxium_spectres_remake switch.data matches 209 run scoreboard players reset #scan_luxium_spectres_remake switch.data

execute if score #scan_luxium_spectres_remake switch.data matches 1.. run schedule function switch:maps/survival/luxium_spectres_remake/scan_doors 1t

