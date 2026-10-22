
#> switch:maps/survival/la_juste_recette/regenerate
#
# @within	switch:maps/survival/la_juste_recette/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_la_juste_recette switch.data 1
execute if score #rg_la_juste_recette switch.data matches 1 run data modify storage switch:maps to_regenerate.la_juste_recette set value 2b
execute if score #rg_la_juste_recette switch.data matches 1 in minecraft:overworld run forceload add 0 -8000 21 -7876
execute if score #rg_la_juste_recette switch.data matches 1 in switch:game run forceload add 0 -8000 21 -7876
execute if score #rg_la_juste_recette switch.data matches 1 in minecraft:overworld run forceload add 21 -8000 41 -7876
execute if score #rg_la_juste_recette switch.data matches 1 in switch:game run forceload add 21 -8000 41 -7876
execute if score #rg_la_juste_recette switch.data matches 1 in minecraft:overworld run forceload add 41 -8000 62 -7876
execute if score #rg_la_juste_recette switch.data matches 1 in switch:game run forceload add 41 -8000 62 -7876
execute if score #rg_la_juste_recette switch.data matches 1 in minecraft:overworld run forceload add 62 -8000 83 -7876
execute if score #rg_la_juste_recette switch.data matches 1 in switch:game run forceload add 62 -8000 83 -7876
execute if score #rg_la_juste_recette switch.data matches 1 in minecraft:overworld run forceload add 83 -8000 103 -7876
execute if score #rg_la_juste_recette switch.data matches 1 in switch:game run forceload add 83 -8000 103 -7876
execute if score #rg_la_juste_recette switch.data matches 1 in minecraft:overworld run forceload add 103 -8000 124 -7876
execute if score #rg_la_juste_recette switch.data matches 1 in switch:game run forceload add 103 -8000 124 -7876

execute if score #rg_la_juste_recette switch.data matches 1 run scoreboard players set #rg_la_juste_recette_y switch.data 100
execute if score #rg_la_juste_recette switch.data matches 1 run scoreboard players set #rg_la_juste_recette_mod switch.data 0
execute if score #rg_la_juste_recette switch.data matches ..222 summon marker run function switch:maps/survival/la_juste_recette/regeneration_on_marker

execute if score #rg_la_juste_recette switch.data matches 223.. in switch:game run kill @e[type=item,x=62,y=100,z=-7938,distance=..1000]
execute if score #rg_la_juste_recette switch.data matches 223.. run data remove storage switch:maps to_regenerate.la_juste_recette

execute if score #rg_la_juste_recette switch.data matches 223.. in minecraft:overworld run forceload remove 0 -8000 21 -7876
execute if score #rg_la_juste_recette switch.data matches 223.. in switch:game run forceload remove 0 -8000 21 -7876
execute if score #rg_la_juste_recette switch.data matches 223.. in minecraft:overworld run forceload remove 21 -8000 41 -7876
execute if score #rg_la_juste_recette switch.data matches 223.. in switch:game run forceload remove 21 -8000 41 -7876
execute if score #rg_la_juste_recette switch.data matches 223.. in minecraft:overworld run forceload remove 41 -8000 62 -7876
execute if score #rg_la_juste_recette switch.data matches 223.. in switch:game run forceload remove 41 -8000 62 -7876
execute if score #rg_la_juste_recette switch.data matches 223.. in minecraft:overworld run forceload remove 62 -8000 83 -7876
execute if score #rg_la_juste_recette switch.data matches 223.. in switch:game run forceload remove 62 -8000 83 -7876
execute if score #rg_la_juste_recette switch.data matches 223.. in minecraft:overworld run forceload remove 83 -8000 103 -7876
execute if score #rg_la_juste_recette switch.data matches 223.. in switch:game run forceload remove 83 -8000 103 -7876
execute if score #rg_la_juste_recette switch.data matches 223.. in minecraft:overworld run forceload remove 103 -8000 124 -7876
execute if score #rg_la_juste_recette switch.data matches 223.. in switch:game run forceload remove 103 -8000 124 -7876

execute if score #rg_la_juste_recette switch.data matches 223.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"La Juste Recette","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"11","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_la_juste_recette switch.data matches 223.. run function switch:engine/log_message/apply {message:"Map `La Juste Recette` just regenerated!"}

execute if score #rg_la_juste_recette switch.data matches 223.. in switch:game run function switch:maps/regenerate_doors_macro {name:"la_juste_recette"}
execute if score #rg_la_juste_recette switch.data matches 223.. run scoreboard players reset #rg_la_juste_recette switch.data
execute if score #rg_la_juste_recette switch.data matches 1.. run schedule function switch:maps/survival/la_juste_recette/regenerate 1t

