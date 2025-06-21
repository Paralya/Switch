
#> switch:maps/survival/luxio_fish_fight/scan_doors
#
# @within	switch:maps/survival/luxio_fish_fight/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_luxio_fish_fight switch.data 1

execute if score #scan_luxio_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 151000 151000 151028 151055
execute if score #scan_luxio_fish_fight switch.data matches 1 in switch:game run forceload add 151000 151000 151028 151055

execute if score #scan_luxio_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 151028 151000 151056 151055
execute if score #scan_luxio_fish_fight switch.data matches 1 in switch:game run forceload add 151028 151000 151056 151055

execute if score #scan_luxio_fish_fight switch.data matches 1 run data modify storage switch:maps to_scan.luxio_fish_fight set value 2b
execute if score #scan_luxio_fish_fight switch.data matches 1 run scoreboard players set #start_x_luxio_fish_fight switch.data 151001
execute if score #scan_luxio_fish_fight switch.data matches 1 run scoreboard players set #start_y_luxio_fish_fight switch.data 1
execute if score #scan_luxio_fish_fight switch.data matches 1 run scoreboard players set #start_z_luxio_fish_fight switch.data 151001
execute if score #scan_luxio_fish_fight switch.data matches 1 run scoreboard players set #end_x_luxio_fish_fight switch.data 151055
execute if score #scan_luxio_fish_fight switch.data matches 1 run scoreboard players set #end_y_luxio_fish_fight switch.data 35
execute if score #scan_luxio_fish_fight switch.data matches 1 run scoreboard players set #end_z_luxio_fish_fight switch.data 151054
execute if score #scan_luxio_fish_fight switch.data matches 1 run scoreboard players operation #curr_x_luxio_fish_fight switch.data = #start_x_luxio_fish_fight switch.data
execute if score #scan_luxio_fish_fight switch.data matches 1 run scoreboard players operation #curr_y_luxio_fish_fight switch.data = #start_y_luxio_fish_fight switch.data
execute if score #scan_luxio_fish_fight switch.data matches 1 run scoreboard players operation #curr_z_luxio_fish_fight switch.data = #start_z_luxio_fish_fight switch.data
execute if score #scan_luxio_fish_fight switch.data matches 1 run data modify storage switch:doors luxio_fish_fight set value []

execute if score #scan_luxio_fish_fight switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_luxio_fish_fight switch.data matches 30.. summon marker run function switch:maps/survival/luxio_fish_fight/scan_doors_on_marker

execute if score #scan_luxio_fish_fight switch.data matches 51 in minecraft:overworld run forceload remove 151000 151000 151028 151055
execute if score #scan_luxio_fish_fight switch.data matches 51 in switch:game run forceload remove 151000 151000 151028 151055

execute if score #scan_luxio_fish_fight switch.data matches 51 in minecraft:overworld run forceload remove 151028 151000 151056 151055
execute if score #scan_luxio_fish_fight switch.data matches 51 in switch:game run forceload remove 151028 151000 151056 151055

execute if score #scan_luxio_fish_fight switch.data matches 51 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"luxio_fish_fight","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"2","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_luxio_fish_fight switch.data matches 51 run data remove storage switch:maps to_scan.luxio_fish_fight
execute if score #scan_luxio_fish_fight switch.data matches 51 run scoreboard players reset #scan_luxio_fish_fight switch.data

execute if score #scan_luxio_fish_fight switch.data matches 1.. run schedule function switch:maps/survival/luxio_fish_fight/scan_doors 1t

