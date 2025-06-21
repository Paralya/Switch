
#> switch:maps/survival/warden_escape_statue/scan_doors
#
# @within	switch:maps/survival/warden_escape_statue/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_warden_escape_statue switch.data 1

execute if score #scan_warden_escape_statue switch.data matches 1 in minecraft:overworld run forceload add 69000 69000 69025 69106
execute if score #scan_warden_escape_statue switch.data matches 1 in switch:game run forceload add 69000 69000 69025 69106

execute if score #scan_warden_escape_statue switch.data matches 1 in minecraft:overworld run forceload add 69025 69000 69049 69106
execute if score #scan_warden_escape_statue switch.data matches 1 in switch:game run forceload add 69025 69000 69049 69106

execute if score #scan_warden_escape_statue switch.data matches 1 in minecraft:overworld run forceload add 69049 69000 69074 69106
execute if score #scan_warden_escape_statue switch.data matches 1 in switch:game run forceload add 69049 69000 69074 69106

execute if score #scan_warden_escape_statue switch.data matches 1 in minecraft:overworld run forceload add 69074 69000 69099 69106
execute if score #scan_warden_escape_statue switch.data matches 1 in switch:game run forceload add 69074 69000 69099 69106

execute if score #scan_warden_escape_statue switch.data matches 1 in minecraft:overworld run forceload add 69099 69000 69123 69106
execute if score #scan_warden_escape_statue switch.data matches 1 in switch:game run forceload add 69099 69000 69123 69106

execute if score #scan_warden_escape_statue switch.data matches 1 in minecraft:overworld run forceload add 69123 69000 69148 69106
execute if score #scan_warden_escape_statue switch.data matches 1 in switch:game run forceload add 69123 69000 69148 69106

execute if score #scan_warden_escape_statue switch.data matches 1 run data modify storage switch:maps to_scan.warden_escape_statue set value 2b
execute if score #scan_warden_escape_statue switch.data matches 1 run scoreboard players set #start_x_warden_escape_statue switch.data 69001
execute if score #scan_warden_escape_statue switch.data matches 1 run scoreboard players set #start_y_warden_escape_statue switch.data -63
execute if score #scan_warden_escape_statue switch.data matches 1 run scoreboard players set #start_z_warden_escape_statue switch.data 69001
execute if score #scan_warden_escape_statue switch.data matches 1 run scoreboard players set #end_x_warden_escape_statue switch.data 69147
execute if score #scan_warden_escape_statue switch.data matches 1 run scoreboard players set #end_y_warden_escape_statue switch.data 59
execute if score #scan_warden_escape_statue switch.data matches 1 run scoreboard players set #end_z_warden_escape_statue switch.data 69105
execute if score #scan_warden_escape_statue switch.data matches 1 run scoreboard players operation #curr_x_warden_escape_statue switch.data = #start_x_warden_escape_statue switch.data
execute if score #scan_warden_escape_statue switch.data matches 1 run scoreboard players operation #curr_y_warden_escape_statue switch.data = #start_y_warden_escape_statue switch.data
execute if score #scan_warden_escape_statue switch.data matches 1 run scoreboard players operation #curr_z_warden_escape_statue switch.data = #start_z_warden_escape_statue switch.data
execute if score #scan_warden_escape_statue switch.data matches 1 run data modify storage switch:doors warden_escape_statue set value []

execute if score #scan_warden_escape_statue switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_warden_escape_statue switch.data matches 30.. summon marker run function switch:maps/survival/warden_escape_statue/scan_doors_on_marker

execute if score #scan_warden_escape_statue switch.data matches 410 in minecraft:overworld run forceload remove 69000 69000 69025 69106
execute if score #scan_warden_escape_statue switch.data matches 410 in switch:game run forceload remove 69000 69000 69025 69106

execute if score #scan_warden_escape_statue switch.data matches 410 in minecraft:overworld run forceload remove 69025 69000 69049 69106
execute if score #scan_warden_escape_statue switch.data matches 410 in switch:game run forceload remove 69025 69000 69049 69106

execute if score #scan_warden_escape_statue switch.data matches 410 in minecraft:overworld run forceload remove 69049 69000 69074 69106
execute if score #scan_warden_escape_statue switch.data matches 410 in switch:game run forceload remove 69049 69000 69074 69106

execute if score #scan_warden_escape_statue switch.data matches 410 in minecraft:overworld run forceload remove 69074 69000 69099 69106
execute if score #scan_warden_escape_statue switch.data matches 410 in switch:game run forceload remove 69074 69000 69099 69106

execute if score #scan_warden_escape_statue switch.data matches 410 in minecraft:overworld run forceload remove 69099 69000 69123 69106
execute if score #scan_warden_escape_statue switch.data matches 410 in switch:game run forceload remove 69099 69000 69123 69106

execute if score #scan_warden_escape_statue switch.data matches 410 in minecraft:overworld run forceload remove 69123 69000 69148 69106
execute if score #scan_warden_escape_statue switch.data matches 410 in switch:game run forceload remove 69123 69000 69148 69106

execute if score #scan_warden_escape_statue switch.data matches 410 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"warden_escape_statue","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"20","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_warden_escape_statue switch.data matches 410 run data remove storage switch:maps to_scan.warden_escape_statue
execute if score #scan_warden_escape_statue switch.data matches 410 run scoreboard players reset #scan_warden_escape_statue switch.data

execute if score #scan_warden_escape_statue switch.data matches 1.. run schedule function switch:maps/survival/warden_escape_statue/scan_doors 1t

