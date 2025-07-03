
#> switch:maps/survival/gg_ice_1/regenerate
#
# @within	switch:maps/survival/gg_ice_1/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_gg_ice_1 switch.data 1
execute if score #rg_gg_ice_1 switch.data matches 1 run data modify storage switch:maps to_regenerate.gg_ice_1 set value 2b
execute if score #rg_gg_ice_1 switch.data matches 1 in minecraft:overworld run forceload add 124083 124047 124103 124092
execute if score #rg_gg_ice_1 switch.data matches 1 in switch:game run forceload add 124083 124047 124103 124092
execute if score #rg_gg_ice_1 switch.data matches 1 in minecraft:overworld run forceload add 124103 124047 124123 124092
execute if score #rg_gg_ice_1 switch.data matches 1 in switch:game run forceload add 124103 124047 124123 124092

execute if score #rg_gg_ice_1 switch.data matches 1 run scoreboard players set #rg_gg_ice_1_y switch.data 84
execute if score #rg_gg_ice_1 switch.data matches 1 run scoreboard players set #rg_gg_ice_1_mod switch.data 0
execute if score #rg_gg_ice_1 switch.data matches ..106 summon marker run function switch:maps/survival/gg_ice_1/regeneration_on_marker

execute if score #rg_gg_ice_1 switch.data matches 107.. in switch:game run kill @e[type=item,x=124103,y=84,z=124069,distance=..1000]
execute if score #rg_gg_ice_1 switch.data matches 107.. run data remove storage switch:maps to_regenerate.gg_ice_1

execute if score #rg_gg_ice_1 switch.data matches 107.. in minecraft:overworld run forceload remove 124083 124047 124103 124092
execute if score #rg_gg_ice_1 switch.data matches 107.. in switch:game run forceload remove 124083 124047 124103 124092
execute if score #rg_gg_ice_1 switch.data matches 107.. in minecraft:overworld run forceload remove 124103 124047 124123 124092
execute if score #rg_gg_ice_1 switch.data matches 107.. in switch:game run forceload remove 124103 124047 124123 124092

execute if score #rg_gg_ice_1 switch.data matches 107.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Icy Rage","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"5","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_gg_ice_1 switch.data matches 107.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Icy Rage` just regenerated!"}'
execute if score #rg_gg_ice_1 switch.data matches 107.. run function switch:engine/log_message/apply

execute if score #rg_gg_ice_1 switch.data matches 107.. in switch:game run function switch:maps/regenerate_doors_macro {name:"gg_ice_1"}
execute if score #rg_gg_ice_1 switch.data matches 107.. run scoreboard players reset #rg_gg_ice_1 switch.data
execute if score #rg_gg_ice_1 switch.data matches 1.. run schedule function switch:maps/survival/gg_ice_1/regenerate 1t

