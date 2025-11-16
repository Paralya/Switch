
#> switch:maps/survival/gg_grass_3/regenerate
#
# @within	switch:maps/survival/gg_grass_3/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_gg_grass_3 switch.data 1
execute if score #rg_gg_grass_3 switch.data matches 1 run data modify storage switch:maps to_regenerate.gg_grass_3 set value 2b
execute if score #rg_gg_grass_3 switch.data matches 1 in minecraft:overworld run forceload add 124124 124093 124144 124138
execute if score #rg_gg_grass_3 switch.data matches 1 in switch:game run forceload add 124124 124093 124144 124138
execute if score #rg_gg_grass_3 switch.data matches 1 in minecraft:overworld run forceload add 124144 124093 124164 124138
execute if score #rg_gg_grass_3 switch.data matches 1 in switch:game run forceload add 124144 124093 124164 124138

execute if score #rg_gg_grass_3 switch.data matches 1 run scoreboard players set #rg_gg_grass_3_y switch.data 84
execute if score #rg_gg_grass_3 switch.data matches 1 run scoreboard players set #rg_gg_grass_3_mod switch.data 0
execute if score #rg_gg_grass_3 switch.data matches ..106 summon marker run function switch:maps/survival/gg_grass_3/regeneration_on_marker

execute if score #rg_gg_grass_3 switch.data matches 107.. in switch:game run kill @e[type=item,x=124144,y=84,z=124115,distance=..1000]
execute if score #rg_gg_grass_3 switch.data matches 107.. run data remove storage switch:maps to_regenerate.gg_grass_3

execute if score #rg_gg_grass_3 switch.data matches 107.. in minecraft:overworld run forceload remove 124124 124093 124144 124138
execute if score #rg_gg_grass_3 switch.data matches 107.. in switch:game run forceload remove 124124 124093 124144 124138
execute if score #rg_gg_grass_3 switch.data matches 107.. in minecraft:overworld run forceload remove 124144 124093 124164 124138
execute if score #rg_gg_grass_3 switch.data matches 107.. in switch:game run forceload remove 124144 124093 124164 124138

execute if score #rg_gg_grass_3 switch.data matches 107.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Cavy Grass","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"5","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_gg_grass_3 switch.data matches 107.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Cavy Grass` just regenerated!"}'
execute if score #rg_gg_grass_3 switch.data matches 107.. run function switch:engine/log_message/apply

execute if score #rg_gg_grass_3 switch.data matches 107.. in switch:game run function switch:maps/regenerate_doors_macro {name:"gg_grass_3"}
execute if score #rg_gg_grass_3 switch.data matches 107.. run scoreboard players reset #rg_gg_grass_3 switch.data
execute if score #rg_gg_grass_3 switch.data matches 1.. run schedule function switch:maps/survival/gg_grass_3/regenerate 1t

