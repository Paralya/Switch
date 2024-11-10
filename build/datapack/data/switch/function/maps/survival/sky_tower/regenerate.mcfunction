
#> switch:maps/survival/sky_tower/regenerate
#
# @within	switch:maps/survival/sky_tower/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_sky_tower switch.data 1
execute if score #rg_sky_tower switch.data matches 1 run data modify storage switch:maps to_regenerate.sky_tower set value 2b
execute if score #rg_sky_tower switch.data matches 1 in minecraft:overworld run forceload add 80000 80000 80018 80142
execute if score #rg_sky_tower switch.data matches 1 in switch:game run forceload add 80000 80000 80018 80142
execute if score #rg_sky_tower switch.data matches 1 in minecraft:overworld run forceload add 80018 80000 80036 80142
execute if score #rg_sky_tower switch.data matches 1 in switch:game run forceload add 80018 80000 80036 80142
execute if score #rg_sky_tower switch.data matches 1 in minecraft:overworld run forceload add 80036 80000 80053 80142
execute if score #rg_sky_tower switch.data matches 1 in switch:game run forceload add 80036 80000 80053 80142
execute if score #rg_sky_tower switch.data matches 1 in minecraft:overworld run forceload add 80053 80000 80071 80142
execute if score #rg_sky_tower switch.data matches 1 in switch:game run forceload add 80053 80000 80071 80142
execute if score #rg_sky_tower switch.data matches 1 in minecraft:overworld run forceload add 80071 80000 80089 80142
execute if score #rg_sky_tower switch.data matches 1 in switch:game run forceload add 80071 80000 80089 80142
execute if score #rg_sky_tower switch.data matches 1 in minecraft:overworld run forceload add 80089 80000 80106 80142
execute if score #rg_sky_tower switch.data matches 1 in switch:game run forceload add 80089 80000 80106 80142
execute if score #rg_sky_tower switch.data matches 1 in minecraft:overworld run forceload add 80106 80000 80124 80142
execute if score #rg_sky_tower switch.data matches 1 in switch:game run forceload add 80106 80000 80124 80142
execute if score #rg_sky_tower switch.data matches 1 in minecraft:overworld run forceload add 80124 80000 80142 80142
execute if score #rg_sky_tower switch.data matches 1 in switch:game run forceload add 80124 80000 80142 80142

execute if score #rg_sky_tower switch.data matches 1 run scoreboard players set #rg_sky_tower_y switch.data -64
execute if score #rg_sky_tower switch.data matches 1 run scoreboard players set #rg_sky_tower_mod switch.data 0
execute if score #rg_sky_tower switch.data matches ..520 summon marker run function switch:maps/survival/sky_tower/regeneration_on_marker

execute if score #rg_sky_tower switch.data matches 521.. in switch:game run kill @e[type=item,x=80071,y=-64,z=80071,distance=..1000]
execute if score #rg_sky_tower switch.data matches 521.. run data remove storage switch:maps to_regenerate.sky_tower

execute if score #rg_sky_tower switch.data matches 521.. in minecraft:overworld run forceload remove 80000 80000 80018 80142
execute if score #rg_sky_tower switch.data matches 521.. in switch:game run forceload remove 80000 80000 80018 80142

execute if score #rg_sky_tower switch.data matches 521.. in minecraft:overworld run forceload remove 80018 80000 80036 80142
execute if score #rg_sky_tower switch.data matches 521.. in switch:game run forceload remove 80018 80000 80036 80142

execute if score #rg_sky_tower switch.data matches 521.. in minecraft:overworld run forceload remove 80036 80000 80053 80142
execute if score #rg_sky_tower switch.data matches 521.. in switch:game run forceload remove 80036 80000 80053 80142

execute if score #rg_sky_tower switch.data matches 521.. in minecraft:overworld run forceload remove 80053 80000 80071 80142
execute if score #rg_sky_tower switch.data matches 521.. in switch:game run forceload remove 80053 80000 80071 80142

execute if score #rg_sky_tower switch.data matches 521.. in minecraft:overworld run forceload remove 80071 80000 80089 80142
execute if score #rg_sky_tower switch.data matches 521.. in switch:game run forceload remove 80071 80000 80089 80142

execute if score #rg_sky_tower switch.data matches 521.. in minecraft:overworld run forceload remove 80089 80000 80106 80142
execute if score #rg_sky_tower switch.data matches 521.. in switch:game run forceload remove 80089 80000 80106 80142

execute if score #rg_sky_tower switch.data matches 521.. in minecraft:overworld run forceload remove 80106 80000 80124 80142
execute if score #rg_sky_tower switch.data matches 521.. in switch:game run forceload remove 80106 80000 80124 80142

execute if score #rg_sky_tower switch.data matches 521.. in minecraft:overworld run forceload remove 80124 80000 80142 80142
execute if score #rg_sky_tower switch.data matches 521.. in switch:game run forceload remove 80124 80000 80142 80142

execute if score #rg_sky_tower switch.data matches 521.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"sky_tower","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"26","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_sky_tower switch.data matches 521.. run data modify storage switch:main MessageToLog set value '{"text":"Map `sky_tower` just regenerated!"}'
execute if score #rg_sky_tower switch.data matches 521.. run function switch:engine/log_message/apply

execute if score #rg_sky_tower switch.data matches 521.. in switch:game run function switch:maps/regenerate_doors_macro {name:"sky_tower"}
execute if score #rg_sky_tower switch.data matches 521.. run scoreboard players reset #rg_sky_tower switch.data
execute if score #rg_sky_tower switch.data matches 1.. run schedule function switch:maps/survival/sky_tower/regenerate 1t

