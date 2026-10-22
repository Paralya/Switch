
#> switch:maps/survival/torg_arena/regenerate
#
# @within	switch:maps/survival/torg_arena/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_torg_arena switch.data 1
execute if score #rg_torg_arena switch.data matches 1 run data modify storage switch:maps to_regenerate.torg_arena set value 2b
execute if score #rg_torg_arena switch.data matches 1 in minecraft:overworld run forceload add 8000 8000 8020 8100
execute if score #rg_torg_arena switch.data matches 1 in switch:game run forceload add 8000 8000 8020 8100
execute if score #rg_torg_arena switch.data matches 1 in minecraft:overworld run forceload add 8020 8000 8040 8100
execute if score #rg_torg_arena switch.data matches 1 in switch:game run forceload add 8020 8000 8040 8100
execute if score #rg_torg_arena switch.data matches 1 in minecraft:overworld run forceload add 8040 8000 8060 8100
execute if score #rg_torg_arena switch.data matches 1 in switch:game run forceload add 8040 8000 8060 8100
execute if score #rg_torg_arena switch.data matches 1 in minecraft:overworld run forceload add 8060 8000 8080 8100
execute if score #rg_torg_arena switch.data matches 1 in switch:game run forceload add 8060 8000 8080 8100
execute if score #rg_torg_arena switch.data matches 1 in minecraft:overworld run forceload add 8080 8000 8100 8100
execute if score #rg_torg_arena switch.data matches 1 in switch:game run forceload add 8080 8000 8100 8100

execute if score #rg_torg_arena switch.data matches 1 run scoreboard players set #rg_torg_arena_y switch.data 100
execute if score #rg_torg_arena switch.data matches 1 run scoreboard players set #rg_torg_arena_mod switch.data 0
execute if score #rg_torg_arena switch.data matches ..135 summon marker run function switch:maps/survival/torg_arena/regeneration_on_marker

execute if score #rg_torg_arena switch.data matches 136.. in switch:game run kill @e[type=item,x=8050,y=100,z=8050,distance=..1000]
execute if score #rg_torg_arena switch.data matches 136.. run data remove storage switch:maps to_regenerate.torg_arena

execute if score #rg_torg_arena switch.data matches 136.. in minecraft:overworld run forceload remove 8000 8000 8020 8100
execute if score #rg_torg_arena switch.data matches 136.. in switch:game run forceload remove 8000 8000 8020 8100
execute if score #rg_torg_arena switch.data matches 136.. in minecraft:overworld run forceload remove 8020 8000 8040 8100
execute if score #rg_torg_arena switch.data matches 136.. in switch:game run forceload remove 8020 8000 8040 8100
execute if score #rg_torg_arena switch.data matches 136.. in minecraft:overworld run forceload remove 8040 8000 8060 8100
execute if score #rg_torg_arena switch.data matches 136.. in switch:game run forceload remove 8040 8000 8060 8100
execute if score #rg_torg_arena switch.data matches 136.. in minecraft:overworld run forceload remove 8060 8000 8080 8100
execute if score #rg_torg_arena switch.data matches 136.. in switch:game run forceload remove 8060 8000 8080 8100
execute if score #rg_torg_arena switch.data matches 136.. in minecraft:overworld run forceload remove 8080 8000 8100 8100
execute if score #rg_torg_arena switch.data matches 136.. in switch:game run forceload remove 8080 8000 8100 8100

execute if score #rg_torg_arena switch.data matches 136.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Torg Arena","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"6","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_torg_arena switch.data matches 136.. run function switch:engine/log_message/apply {message:"Map `Torg Arena` just regenerated!"}

execute if score #rg_torg_arena switch.data matches 136.. run scoreboard players reset #rg_torg_arena switch.data
execute if score #rg_torg_arena switch.data matches 1.. run schedule function switch:maps/survival/torg_arena/regenerate 1t

