
#> switch:maps/survival/orange_rings/regenerate
#
# @within	switch:maps/survival/orange_rings/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_orange_rings switch.data 1
execute if score #rg_orange_rings switch.data matches 1 run data modify storage switch:maps to_regenerate.orange_rings set value 2b
execute if score #rg_orange_rings switch.data matches 1 in minecraft:overworld run forceload add 65000 65000 65020 65103
execute if score #rg_orange_rings switch.data matches 1 in switch:game run forceload add 65000 65000 65020 65103
execute if score #rg_orange_rings switch.data matches 1 in minecraft:overworld run forceload add 65020 65000 65040 65103
execute if score #rg_orange_rings switch.data matches 1 in switch:game run forceload add 65020 65000 65040 65103
execute if score #rg_orange_rings switch.data matches 1 in minecraft:overworld run forceload add 65040 65000 65059 65103
execute if score #rg_orange_rings switch.data matches 1 in switch:game run forceload add 65040 65000 65059 65103
execute if score #rg_orange_rings switch.data matches 1 in minecraft:overworld run forceload add 65059 65000 65079 65103
execute if score #rg_orange_rings switch.data matches 1 in switch:game run forceload add 65059 65000 65079 65103
execute if score #rg_orange_rings switch.data matches 1 in minecraft:overworld run forceload add 65079 65000 65099 65103
execute if score #rg_orange_rings switch.data matches 1 in switch:game run forceload add 65079 65000 65099 65103

execute if score #rg_orange_rings switch.data matches 1 run scoreboard players set #rg_orange_rings_y switch.data 0
execute if score #rg_orange_rings switch.data matches 1 run scoreboard players set #rg_orange_rings_mod switch.data 0
execute if score #rg_orange_rings switch.data matches ..475 summon marker run function switch:maps/survival/orange_rings/regeneration_on_marker

execute if score #rg_orange_rings switch.data matches 476.. in switch:game run kill @e[type=item,x=65049,y=0,z=65051,distance=..1000]
execute if score #rg_orange_rings switch.data matches 476.. run data remove storage switch:maps to_regenerate.orange_rings

execute if score #rg_orange_rings switch.data matches 476.. in minecraft:overworld run forceload remove 65000 65000 65020 65103
execute if score #rg_orange_rings switch.data matches 476.. in switch:game run forceload remove 65000 65000 65020 65103

execute if score #rg_orange_rings switch.data matches 476.. in minecraft:overworld run forceload remove 65020 65000 65040 65103
execute if score #rg_orange_rings switch.data matches 476.. in switch:game run forceload remove 65020 65000 65040 65103

execute if score #rg_orange_rings switch.data matches 476.. in minecraft:overworld run forceload remove 65040 65000 65059 65103
execute if score #rg_orange_rings switch.data matches 476.. in switch:game run forceload remove 65040 65000 65059 65103

execute if score #rg_orange_rings switch.data matches 476.. in minecraft:overworld run forceload remove 65059 65000 65079 65103
execute if score #rg_orange_rings switch.data matches 476.. in switch:game run forceload remove 65059 65000 65079 65103

execute if score #rg_orange_rings switch.data matches 476.. in minecraft:overworld run forceload remove 65079 65000 65099 65103
execute if score #rg_orange_rings switch.data matches 476.. in switch:game run forceload remove 65079 65000 65099 65103

execute if score #rg_orange_rings switch.data matches 476.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"orange_rings","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"23","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_orange_rings switch.data matches 476.. run data modify storage switch:main MessageToLog set value '{"text":"Map `orange_rings` just regenerated!"}'
execute if score #rg_orange_rings switch.data matches 476.. run function switch:engine/log_message/apply

execute if score #rg_orange_rings switch.data matches 476.. in switch:game run function switch:maps/regenerate_doors_macro {name:"orange_rings"}
execute if score #rg_orange_rings switch.data matches 476.. run scoreboard players reset #rg_orange_rings switch.data
execute if score #rg_orange_rings switch.data matches 1.. run schedule function switch:maps/survival/orange_rings/regenerate 1t

