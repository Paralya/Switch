
#> switch:maps/survival/floor_is_lava/regenerate
#
# @within	switch:maps/survival/floor_is_lava/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_floor_is_lava switch.data 1
execute if score #rg_floor_is_lava switch.data matches 1 run data modify storage switch:maps to_regenerate.floor_is_lava set value 2b
execute if score #rg_floor_is_lava switch.data matches 1 in minecraft:overworld run forceload add 62000 62000 62020 62100
execute if score #rg_floor_is_lava switch.data matches 1 in switch:game run forceload add 62000 62000 62020 62100
execute if score #rg_floor_is_lava switch.data matches 1 in minecraft:overworld run forceload add 62020 62000 62040 62100
execute if score #rg_floor_is_lava switch.data matches 1 in switch:game run forceload add 62020 62000 62040 62100
execute if score #rg_floor_is_lava switch.data matches 1 in minecraft:overworld run forceload add 62040 62000 62060 62100
execute if score #rg_floor_is_lava switch.data matches 1 in switch:game run forceload add 62040 62000 62060 62100
execute if score #rg_floor_is_lava switch.data matches 1 in minecraft:overworld run forceload add 62060 62000 62080 62100
execute if score #rg_floor_is_lava switch.data matches 1 in switch:game run forceload add 62060 62000 62080 62100
execute if score #rg_floor_is_lava switch.data matches 1 in minecraft:overworld run forceload add 62080 62000 62100 62100
execute if score #rg_floor_is_lava switch.data matches 1 in switch:game run forceload add 62080 62000 62100 62100

execute if score #rg_floor_is_lava switch.data matches 1 run scoreboard players set #rg_floor_is_lava_y switch.data 100
execute if score #rg_floor_is_lava switch.data matches 1 run scoreboard players set #rg_floor_is_lava_mod switch.data 0
execute if score #rg_floor_is_lava switch.data matches ..455 summon marker run function switch:maps/survival/floor_is_lava/regeneration_on_marker

execute if score #rg_floor_is_lava switch.data matches 456.. in switch:game run kill @e[type=item,x=62050,y=100,z=62050,distance=..1000]
execute if score #rg_floor_is_lava switch.data matches 456.. run data remove storage switch:maps to_regenerate.floor_is_lava

execute if score #rg_floor_is_lava switch.data matches 456.. in minecraft:overworld run forceload remove 62000 62000 62020 62100
execute if score #rg_floor_is_lava switch.data matches 456.. in switch:game run forceload remove 62000 62000 62020 62100
execute if score #rg_floor_is_lava switch.data matches 456.. in minecraft:overworld run forceload remove 62020 62000 62040 62100
execute if score #rg_floor_is_lava switch.data matches 456.. in switch:game run forceload remove 62020 62000 62040 62100
execute if score #rg_floor_is_lava switch.data matches 456.. in minecraft:overworld run forceload remove 62040 62000 62060 62100
execute if score #rg_floor_is_lava switch.data matches 456.. in switch:game run forceload remove 62040 62000 62060 62100
execute if score #rg_floor_is_lava switch.data matches 456.. in minecraft:overworld run forceload remove 62060 62000 62080 62100
execute if score #rg_floor_is_lava switch.data matches 456.. in switch:game run forceload remove 62060 62000 62080 62100
execute if score #rg_floor_is_lava switch.data matches 456.. in minecraft:overworld run forceload remove 62080 62000 62100 62100
execute if score #rg_floor_is_lava switch.data matches 456.. in switch:game run forceload remove 62080 62000 62100 62100

execute if score #rg_floor_is_lava switch.data matches 456.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"The floor is probably lava","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"22","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_floor_is_lava switch.data matches 456.. run data modify storage switch:main MessageToLog set value '{"text":"Map `The floor is probably lava` just regenerated!"}'
execute if score #rg_floor_is_lava switch.data matches 456.. run function switch:engine/log_message/apply

execute if score #rg_floor_is_lava switch.data matches 456.. in switch:game run function switch:maps/regenerate_doors_macro {name:"floor_is_lava"}
execute if score #rg_floor_is_lava switch.data matches 456.. run scoreboard players reset #rg_floor_is_lava switch.data
execute if score #rg_floor_is_lava switch.data matches 1.. run schedule function switch:maps/survival/floor_is_lava/regenerate 1t

