
#> switch:maps/survival/laser_game/regenerate
#
# @within	switch:maps/survival/laser_game/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_laser_game switch.data 1
execute if score #rg_laser_game switch.data matches 1 run data modify storage switch:maps to_regenerate.laser_game set value 2b
execute if score #rg_laser_game switch.data matches 1 in minecraft:overworld run forceload add 500 500 526 552
execute if score #rg_laser_game switch.data matches 1 in switch:game run forceload add 500 500 526 552
execute if score #rg_laser_game switch.data matches 1 in minecraft:overworld run forceload add 526 500 552 552
execute if score #rg_laser_game switch.data matches 1 in switch:game run forceload add 526 500 552 552

execute if score #rg_laser_game switch.data matches 1 run scoreboard players set #rg_laser_game_y switch.data 100
execute if score #rg_laser_game switch.data matches 1 run scoreboard players set #rg_laser_game_mod switch.data 0
execute if score #rg_laser_game switch.data matches ..88 summon marker run function switch:maps/survival/laser_game/regeneration_on_marker

execute if score #rg_laser_game switch.data matches 89.. in switch:game run kill @e[type=item,x=526,y=100,z=526,distance=..1000]
execute if score #rg_laser_game switch.data matches 89.. run data remove storage switch:maps to_regenerate.laser_game

execute if score #rg_laser_game switch.data matches 89.. in minecraft:overworld run forceload remove 500 500 526 552
execute if score #rg_laser_game switch.data matches 89.. in switch:game run forceload remove 500 500 526 552

execute if score #rg_laser_game switch.data matches 89.. in minecraft:overworld run forceload remove 526 500 552 552
execute if score #rg_laser_game switch.data matches 89.. in switch:game run forceload remove 526 500 552 552

execute if score #rg_laser_game switch.data matches 89.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"LaserGame51 (2010 IRL layout)","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"4","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_laser_game switch.data matches 89.. run data modify storage switch:main MessageToLog set value '{"text":"Map `LaserGame51 (2010 IRL layout)` just regenerated!"}'
execute if score #rg_laser_game switch.data matches 89.. run function switch:engine/log_message/apply

execute if score #rg_laser_game switch.data matches 89.. in switch:game run function switch:maps/regenerate_doors_macro {name:"laser_game"}
execute if score #rg_laser_game switch.data matches 89.. run scoreboard players reset #rg_laser_game switch.data
execute if score #rg_laser_game switch.data matches 1.. run schedule function switch:maps/survival/laser_game/regenerate 1t

