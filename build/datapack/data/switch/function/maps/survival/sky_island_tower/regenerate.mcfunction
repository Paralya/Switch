
#> switch:maps/survival/sky_island_tower/regenerate
#
# @within	switch:maps/survival/sky_island_tower/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_sky_island_tower switch.data 1
execute if score #rg_sky_island_tower switch.data matches 1 run data modify storage switch:maps to_regenerate.sky_island_tower set value 2b
execute if score #rg_sky_island_tower switch.data matches 1 in minecraft:overworld run forceload add 77000 77000 77024 77094
execute if score #rg_sky_island_tower switch.data matches 1 in switch:game run forceload add 77000 77000 77024 77094
execute if score #rg_sky_island_tower switch.data matches 1 in minecraft:overworld run forceload add 77024 77000 77048 77094
execute if score #rg_sky_island_tower switch.data matches 1 in switch:game run forceload add 77024 77000 77048 77094
execute if score #rg_sky_island_tower switch.data matches 1 in minecraft:overworld run forceload add 77048 77000 77073 77094
execute if score #rg_sky_island_tower switch.data matches 1 in switch:game run forceload add 77048 77000 77073 77094
execute if score #rg_sky_island_tower switch.data matches 1 in minecraft:overworld run forceload add 77073 77000 77097 77094
execute if score #rg_sky_island_tower switch.data matches 1 in switch:game run forceload add 77073 77000 77097 77094

execute if score #rg_sky_island_tower switch.data matches 1 run scoreboard players set #rg_sky_island_tower_y switch.data 100
execute if score #rg_sky_island_tower switch.data matches 1 run scoreboard players set #rg_sky_island_tower_mod switch.data 0
execute if score #rg_sky_island_tower switch.data matches ..580 summon marker run function switch:maps/survival/sky_island_tower/regeneration_on_marker

execute if score #rg_sky_island_tower switch.data matches 581.. in switch:game run kill @e[type=item,x=77048,y=100,z=77047,distance=..1000]
execute if score #rg_sky_island_tower switch.data matches 581.. run data remove storage switch:maps to_regenerate.sky_island_tower

execute if score #rg_sky_island_tower switch.data matches 581.. in minecraft:overworld run forceload remove 77000 77000 77024 77094
execute if score #rg_sky_island_tower switch.data matches 581.. in switch:game run forceload remove 77000 77000 77024 77094

execute if score #rg_sky_island_tower switch.data matches 581.. in minecraft:overworld run forceload remove 77024 77000 77048 77094
execute if score #rg_sky_island_tower switch.data matches 581.. in switch:game run forceload remove 77024 77000 77048 77094

execute if score #rg_sky_island_tower switch.data matches 581.. in minecraft:overworld run forceload remove 77048 77000 77073 77094
execute if score #rg_sky_island_tower switch.data matches 581.. in switch:game run forceload remove 77048 77000 77073 77094

execute if score #rg_sky_island_tower switch.data matches 581.. in minecraft:overworld run forceload remove 77073 77000 77097 77094
execute if score #rg_sky_island_tower switch.data matches 581.. in switch:game run forceload remove 77073 77000 77097 77094

execute if score #rg_sky_island_tower switch.data matches 581.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"sky_island_tower","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"29","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_sky_island_tower switch.data matches 581.. run data modify storage switch:main MessageToLog set value '{"text":"Map `sky_island_tower` just regenerated!"}'
execute if score #rg_sky_island_tower switch.data matches 581.. run function switch:engine/log_message/apply

execute if score #rg_sky_island_tower switch.data matches 581.. in switch:game run function switch:maps/regenerate_doors_macro {name:"sky_island_tower"}
execute if score #rg_sky_island_tower switch.data matches 581.. run scoreboard players reset #rg_sky_island_tower switch.data
execute if score #rg_sky_island_tower switch.data matches 1.. run schedule function switch:maps/survival/sky_island_tower/regenerate 1t

