
#> switch:maps/survival/ocean_waste/regenerate
#
# @within	switch:maps/survival/ocean_waste/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_ocean_waste switch.data 1
execute if score #rg_ocean_waste switch.data matches 1 run data modify storage switch:maps to_regenerate.ocean_waste set value 2b
execute if score #rg_ocean_waste switch.data matches 1 in minecraft:overworld run forceload add 64000 64000 64020 64100
execute if score #rg_ocean_waste switch.data matches 1 in switch:game run forceload add 64000 64000 64020 64100
execute if score #rg_ocean_waste switch.data matches 1 in minecraft:overworld run forceload add 64020 64000 64040 64100
execute if score #rg_ocean_waste switch.data matches 1 in switch:game run forceload add 64020 64000 64040 64100
execute if score #rg_ocean_waste switch.data matches 1 in minecraft:overworld run forceload add 64040 64000 64060 64100
execute if score #rg_ocean_waste switch.data matches 1 in switch:game run forceload add 64040 64000 64060 64100
execute if score #rg_ocean_waste switch.data matches 1 in minecraft:overworld run forceload add 64060 64000 64080 64100
execute if score #rg_ocean_waste switch.data matches 1 in switch:game run forceload add 64060 64000 64080 64100
execute if score #rg_ocean_waste switch.data matches 1 in minecraft:overworld run forceload add 64080 64000 64100 64100
execute if score #rg_ocean_waste switch.data matches 1 in switch:game run forceload add 64080 64000 64100 64100

execute if score #rg_ocean_waste switch.data matches 1 run scoreboard players set #rg_ocean_waste_y switch.data 100
execute if score #rg_ocean_waste switch.data matches 1 run scoreboard players set #rg_ocean_waste_mod switch.data 0
execute if score #rg_ocean_waste switch.data matches ..455 summon marker run function switch:maps/survival/ocean_waste/regeneration_on_marker

execute if score #rg_ocean_waste switch.data matches 456.. in switch:game run kill @e[type=item,x=64050,y=100,z=64050,distance=..1000]
execute if score #rg_ocean_waste switch.data matches 456.. run data remove storage switch:maps to_regenerate.ocean_waste

execute if score #rg_ocean_waste switch.data matches 456.. in minecraft:overworld run forceload remove 64000 64000 64020 64100
execute if score #rg_ocean_waste switch.data matches 456.. in switch:game run forceload remove 64000 64000 64020 64100
execute if score #rg_ocean_waste switch.data matches 456.. in minecraft:overworld run forceload remove 64020 64000 64040 64100
execute if score #rg_ocean_waste switch.data matches 456.. in switch:game run forceload remove 64020 64000 64040 64100
execute if score #rg_ocean_waste switch.data matches 456.. in minecraft:overworld run forceload remove 64040 64000 64060 64100
execute if score #rg_ocean_waste switch.data matches 456.. in switch:game run forceload remove 64040 64000 64060 64100
execute if score #rg_ocean_waste switch.data matches 456.. in minecraft:overworld run forceload remove 64060 64000 64080 64100
execute if score #rg_ocean_waste switch.data matches 456.. in switch:game run forceload remove 64060 64000 64080 64100
execute if score #rg_ocean_waste switch.data matches 456.. in minecraft:overworld run forceload remove 64080 64000 64100 64100
execute if score #rg_ocean_waste switch.data matches 456.. in switch:game run forceload remove 64080 64000 64100 64100

execute if score #rg_ocean_waste switch.data matches 456.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Ocean Waste","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"22","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_ocean_waste switch.data matches 456.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Ocean Waste` just regenerated!"}'
execute if score #rg_ocean_waste switch.data matches 456.. run function switch:engine/log_message/apply

execute if score #rg_ocean_waste switch.data matches 456.. in switch:game run function switch:maps/regenerate_doors_macro {name:"ocean_waste"}
execute if score #rg_ocean_waste switch.data matches 456.. run scoreboard players reset #rg_ocean_waste switch.data
execute if score #rg_ocean_waste switch.data matches 1.. run schedule function switch:maps/survival/ocean_waste/regenerate 1t

