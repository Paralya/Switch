
#> switch:maps/survival/baby_park/scan_doors
#
# @within	switch:maps/survival/baby_park/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_baby_park switch.data 1

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21000 21000 21015 21191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 21000 21000 21015 21191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21015 21000 21030 21191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 21015 21000 21030 21191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21030 21000 21045 21191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 21030 21000 21045 21191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21045 21000 21060 21191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 21045 21000 21060 21191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21060 21000 21075 21191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 21060 21000 21075 21191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21075 21000 21090 21191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 21075 21000 21090 21191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21090 21000 21105 21191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 21090 21000 21105 21191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21105 21000 21120 21191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 21105 21000 21120 21191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21120 21000 21135 21191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 21120 21000 21135 21191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21135 21000 21150 21191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 21135 21000 21150 21191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21150 21000 21165 21191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 21150 21000 21165 21191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21165 21000 21180 21191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 21165 21000 21180 21191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21180 21000 21195 21191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 21180 21000 21195 21191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21195 21000 21210 21191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 21195 21000 21210 21191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21210 21000 21225 21191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 21210 21000 21225 21191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21225 21000 21240 21191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 21225 21000 21240 21191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21240 21000 21255 21191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 21240 21000 21255 21191

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21255 21000 21270 21191
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 21255 21000 21270 21191

execute if score #scan_baby_park switch.data matches 1 run data modify storage switch:maps to_scan.baby_park set value 2b
execute if score #scan_baby_park switch.data matches 1 run scoreboard players set #start_x_baby_park switch.data 21001
execute if score #scan_baby_park switch.data matches 1 run scoreboard players set #start_y_baby_park switch.data 101
execute if score #scan_baby_park switch.data matches 1 run scoreboard players set #start_z_baby_park switch.data 21001
execute if score #scan_baby_park switch.data matches 1 run scoreboard players set #end_x_baby_park switch.data 21269
execute if score #scan_baby_park switch.data matches 1 run scoreboard players set #end_y_baby_park switch.data 194
execute if score #scan_baby_park switch.data matches 1 run scoreboard players set #end_z_baby_park switch.data 21190
execute if score #scan_baby_park switch.data matches 1 run scoreboard players operation #curr_x_baby_park switch.data = #start_x_baby_park switch.data
execute if score #scan_baby_park switch.data matches 1 run scoreboard players operation #curr_y_baby_park switch.data = #start_y_baby_park switch.data
execute if score #scan_baby_park switch.data matches 1 run scoreboard players operation #curr_z_baby_park switch.data = #start_z_baby_park switch.data
execute if score #scan_baby_park switch.data matches 1 run data modify storage switch:doors baby_park set value []

execute if score #scan_baby_park switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_baby_park switch.data matches 30.. summon marker run function switch:maps/survival/baby_park/scan_doors_on_marker

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 21000 21000 21015 21191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 21000 21000 21015 21191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 21015 21000 21030 21191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 21015 21000 21030 21191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 21030 21000 21045 21191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 21030 21000 21045 21191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 21045 21000 21060 21191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 21045 21000 21060 21191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 21060 21000 21075 21191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 21060 21000 21075 21191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 21075 21000 21090 21191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 21075 21000 21090 21191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 21090 21000 21105 21191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 21090 21000 21105 21191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 21105 21000 21120 21191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 21105 21000 21120 21191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 21120 21000 21135 21191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 21120 21000 21135 21191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 21135 21000 21150 21191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 21135 21000 21150 21191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 21150 21000 21165 21191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 21150 21000 21165 21191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 21165 21000 21180 21191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 21165 21000 21180 21191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 21180 21000 21195 21191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 21180 21000 21195 21191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 21195 21000 21210 21191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 21195 21000 21210 21191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 21210 21000 21225 21191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 21210 21000 21225 21191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 21225 21000 21240 21191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 21225 21000 21240 21191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 21240 21000 21255 21191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 21240 21000 21255 21191

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 21255 21000 21270 21191
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 21255 21000 21270 21191

execute if score #scan_baby_park switch.data matches 991 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"baby_park","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"49","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_baby_park switch.data matches 991 run data remove storage switch:maps to_scan.baby_park
execute if score #scan_baby_park switch.data matches 991 run scoreboard players reset #scan_baby_park switch.data

execute if score #scan_baby_park switch.data matches 1.. run schedule function switch:maps/survival/baby_park/scan_doors 1t

