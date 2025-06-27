
#> switch:maps/survival/remelta_cluedo/regenerate
#
# @within	switch:maps/survival/remelta_cluedo/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_remelta_cluedo switch.data 1
execute if score #rg_remelta_cluedo switch.data matches 1 run data modify storage switch:maps to_regenerate.remelta_cluedo set value 2b
execute if score #rg_remelta_cluedo switch.data matches 1 in minecraft:overworld run forceload add 118000 118000 118030 118066
execute if score #rg_remelta_cluedo switch.data matches 1 in switch:game run forceload add 118000 118000 118030 118066
execute if score #rg_remelta_cluedo switch.data matches 1 in minecraft:overworld run forceload add 118030 118000 118059 118066
execute if score #rg_remelta_cluedo switch.data matches 1 in switch:game run forceload add 118030 118000 118059 118066
execute if score #rg_remelta_cluedo switch.data matches 1 in minecraft:overworld run forceload add 118059 118000 118089 118066
execute if score #rg_remelta_cluedo switch.data matches 1 in switch:game run forceload add 118059 118000 118089 118066

execute if score #rg_remelta_cluedo switch.data matches 1 run scoreboard players set #rg_remelta_cluedo_y switch.data 100
execute if score #rg_remelta_cluedo switch.data matches 1 run scoreboard players set #rg_remelta_cluedo_mod switch.data 0
execute if score #rg_remelta_cluedo switch.data matches ..129 summon marker run function switch:maps/survival/remelta_cluedo/regeneration_on_marker

execute if score #rg_remelta_cluedo switch.data matches 130.. in switch:game run kill @e[type=item,x=118044,y=100,z=118033,distance=..1000]
execute if score #rg_remelta_cluedo switch.data matches 130.. run data remove storage switch:maps to_regenerate.remelta_cluedo

execute if score #rg_remelta_cluedo switch.data matches 130.. in minecraft:overworld run forceload remove 118000 118000 118030 118066
execute if score #rg_remelta_cluedo switch.data matches 130.. in switch:game run forceload remove 118000 118000 118030 118066

execute if score #rg_remelta_cluedo switch.data matches 130.. in minecraft:overworld run forceload remove 118030 118000 118059 118066
execute if score #rg_remelta_cluedo switch.data matches 130.. in switch:game run forceload remove 118030 118000 118059 118066

execute if score #rg_remelta_cluedo switch.data matches 130.. in minecraft:overworld run forceload remove 118059 118000 118089 118066
execute if score #rg_remelta_cluedo switch.data matches 130.. in switch:game run forceload remove 118059 118000 118089 118066

execute if score #rg_remelta_cluedo switch.data matches 130.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Cluedo","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"6","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_remelta_cluedo switch.data matches 130.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Cluedo` just regenerated!"}'
execute if score #rg_remelta_cluedo switch.data matches 130.. run function switch:engine/log_message/apply

execute if score #rg_remelta_cluedo switch.data matches 130.. in switch:game run function switch:maps/regenerate_doors_macro {name:"remelta_cluedo"}
execute if score #rg_remelta_cluedo switch.data matches 130.. run scoreboard players reset #rg_remelta_cluedo switch.data
execute if score #rg_remelta_cluedo switch.data matches 1.. run schedule function switch:maps/survival/remelta_cluedo/regenerate 1t

