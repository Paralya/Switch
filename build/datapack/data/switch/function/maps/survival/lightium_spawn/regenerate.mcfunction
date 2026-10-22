
#> switch:maps/survival/lightium_spawn/regenerate
#
# @within	switch:maps/survival/lightium_spawn/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_lightium_spawn switch.data 1
execute if score #rg_lightium_spawn switch.data matches 1 run data modify storage switch:maps to_regenerate.lightium_spawn set value 2b
execute if score #rg_lightium_spawn switch.data matches 1 in minecraft:overworld run forceload add -10000 -2000 -9982 -1871
execute if score #rg_lightium_spawn switch.data matches 1 in switch:game run forceload add -10000 -2000 -9982 -1871
execute if score #rg_lightium_spawn switch.data matches 1 in minecraft:overworld run forceload add -9982 -2000 -9963 -1871
execute if score #rg_lightium_spawn switch.data matches 1 in switch:game run forceload add -9982 -2000 -9963 -1871
execute if score #rg_lightium_spawn switch.data matches 1 in minecraft:overworld run forceload add -9963 -2000 -9945 -1871
execute if score #rg_lightium_spawn switch.data matches 1 in switch:game run forceload add -9963 -2000 -9945 -1871
execute if score #rg_lightium_spawn switch.data matches 1 in minecraft:overworld run forceload add -9945 -2000 -9926 -1871
execute if score #rg_lightium_spawn switch.data matches 1 in switch:game run forceload add -9945 -2000 -9926 -1871
execute if score #rg_lightium_spawn switch.data matches 1 in minecraft:overworld run forceload add -9926 -2000 -9908 -1871
execute if score #rg_lightium_spawn switch.data matches 1 in switch:game run forceload add -9926 -2000 -9908 -1871
execute if score #rg_lightium_spawn switch.data matches 1 in minecraft:overworld run forceload add -9908 -2000 -9889 -1871
execute if score #rg_lightium_spawn switch.data matches 1 in switch:game run forceload add -9908 -2000 -9889 -1871
execute if score #rg_lightium_spawn switch.data matches 1 in minecraft:overworld run forceload add -9889 -2000 -9871 -1871
execute if score #rg_lightium_spawn switch.data matches 1 in switch:game run forceload add -9889 -2000 -9871 -1871

execute if score #rg_lightium_spawn switch.data matches 1 run scoreboard players set #rg_lightium_spawn_y switch.data 100
execute if score #rg_lightium_spawn switch.data matches 1 run scoreboard players set #rg_lightium_spawn_mod switch.data 0
execute if score #rg_lightium_spawn switch.data matches ..308 summon marker run function switch:maps/survival/lightium_spawn/regeneration_on_marker

execute if score #rg_lightium_spawn switch.data matches 309.. in switch:game run kill @e[type=item,x=-9935,y=100,z=-1935,distance=..1000]
execute if score #rg_lightium_spawn switch.data matches 309.. run data remove storage switch:maps to_regenerate.lightium_spawn

execute if score #rg_lightium_spawn switch.data matches 309.. in minecraft:overworld run forceload remove -10000 -2000 -9982 -1871
execute if score #rg_lightium_spawn switch.data matches 309.. in switch:game run forceload remove -10000 -2000 -9982 -1871
execute if score #rg_lightium_spawn switch.data matches 309.. in minecraft:overworld run forceload remove -9982 -2000 -9963 -1871
execute if score #rg_lightium_spawn switch.data matches 309.. in switch:game run forceload remove -9982 -2000 -9963 -1871
execute if score #rg_lightium_spawn switch.data matches 309.. in minecraft:overworld run forceload remove -9963 -2000 -9945 -1871
execute if score #rg_lightium_spawn switch.data matches 309.. in switch:game run forceload remove -9963 -2000 -9945 -1871
execute if score #rg_lightium_spawn switch.data matches 309.. in minecraft:overworld run forceload remove -9945 -2000 -9926 -1871
execute if score #rg_lightium_spawn switch.data matches 309.. in switch:game run forceload remove -9945 -2000 -9926 -1871
execute if score #rg_lightium_spawn switch.data matches 309.. in minecraft:overworld run forceload remove -9926 -2000 -9908 -1871
execute if score #rg_lightium_spawn switch.data matches 309.. in switch:game run forceload remove -9926 -2000 -9908 -1871
execute if score #rg_lightium_spawn switch.data matches 309.. in minecraft:overworld run forceload remove -9908 -2000 -9889 -1871
execute if score #rg_lightium_spawn switch.data matches 309.. in switch:game run forceload remove -9908 -2000 -9889 -1871
execute if score #rg_lightium_spawn switch.data matches 309.. in minecraft:overworld run forceload remove -9889 -2000 -9871 -1871
execute if score #rg_lightium_spawn switch.data matches 309.. in switch:game run forceload remove -9889 -2000 -9871 -1871

execute if score #rg_lightium_spawn switch.data matches 309.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Lightium Spawn","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"15","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_lightium_spawn switch.data matches 309.. run function switch:engine/log_message/apply {message:"Map `Lightium Spawn` just regenerated!"}

execute if score #rg_lightium_spawn switch.data matches 309.. run scoreboard players reset #rg_lightium_spawn switch.data
execute if score #rg_lightium_spawn switch.data matches 1.. run schedule function switch:maps/survival/lightium_spawn/regenerate 1t

