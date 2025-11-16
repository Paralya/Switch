
#> switch:maps/survival/elza_dual_biomes/regenerate
#
# @within	switch:maps/survival/elza_dual_biomes/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_elza_dual_biomes switch.data 1
execute if score #rg_elza_dual_biomes switch.data matches 1 run data modify storage switch:maps to_regenerate.elza_dual_biomes set value 2b
execute if score #rg_elza_dual_biomes switch.data matches 1 in minecraft:overworld run forceload add 155000 155000 155021 155042
execute if score #rg_elza_dual_biomes switch.data matches 1 in switch:game run forceload add 155000 155000 155021 155042
execute if score #rg_elza_dual_biomes switch.data matches 1 in minecraft:overworld run forceload add 155021 155000 155042 155042
execute if score #rg_elza_dual_biomes switch.data matches 1 in switch:game run forceload add 155021 155000 155042 155042

execute if score #rg_elza_dual_biomes switch.data matches 1 run scoreboard players set #rg_elza_dual_biomes_y switch.data 100
execute if score #rg_elza_dual_biomes switch.data matches 1 run scoreboard players set #rg_elza_dual_biomes_mod switch.data 0
execute if score #rg_elza_dual_biomes switch.data matches ..152 summon marker run function switch:maps/survival/elza_dual_biomes/regeneration_on_marker

execute if score #rg_elza_dual_biomes switch.data matches 153.. in switch:game run kill @e[type=item,x=155021,y=100,z=155021,distance=..1000]
execute if score #rg_elza_dual_biomes switch.data matches 153.. run data remove storage switch:maps to_regenerate.elza_dual_biomes

execute if score #rg_elza_dual_biomes switch.data matches 153.. in minecraft:overworld run forceload remove 155000 155000 155021 155042
execute if score #rg_elza_dual_biomes switch.data matches 153.. in switch:game run forceload remove 155000 155000 155021 155042
execute if score #rg_elza_dual_biomes switch.data matches 153.. in minecraft:overworld run forceload remove 155021 155000 155042 155042
execute if score #rg_elza_dual_biomes switch.data matches 153.. in switch:game run forceload remove 155021 155000 155042 155042

execute if score #rg_elza_dual_biomes switch.data matches 153.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Dual Biomes","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"7","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_elza_dual_biomes switch.data matches 153.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Dual Biomes` just regenerated!"}'
execute if score #rg_elza_dual_biomes switch.data matches 153.. run function switch:engine/log_message/apply

execute if score #rg_elza_dual_biomes switch.data matches 153.. in switch:game run function switch:maps/regenerate_doors_macro {name:"elza_dual_biomes"}
execute if score #rg_elza_dual_biomes switch.data matches 153.. run scoreboard players reset #rg_elza_dual_biomes switch.data
execute if score #rg_elza_dual_biomes switch.data matches 1.. run schedule function switch:maps/survival/elza_dual_biomes/regenerate 1t

