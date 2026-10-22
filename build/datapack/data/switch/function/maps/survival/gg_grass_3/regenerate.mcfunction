
#> switch:maps/survival/gg_grass_3/regenerate
#
# @within	switch:maps/survival/gg_grass_3/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_gg_grass_3 switch.data 1
execute if score #rg_gg_grass_3 switch.data matches 1 run data modify storage switch:maps to_regenerate.gg_grass_3 set value 2b
execute if score #rg_gg_grass_3 switch.data matches 1 in minecraft:overworld run forceload add 10124 8093 10144 8138
execute if score #rg_gg_grass_3 switch.data matches 1 in switch:game run forceload add 10124 8093 10144 8138
execute if score #rg_gg_grass_3 switch.data matches 1 in minecraft:overworld run forceload add 10144 8093 10164 8138
execute if score #rg_gg_grass_3 switch.data matches 1 in switch:game run forceload add 10144 8093 10164 8138

execute if score #rg_gg_grass_3 switch.data matches 1 run scoreboard players set #rg_gg_grass_3_y switch.data 84
execute if score #rg_gg_grass_3 switch.data matches 1 run scoreboard players set #rg_gg_grass_3_mod switch.data 0
execute if score #rg_gg_grass_3 switch.data matches ..106 summon marker run function switch:maps/survival/gg_grass_3/regeneration_on_marker

execute if score #rg_gg_grass_3 switch.data matches 107.. in switch:game run kill @e[type=item,x=10144,y=84,z=8115,distance=..1000]
execute if score #rg_gg_grass_3 switch.data matches 107.. run data remove storage switch:maps to_regenerate.gg_grass_3

execute if score #rg_gg_grass_3 switch.data matches 107.. in minecraft:overworld run forceload remove 10124 8093 10144 8138
execute if score #rg_gg_grass_3 switch.data matches 107.. in switch:game run forceload remove 10124 8093 10144 8138
execute if score #rg_gg_grass_3 switch.data matches 107.. in minecraft:overworld run forceload remove 10144 8093 10164 8138
execute if score #rg_gg_grass_3 switch.data matches 107.. in switch:game run forceload remove 10144 8093 10164 8138

execute if score #rg_gg_grass_3 switch.data matches 107.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Cavy Grass","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"5","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_gg_grass_3 switch.data matches 107.. run function switch:engine/log_message/apply {message:"Map `Cavy Grass` just regenerated!"}

execute if score #rg_gg_grass_3 switch.data matches 107.. run scoreboard players reset #rg_gg_grass_3 switch.data
execute if score #rg_gg_grass_3 switch.data matches 1.. run schedule function switch:maps/survival/gg_grass_3/regenerate 1t

