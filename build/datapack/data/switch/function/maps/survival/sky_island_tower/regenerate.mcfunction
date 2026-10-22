
#> switch:maps/survival/sky_island_tower/regenerate
#
# @within	switch:maps/survival/sky_island_tower/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_sky_island_tower switch.data 1
execute if score #rg_sky_island_tower switch.data matches 1 run data modify storage switch:maps to_regenerate.sky_island_tower set value 2b
execute if score #rg_sky_island_tower switch.data matches 1 in minecraft:overworld run forceload add -8000 8000 -7976 8094
execute if score #rg_sky_island_tower switch.data matches 1 in switch:game run forceload add -8000 8000 -7976 8094
execute if score #rg_sky_island_tower switch.data matches 1 in minecraft:overworld run forceload add -7976 8000 -7952 8094
execute if score #rg_sky_island_tower switch.data matches 1 in switch:game run forceload add -7976 8000 -7952 8094
execute if score #rg_sky_island_tower switch.data matches 1 in minecraft:overworld run forceload add -7952 8000 -7927 8094
execute if score #rg_sky_island_tower switch.data matches 1 in switch:game run forceload add -7952 8000 -7927 8094
execute if score #rg_sky_island_tower switch.data matches 1 in minecraft:overworld run forceload add -7927 8000 -7903 8094
execute if score #rg_sky_island_tower switch.data matches 1 in switch:game run forceload add -7927 8000 -7903 8094

execute if score #rg_sky_island_tower switch.data matches 1 run scoreboard players set #rg_sky_island_tower_y switch.data 100
execute if score #rg_sky_island_tower switch.data matches 1 run scoreboard players set #rg_sky_island_tower_mod switch.data 0
execute if score #rg_sky_island_tower switch.data matches ..580 summon marker run function switch:maps/survival/sky_island_tower/regeneration_on_marker

execute if score #rg_sky_island_tower switch.data matches 581.. in switch:game run kill @e[type=item,x=-7951,y=100,z=8047,distance=..1000]
execute if score #rg_sky_island_tower switch.data matches 581.. run data remove storage switch:maps to_regenerate.sky_island_tower

execute if score #rg_sky_island_tower switch.data matches 581.. in minecraft:overworld run forceload remove -8000 8000 -7976 8094
execute if score #rg_sky_island_tower switch.data matches 581.. in switch:game run forceload remove -8000 8000 -7976 8094
execute if score #rg_sky_island_tower switch.data matches 581.. in minecraft:overworld run forceload remove -7976 8000 -7952 8094
execute if score #rg_sky_island_tower switch.data matches 581.. in switch:game run forceload remove -7976 8000 -7952 8094
execute if score #rg_sky_island_tower switch.data matches 581.. in minecraft:overworld run forceload remove -7952 8000 -7927 8094
execute if score #rg_sky_island_tower switch.data matches 581.. in switch:game run forceload remove -7952 8000 -7927 8094
execute if score #rg_sky_island_tower switch.data matches 581.. in minecraft:overworld run forceload remove -7927 8000 -7903 8094
execute if score #rg_sky_island_tower switch.data matches 581.. in switch:game run forceload remove -7927 8000 -7903 8094

execute if score #rg_sky_island_tower switch.data matches 581.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Sky Island Tower","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"29","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_sky_island_tower switch.data matches 581.. run function switch:engine/log_message/apply {message:"Map `Sky Island Tower` just regenerated!"}

execute if score #rg_sky_island_tower switch.data matches 581.. in switch:game run function switch:maps/regenerate_doors_macro {name:"sky_island_tower"}
execute if score #rg_sky_island_tower switch.data matches 581.. run scoreboard players reset #rg_sky_island_tower switch.data
execute if score #rg_sky_island_tower switch.data matches 1.. run schedule function switch:maps/survival/sky_island_tower/regenerate 1t

