
#> switch:maps/survival/baby_park/scan_doors
#
# @within	switch:maps/survival/baby_park/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_baby_park switch.data 1

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 20862 20908 20877 21099
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 20862 20908 20877 21099

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 20877 20908 20892 21099
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 20877 20908 20892 21099

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 20892 20908 20907 21099
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 20892 20908 20907 21099

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 20907 20908 20922 21099
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 20907 20908 20922 21099

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 20922 20908 20937 21099
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 20922 20908 20937 21099

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 20937 20908 20952 21099
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 20937 20908 20952 21099

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 20952 20908 20967 21099
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 20952 20908 20967 21099

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 20967 20908 20982 21099
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 20967 20908 20982 21099

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 20982 20908 20997 21099
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 20982 20908 20997 21099

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 20997 20908 21012 21099
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 20997 20908 21012 21099

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21012 20908 21027 21099
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 21012 20908 21027 21099

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21027 20908 21042 21099
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 21027 20908 21042 21099

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21042 20908 21057 21099
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 21042 20908 21057 21099

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21057 20908 21072 21099
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 21057 20908 21072 21099

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21072 20908 21087 21099
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 21072 20908 21087 21099

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21087 20908 21102 21099
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 21087 20908 21102 21099

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21102 20908 21117 21099
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 21102 20908 21117 21099

execute if score #scan_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21117 20908 21132 21099
execute if score #scan_baby_park switch.data matches 1 in switch:game run forceload add 21117 20908 21132 21099

execute if score #scan_baby_park switch.data matches 1 run data modify storage switch:maps to_scan.baby_park set value 2b
execute if score #scan_baby_park switch.data matches 1 run scoreboard players set #start_x_baby_park switch.data 20863
execute if score #scan_baby_park switch.data matches 1 run scoreboard players set #start_y_baby_park switch.data 1
execute if score #scan_baby_park switch.data matches 1 run scoreboard players set #start_z_baby_park switch.data 20909
execute if score #scan_baby_park switch.data matches 1 run scoreboard players set #end_x_baby_park switch.data 21131
execute if score #scan_baby_park switch.data matches 1 run scoreboard players set #end_y_baby_park switch.data 94
execute if score #scan_baby_park switch.data matches 1 run scoreboard players set #end_z_baby_park switch.data 21098
execute if score #scan_baby_park switch.data matches 1 run scoreboard players operation #curr_x_baby_park switch.data = #start_x_baby_park switch.data
execute if score #scan_baby_park switch.data matches 1 run scoreboard players operation #curr_y_baby_park switch.data = #start_y_baby_park switch.data
execute if score #scan_baby_park switch.data matches 1 run scoreboard players operation #curr_z_baby_park switch.data = #start_z_baby_park switch.data
execute if score #scan_baby_park switch.data matches 1 run data modify storage switch:doors baby_park set value []


execute if score #scan_baby_park switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_baby_park switch.data matches 30.. summon marker run function switch:maps/survival/baby_park/scan_doors_on_marker

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 20862 20908 20877 21099
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 20862 20908 20877 21099

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 20877 20908 20892 21099
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 20877 20908 20892 21099

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 20892 20908 20907 21099
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 20892 20908 20907 21099

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 20907 20908 20922 21099
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 20907 20908 20922 21099

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 20922 20908 20937 21099
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 20922 20908 20937 21099

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 20937 20908 20952 21099
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 20937 20908 20952 21099

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 20952 20908 20967 21099
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 20952 20908 20967 21099

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 20967 20908 20982 21099
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 20967 20908 20982 21099

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 20982 20908 20997 21099
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 20982 20908 20997 21099

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 20997 20908 21012 21099
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 20997 20908 21012 21099

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 21012 20908 21027 21099
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 21012 20908 21027 21099

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 21027 20908 21042 21099
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 21027 20908 21042 21099

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 21042 20908 21057 21099
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 21042 20908 21057 21099

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 21057 20908 21072 21099
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 21057 20908 21072 21099

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 21072 20908 21087 21099
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 21072 20908 21087 21099

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 21087 20908 21102 21099
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 21087 20908 21102 21099

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 21102 20908 21117 21099
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 21102 20908 21117 21099

execute if score #scan_baby_park switch.data matches 991 in minecraft:overworld run forceload remove 21117 20908 21132 21099
execute if score #scan_baby_park switch.data matches 991 in switch:game run forceload remove 21117 20908 21132 21099

execute if score #scan_baby_park switch.data matches 991 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"baby_park","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"49","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_baby_park switch.data matches 991 run data remove storage switch:maps to_scan.baby_park
execute if score #scan_baby_park switch.data matches 991 run scoreboard players reset #scan_baby_park switch.data

execute if score #scan_baby_park switch.data matches 1.. run schedule function switch:maps/survival/baby_park/scan_doors 1t

