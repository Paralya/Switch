
#> switch:maps/survival/lightium_spawn/regenerate
#
# @within	switch:maps/survival/lightium_spawn/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_lightium_spawn switch.data 1
execute if score #rg_lightium_spawn switch.data matches 1 run data modify storage switch:maps to_regenerate.lightium_spawn set value 2b
execute if score #rg_lightium_spawn switch.data matches 1 in minecraft:overworld run forceload add 97000 97000 97018 97129
execute if score #rg_lightium_spawn switch.data matches 1 in switch:game run forceload add 97000 97000 97018 97129
execute if score #rg_lightium_spawn switch.data matches 1 in minecraft:overworld run forceload add 97018 97000 97037 97129
execute if score #rg_lightium_spawn switch.data matches 1 in switch:game run forceload add 97018 97000 97037 97129
execute if score #rg_lightium_spawn switch.data matches 1 in minecraft:overworld run forceload add 97037 97000 97055 97129
execute if score #rg_lightium_spawn switch.data matches 1 in switch:game run forceload add 97037 97000 97055 97129
execute if score #rg_lightium_spawn switch.data matches 1 in minecraft:overworld run forceload add 97055 97000 97074 97129
execute if score #rg_lightium_spawn switch.data matches 1 in switch:game run forceload add 97055 97000 97074 97129
execute if score #rg_lightium_spawn switch.data matches 1 in minecraft:overworld run forceload add 97074 97000 97092 97129
execute if score #rg_lightium_spawn switch.data matches 1 in switch:game run forceload add 97074 97000 97092 97129
execute if score #rg_lightium_spawn switch.data matches 1 in minecraft:overworld run forceload add 97092 97000 97111 97129
execute if score #rg_lightium_spawn switch.data matches 1 in switch:game run forceload add 97092 97000 97111 97129
execute if score #rg_lightium_spawn switch.data matches 1 in minecraft:overworld run forceload add 97111 97000 97129 97129
execute if score #rg_lightium_spawn switch.data matches 1 in switch:game run forceload add 97111 97000 97129 97129

execute if score #rg_lightium_spawn switch.data matches 1 run scoreboard players set #rg_lightium_spawn_y switch.data 100
execute if score #rg_lightium_spawn switch.data matches 1 run scoreboard players set #rg_lightium_spawn_mod switch.data 0
execute if score #rg_lightium_spawn switch.data matches ..308 summon marker run function switch:maps/survival/lightium_spawn/regeneration_on_marker

execute if score #rg_lightium_spawn switch.data matches 309.. in switch:game run kill @e[type=item,x=97064,y=100,z=97064,distance=..1000]
execute if score #rg_lightium_spawn switch.data matches 309.. run data remove storage switch:maps to_regenerate.lightium_spawn

execute if score #rg_lightium_spawn switch.data matches 309.. in minecraft:overworld run forceload remove 97000 97000 97018 97129
execute if score #rg_lightium_spawn switch.data matches 309.. in switch:game run forceload remove 97000 97000 97018 97129
execute if score #rg_lightium_spawn switch.data matches 309.. in minecraft:overworld run forceload remove 97018 97000 97037 97129
execute if score #rg_lightium_spawn switch.data matches 309.. in switch:game run forceload remove 97018 97000 97037 97129
execute if score #rg_lightium_spawn switch.data matches 309.. in minecraft:overworld run forceload remove 97037 97000 97055 97129
execute if score #rg_lightium_spawn switch.data matches 309.. in switch:game run forceload remove 97037 97000 97055 97129
execute if score #rg_lightium_spawn switch.data matches 309.. in minecraft:overworld run forceload remove 97055 97000 97074 97129
execute if score #rg_lightium_spawn switch.data matches 309.. in switch:game run forceload remove 97055 97000 97074 97129
execute if score #rg_lightium_spawn switch.data matches 309.. in minecraft:overworld run forceload remove 97074 97000 97092 97129
execute if score #rg_lightium_spawn switch.data matches 309.. in switch:game run forceload remove 97074 97000 97092 97129
execute if score #rg_lightium_spawn switch.data matches 309.. in minecraft:overworld run forceload remove 97092 97000 97111 97129
execute if score #rg_lightium_spawn switch.data matches 309.. in switch:game run forceload remove 97092 97000 97111 97129
execute if score #rg_lightium_spawn switch.data matches 309.. in minecraft:overworld run forceload remove 97111 97000 97129 97129
execute if score #rg_lightium_spawn switch.data matches 309.. in switch:game run forceload remove 97111 97000 97129 97129

execute if score #rg_lightium_spawn switch.data matches 309.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Lightium Spawn","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"15","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_lightium_spawn switch.data matches 309.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Lightium Spawn` just regenerated!"}'
execute if score #rg_lightium_spawn switch.data matches 309.. run function switch:engine/log_message/apply

execute if score #rg_lightium_spawn switch.data matches 309.. in switch:game run function switch:maps/regenerate_doors_macro {name:"lightium_spawn"}
execute if score #rg_lightium_spawn switch.data matches 309.. run scoreboard players reset #rg_lightium_spawn switch.data
execute if score #rg_lightium_spawn switch.data matches 1.. run schedule function switch:maps/survival/lightium_spawn/regenerate 1t

