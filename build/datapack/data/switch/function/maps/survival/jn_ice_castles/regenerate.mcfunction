
#> switch:maps/survival/jn_ice_castles/regenerate
#
# @within	switch:maps/survival/jn_ice_castles/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_jn_ice_castles switch.data 1
execute if score #rg_jn_ice_castles switch.data matches 1 run data modify storage switch:maps to_regenerate.jn_ice_castles set value 2b
execute if score #rg_jn_ice_castles switch.data matches 1 in minecraft:overworld run forceload add 133000 133000 133014 133130
execute if score #rg_jn_ice_castles switch.data matches 1 in switch:game run forceload add 133000 133000 133014 133130
execute if score #rg_jn_ice_castles switch.data matches 1 in minecraft:overworld run forceload add 133014 133000 133027 133130
execute if score #rg_jn_ice_castles switch.data matches 1 in switch:game run forceload add 133014 133000 133027 133130
execute if score #rg_jn_ice_castles switch.data matches 1 in minecraft:overworld run forceload add 133027 133000 133040 133130
execute if score #rg_jn_ice_castles switch.data matches 1 in switch:game run forceload add 133027 133000 133040 133130
execute if score #rg_jn_ice_castles switch.data matches 1 in minecraft:overworld run forceload add 133040 133000 133054 133130
execute if score #rg_jn_ice_castles switch.data matches 1 in switch:game run forceload add 133040 133000 133054 133130

execute if score #rg_jn_ice_castles switch.data matches 1 run scoreboard players set #rg_jn_ice_castles_y switch.data 0
execute if score #rg_jn_ice_castles switch.data matches 1 run scoreboard players set #rg_jn_ice_castles_mod switch.data 0
execute if score #rg_jn_ice_castles switch.data matches ..216 summon marker run function switch:maps/survival/jn_ice_castles/regeneration_on_marker

execute if score #rg_jn_ice_castles switch.data matches 217.. in switch:game run kill @e[type=item,x=133027,y=0,z=133065,distance=..1000]
execute if score #rg_jn_ice_castles switch.data matches 217.. run data remove storage switch:maps to_regenerate.jn_ice_castles

execute if score #rg_jn_ice_castles switch.data matches 217.. in minecraft:overworld run forceload remove 133000 133000 133014 133130
execute if score #rg_jn_ice_castles switch.data matches 217.. in switch:game run forceload remove 133000 133000 133014 133130

execute if score #rg_jn_ice_castles switch.data matches 217.. in minecraft:overworld run forceload remove 133014 133000 133027 133130
execute if score #rg_jn_ice_castles switch.data matches 217.. in switch:game run forceload remove 133014 133000 133027 133130

execute if score #rg_jn_ice_castles switch.data matches 217.. in minecraft:overworld run forceload remove 133027 133000 133040 133130
execute if score #rg_jn_ice_castles switch.data matches 217.. in switch:game run forceload remove 133027 133000 133040 133130

execute if score #rg_jn_ice_castles switch.data matches 217.. in minecraft:overworld run forceload remove 133040 133000 133054 133130
execute if score #rg_jn_ice_castles switch.data matches 217.. in switch:game run forceload remove 133040 133000 133054 133130

execute if score #rg_jn_ice_castles switch.data matches 217.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"jn_ice_castles","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"10","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_jn_ice_castles switch.data matches 217.. run data modify storage switch:main MessageToLog set value '{"text":"Map `jn_ice_castles` just regenerated!"}'
execute if score #rg_jn_ice_castles switch.data matches 217.. run function switch:engine/log_message/apply

execute if score #rg_jn_ice_castles switch.data matches 217.. in switch:game run function switch:maps/regenerate_doors_macro {name:"jn_ice_castles"}
execute if score #rg_jn_ice_castles switch.data matches 217.. run scoreboard players reset #rg_jn_ice_castles switch.data
execute if score #rg_jn_ice_castles switch.data matches 1.. run schedule function switch:maps/survival/jn_ice_castles/regenerate 1t

