
#> switch:maps/survival/mushroom_plains/regenerate
#
# @within	switch:maps/survival/mushroom_plains/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_mushroom_plains switch.data 1
execute if score #rg_mushroom_plains switch.data matches 1 run data modify storage switch:maps to_regenerate.mushroom_plains set value 2b
execute if score #rg_mushroom_plains switch.data matches 1 in minecraft:overworld run forceload add -2000 -4000 -1980 -3878
execute if score #rg_mushroom_plains switch.data matches 1 in switch:game run forceload add -2000 -4000 -1980 -3878
execute if score #rg_mushroom_plains switch.data matches 1 in minecraft:overworld run forceload add -1980 -4000 -1959 -3878
execute if score #rg_mushroom_plains switch.data matches 1 in switch:game run forceload add -1980 -4000 -1959 -3878
execute if score #rg_mushroom_plains switch.data matches 1 in minecraft:overworld run forceload add -1959 -4000 -1939 -3878
execute if score #rg_mushroom_plains switch.data matches 1 in switch:game run forceload add -1959 -4000 -1939 -3878
execute if score #rg_mushroom_plains switch.data matches 1 in minecraft:overworld run forceload add -1939 -4000 -1919 -3878
execute if score #rg_mushroom_plains switch.data matches 1 in switch:game run forceload add -1939 -4000 -1919 -3878
execute if score #rg_mushroom_plains switch.data matches 1 in minecraft:overworld run forceload add -1919 -4000 -1898 -3878
execute if score #rg_mushroom_plains switch.data matches 1 in switch:game run forceload add -1919 -4000 -1898 -3878
execute if score #rg_mushroom_plains switch.data matches 1 in minecraft:overworld run forceload add -1898 -4000 -1878 -3878
execute if score #rg_mushroom_plains switch.data matches 1 in switch:game run forceload add -1898 -4000 -1878 -3878

execute if score #rg_mushroom_plains switch.data matches 1 run scoreboard players set #rg_mushroom_plains_y switch.data 100
execute if score #rg_mushroom_plains switch.data matches 1 run scoreboard players set #rg_mushroom_plains_mod switch.data 0
execute if score #rg_mushroom_plains switch.data matches ..312 summon marker run function switch:maps/survival/mushroom_plains/regeneration_on_marker

execute if score #rg_mushroom_plains switch.data matches 313.. in switch:game run kill @e[type=item,x=-1939,y=100,z=-3939,distance=..1000]
execute if score #rg_mushroom_plains switch.data matches 313.. run data remove storage switch:maps to_regenerate.mushroom_plains

execute if score #rg_mushroom_plains switch.data matches 313.. in minecraft:overworld run forceload remove -2000 -4000 -1980 -3878
execute if score #rg_mushroom_plains switch.data matches 313.. in switch:game run forceload remove -2000 -4000 -1980 -3878
execute if score #rg_mushroom_plains switch.data matches 313.. in minecraft:overworld run forceload remove -1980 -4000 -1959 -3878
execute if score #rg_mushroom_plains switch.data matches 313.. in switch:game run forceload remove -1980 -4000 -1959 -3878
execute if score #rg_mushroom_plains switch.data matches 313.. in minecraft:overworld run forceload remove -1959 -4000 -1939 -3878
execute if score #rg_mushroom_plains switch.data matches 313.. in switch:game run forceload remove -1959 -4000 -1939 -3878
execute if score #rg_mushroom_plains switch.data matches 313.. in minecraft:overworld run forceload remove -1939 -4000 -1919 -3878
execute if score #rg_mushroom_plains switch.data matches 313.. in switch:game run forceload remove -1939 -4000 -1919 -3878
execute if score #rg_mushroom_plains switch.data matches 313.. in minecraft:overworld run forceload remove -1919 -4000 -1898 -3878
execute if score #rg_mushroom_plains switch.data matches 313.. in switch:game run forceload remove -1919 -4000 -1898 -3878
execute if score #rg_mushroom_plains switch.data matches 313.. in minecraft:overworld run forceload remove -1898 -4000 -1878 -3878
execute if score #rg_mushroom_plains switch.data matches 313.. in switch:game run forceload remove -1898 -4000 -1878 -3878

execute if score #rg_mushroom_plains switch.data matches 313.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Mushroom Plains","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"15","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_mushroom_plains switch.data matches 313.. run function switch:engine/log_message/apply {message:"Map `Mushroom Plains` just regenerated!"}

execute if score #rg_mushroom_plains switch.data matches 313.. in switch:game run function switch:maps/regenerate_doors_macro {name:"mushroom_plains"}
execute if score #rg_mushroom_plains switch.data matches 313.. run scoreboard players reset #rg_mushroom_plains switch.data
execute if score #rg_mushroom_plains switch.data matches 1.. run schedule function switch:maps/survival/mushroom_plains/regenerate 1t

