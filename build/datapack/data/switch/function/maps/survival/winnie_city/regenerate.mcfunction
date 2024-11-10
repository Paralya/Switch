
#> switch:maps/survival/winnie_city/regenerate
#
# @within	switch:maps/survival/winnie_city/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_winnie_city switch.data 1
execute if score #rg_winnie_city switch.data matches 1 run data modify storage switch:maps to_regenerate.winnie_city set value 2b
execute if score #rg_winnie_city switch.data matches 1 in minecraft:overworld run forceload add 117000 117000 117020 117130
execute if score #rg_winnie_city switch.data matches 1 in switch:game run forceload add 117000 117000 117020 117130
execute if score #rg_winnie_city switch.data matches 1 in minecraft:overworld run forceload add 117020 117000 117040 117130
execute if score #rg_winnie_city switch.data matches 1 in switch:game run forceload add 117020 117000 117040 117130
execute if score #rg_winnie_city switch.data matches 1 in minecraft:overworld run forceload add 117040 117000 117060 117130
execute if score #rg_winnie_city switch.data matches 1 in switch:game run forceload add 117040 117000 117060 117130
execute if score #rg_winnie_city switch.data matches 1 in minecraft:overworld run forceload add 117060 117000 117079 117130
execute if score #rg_winnie_city switch.data matches 1 in switch:game run forceload add 117060 117000 117079 117130
execute if score #rg_winnie_city switch.data matches 1 in minecraft:overworld run forceload add 117079 117000 117099 117130
execute if score #rg_winnie_city switch.data matches 1 in switch:game run forceload add 117079 117000 117099 117130
execute if score #rg_winnie_city switch.data matches 1 in minecraft:overworld run forceload add 117099 117000 117119 117130
execute if score #rg_winnie_city switch.data matches 1 in switch:game run forceload add 117099 117000 117119 117130

execute if score #rg_winnie_city switch.data matches 1 run scoreboard players set #rg_winnie_city_y switch.data 0
execute if score #rg_winnie_city switch.data matches 1 run scoreboard players set #rg_winnie_city_mod switch.data 0
execute if score #rg_winnie_city switch.data matches ..192 summon marker run function switch:maps/survival/winnie_city/regeneration_on_marker

execute if score #rg_winnie_city switch.data matches 193.. in switch:game run kill @e[type=item,x=117059,y=0,z=117065,distance=..1000]
execute if score #rg_winnie_city switch.data matches 193.. run data remove storage switch:maps to_regenerate.winnie_city

execute if score #rg_winnie_city switch.data matches 193.. in minecraft:overworld run forceload remove 117000 117000 117020 117130
execute if score #rg_winnie_city switch.data matches 193.. in switch:game run forceload remove 117000 117000 117020 117130

execute if score #rg_winnie_city switch.data matches 193.. in minecraft:overworld run forceload remove 117020 117000 117040 117130
execute if score #rg_winnie_city switch.data matches 193.. in switch:game run forceload remove 117020 117000 117040 117130

execute if score #rg_winnie_city switch.data matches 193.. in minecraft:overworld run forceload remove 117040 117000 117060 117130
execute if score #rg_winnie_city switch.data matches 193.. in switch:game run forceload remove 117040 117000 117060 117130

execute if score #rg_winnie_city switch.data matches 193.. in minecraft:overworld run forceload remove 117060 117000 117079 117130
execute if score #rg_winnie_city switch.data matches 193.. in switch:game run forceload remove 117060 117000 117079 117130

execute if score #rg_winnie_city switch.data matches 193.. in minecraft:overworld run forceload remove 117079 117000 117099 117130
execute if score #rg_winnie_city switch.data matches 193.. in switch:game run forceload remove 117079 117000 117099 117130

execute if score #rg_winnie_city switch.data matches 193.. in minecraft:overworld run forceload remove 117099 117000 117119 117130
execute if score #rg_winnie_city switch.data matches 193.. in switch:game run forceload remove 117099 117000 117119 117130

execute if score #rg_winnie_city switch.data matches 193.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"winnie_city","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"9","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_winnie_city switch.data matches 193.. run data modify storage switch:main MessageToLog set value '{"text":"Map `winnie_city` just regenerated!"}'
execute if score #rg_winnie_city switch.data matches 193.. run function switch:engine/log_message/apply

execute if score #rg_winnie_city switch.data matches 193.. in switch:game run function switch:maps/regenerate_doors_macro {name:"winnie_city"}
execute if score #rg_winnie_city switch.data matches 193.. run scoreboard players reset #rg_winnie_city switch.data
execute if score #rg_winnie_city switch.data matches 1.. run schedule function switch:maps/survival/winnie_city/regenerate 1t

