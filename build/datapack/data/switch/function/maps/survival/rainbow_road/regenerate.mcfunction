
#> switch:maps/survival/rainbow_road/regenerate
#
# @within	switch:maps/survival/rainbow_road/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_rainbow_road switch.data 1
execute if score #rg_rainbow_road switch.data matches 1 run data modify storage switch:maps to_regenerate.rainbow_road set value 2b
execute if score #rg_rainbow_road switch.data matches 1 in minecraft:overworld run forceload add 24000 24000 24017 24137
execute if score #rg_rainbow_road switch.data matches 1 in switch:game run forceload add 24000 24000 24017 24137
execute if score #rg_rainbow_road switch.data matches 1 in minecraft:overworld run forceload add 24017 24000 24035 24137
execute if score #rg_rainbow_road switch.data matches 1 in switch:game run forceload add 24017 24000 24035 24137
execute if score #rg_rainbow_road switch.data matches 1 in minecraft:overworld run forceload add 24035 24000 24052 24137
execute if score #rg_rainbow_road switch.data matches 1 in switch:game run forceload add 24035 24000 24052 24137
execute if score #rg_rainbow_road switch.data matches 1 in minecraft:overworld run forceload add 24052 24000 24070 24137
execute if score #rg_rainbow_road switch.data matches 1 in switch:game run forceload add 24052 24000 24070 24137
execute if score #rg_rainbow_road switch.data matches 1 in minecraft:overworld run forceload add 24070 24000 24087 24137
execute if score #rg_rainbow_road switch.data matches 1 in switch:game run forceload add 24070 24000 24087 24137
execute if score #rg_rainbow_road switch.data matches 1 in minecraft:overworld run forceload add 24087 24000 24105 24137
execute if score #rg_rainbow_road switch.data matches 1 in switch:game run forceload add 24087 24000 24105 24137
execute if score #rg_rainbow_road switch.data matches 1 in minecraft:overworld run forceload add 24105 24000 24122 24137
execute if score #rg_rainbow_road switch.data matches 1 in switch:game run forceload add 24105 24000 24122 24137

execute if score #rg_rainbow_road switch.data matches 1 run scoreboard players set #rg_rainbow_road_y switch.data 100
execute if score #rg_rainbow_road switch.data matches 1 run scoreboard players set #rg_rainbow_road_mod switch.data 0
execute if score #rg_rainbow_road switch.data matches ..469 summon marker run function switch:maps/survival/rainbow_road/regeneration_on_marker

execute if score #rg_rainbow_road switch.data matches 470.. in switch:game run kill @e[type=item,x=24061,y=100,z=24068,distance=..1000]
execute if score #rg_rainbow_road switch.data matches 470.. run data remove storage switch:maps to_regenerate.rainbow_road

execute if score #rg_rainbow_road switch.data matches 470.. in minecraft:overworld run forceload remove 24000 24000 24017 24137
execute if score #rg_rainbow_road switch.data matches 470.. in switch:game run forceload remove 24000 24000 24017 24137

execute if score #rg_rainbow_road switch.data matches 470.. in minecraft:overworld run forceload remove 24017 24000 24035 24137
execute if score #rg_rainbow_road switch.data matches 470.. in switch:game run forceload remove 24017 24000 24035 24137

execute if score #rg_rainbow_road switch.data matches 470.. in minecraft:overworld run forceload remove 24035 24000 24052 24137
execute if score #rg_rainbow_road switch.data matches 470.. in switch:game run forceload remove 24035 24000 24052 24137

execute if score #rg_rainbow_road switch.data matches 470.. in minecraft:overworld run forceload remove 24052 24000 24070 24137
execute if score #rg_rainbow_road switch.data matches 470.. in switch:game run forceload remove 24052 24000 24070 24137

execute if score #rg_rainbow_road switch.data matches 470.. in minecraft:overworld run forceload remove 24070 24000 24087 24137
execute if score #rg_rainbow_road switch.data matches 470.. in switch:game run forceload remove 24070 24000 24087 24137

execute if score #rg_rainbow_road switch.data matches 470.. in minecraft:overworld run forceload remove 24087 24000 24105 24137
execute if score #rg_rainbow_road switch.data matches 470.. in switch:game run forceload remove 24087 24000 24105 24137

execute if score #rg_rainbow_road switch.data matches 470.. in minecraft:overworld run forceload remove 24105 24000 24122 24137
execute if score #rg_rainbow_road switch.data matches 470.. in switch:game run forceload remove 24105 24000 24122 24137

execute if score #rg_rainbow_road switch.data matches 470.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Rainbow Road","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"23","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_rainbow_road switch.data matches 470.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Rainbow Road` just regenerated!"}'
execute if score #rg_rainbow_road switch.data matches 470.. run function switch:engine/log_message/apply

execute if score #rg_rainbow_road switch.data matches 470.. in switch:game run function switch:maps/regenerate_doors_macro {name:"rainbow_road"}
execute if score #rg_rainbow_road switch.data matches 470.. run scoreboard players reset #rg_rainbow_road switch.data
execute if score #rg_rainbow_road switch.data matches 1.. run schedule function switch:maps/survival/rainbow_road/regenerate 1t

