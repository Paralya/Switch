
#> switch:maps/survival/lg_village/regenerate
#
# @within	switch:maps/survival/lg_village/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_lg_village switch.data 1
execute if score #rg_lg_village switch.data matches 1 run data modify storage switch:maps to_regenerate.lg_village set value 2b
execute if score #rg_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96000 96000 96012 96239
execute if score #rg_lg_village switch.data matches 1 in switch:game run forceload add 96000 96000 96012 96239
execute if score #rg_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96012 96000 96025 96239
execute if score #rg_lg_village switch.data matches 1 in switch:game run forceload add 96012 96000 96025 96239
execute if score #rg_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96025 96000 96037 96239
execute if score #rg_lg_village switch.data matches 1 in switch:game run forceload add 96025 96000 96037 96239
execute if score #rg_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96037 96000 96049 96239
execute if score #rg_lg_village switch.data matches 1 in switch:game run forceload add 96037 96000 96049 96239
execute if score #rg_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96049 96000 96062 96239
execute if score #rg_lg_village switch.data matches 1 in switch:game run forceload add 96049 96000 96062 96239
execute if score #rg_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96062 96000 96074 96239
execute if score #rg_lg_village switch.data matches 1 in switch:game run forceload add 96062 96000 96074 96239
execute if score #rg_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96074 96000 96086 96239
execute if score #rg_lg_village switch.data matches 1 in switch:game run forceload add 96074 96000 96086 96239
execute if score #rg_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96086 96000 96098 96239
execute if score #rg_lg_village switch.data matches 1 in switch:game run forceload add 96086 96000 96098 96239
execute if score #rg_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96098 96000 96111 96239
execute if score #rg_lg_village switch.data matches 1 in switch:game run forceload add 96098 96000 96111 96239
execute if score #rg_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96111 96000 96123 96239
execute if score #rg_lg_village switch.data matches 1 in switch:game run forceload add 96111 96000 96123 96239
execute if score #rg_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96123 96000 96135 96239
execute if score #rg_lg_village switch.data matches 1 in switch:game run forceload add 96123 96000 96135 96239
execute if score #rg_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96135 96000 96148 96239
execute if score #rg_lg_village switch.data matches 1 in switch:game run forceload add 96135 96000 96148 96239
execute if score #rg_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96148 96000 96160 96239
execute if score #rg_lg_village switch.data matches 1 in switch:game run forceload add 96148 96000 96160 96239
execute if score #rg_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96160 96000 96172 96239
execute if score #rg_lg_village switch.data matches 1 in switch:game run forceload add 96160 96000 96172 96239
execute if score #rg_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96172 96000 96184 96239
execute if score #rg_lg_village switch.data matches 1 in switch:game run forceload add 96172 96000 96184 96239
execute if score #rg_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96184 96000 96197 96239
execute if score #rg_lg_village switch.data matches 1 in switch:game run forceload add 96184 96000 96197 96239
execute if score #rg_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96197 96000 96209 96239
execute if score #rg_lg_village switch.data matches 1 in switch:game run forceload add 96197 96000 96209 96239
execute if score #rg_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96209 96000 96221 96239
execute if score #rg_lg_village switch.data matches 1 in switch:game run forceload add 96209 96000 96221 96239
execute if score #rg_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96221 96000 96234 96239
execute if score #rg_lg_village switch.data matches 1 in switch:game run forceload add 96221 96000 96234 96239
execute if score #rg_lg_village switch.data matches 1 in minecraft:overworld run forceload add 96234 96000 96246 96239
execute if score #rg_lg_village switch.data matches 1 in switch:game run forceload add 96234 96000 96246 96239

execute if score #rg_lg_village switch.data matches 1 run scoreboard players set #rg_lg_village_y switch.data -63
execute if score #rg_lg_village switch.data matches 1 run scoreboard players set #rg_lg_village_mod switch.data 0
execute if score #rg_lg_village switch.data matches ..2280 summon marker run function switch:maps/survival/lg_village/regeneration_on_marker

execute if score #rg_lg_village switch.data matches 2281.. in switch:game run kill @e[type=item,x=96123,y=-63,z=96119,distance=..1000]
execute if score #rg_lg_village switch.data matches 2281.. run data remove storage switch:maps to_regenerate.lg_village

execute if score #rg_lg_village switch.data matches 2281.. in minecraft:overworld run forceload remove 96000 96000 96012 96239
execute if score #rg_lg_village switch.data matches 2281.. in switch:game run forceload remove 96000 96000 96012 96239

execute if score #rg_lg_village switch.data matches 2281.. in minecraft:overworld run forceload remove 96012 96000 96025 96239
execute if score #rg_lg_village switch.data matches 2281.. in switch:game run forceload remove 96012 96000 96025 96239

execute if score #rg_lg_village switch.data matches 2281.. in minecraft:overworld run forceload remove 96025 96000 96037 96239
execute if score #rg_lg_village switch.data matches 2281.. in switch:game run forceload remove 96025 96000 96037 96239

execute if score #rg_lg_village switch.data matches 2281.. in minecraft:overworld run forceload remove 96037 96000 96049 96239
execute if score #rg_lg_village switch.data matches 2281.. in switch:game run forceload remove 96037 96000 96049 96239

execute if score #rg_lg_village switch.data matches 2281.. in minecraft:overworld run forceload remove 96049 96000 96062 96239
execute if score #rg_lg_village switch.data matches 2281.. in switch:game run forceload remove 96049 96000 96062 96239

execute if score #rg_lg_village switch.data matches 2281.. in minecraft:overworld run forceload remove 96062 96000 96074 96239
execute if score #rg_lg_village switch.data matches 2281.. in switch:game run forceload remove 96062 96000 96074 96239

execute if score #rg_lg_village switch.data matches 2281.. in minecraft:overworld run forceload remove 96074 96000 96086 96239
execute if score #rg_lg_village switch.data matches 2281.. in switch:game run forceload remove 96074 96000 96086 96239

execute if score #rg_lg_village switch.data matches 2281.. in minecraft:overworld run forceload remove 96086 96000 96098 96239
execute if score #rg_lg_village switch.data matches 2281.. in switch:game run forceload remove 96086 96000 96098 96239

execute if score #rg_lg_village switch.data matches 2281.. in minecraft:overworld run forceload remove 96098 96000 96111 96239
execute if score #rg_lg_village switch.data matches 2281.. in switch:game run forceload remove 96098 96000 96111 96239

execute if score #rg_lg_village switch.data matches 2281.. in minecraft:overworld run forceload remove 96111 96000 96123 96239
execute if score #rg_lg_village switch.data matches 2281.. in switch:game run forceload remove 96111 96000 96123 96239

execute if score #rg_lg_village switch.data matches 2281.. in minecraft:overworld run forceload remove 96123 96000 96135 96239
execute if score #rg_lg_village switch.data matches 2281.. in switch:game run forceload remove 96123 96000 96135 96239

execute if score #rg_lg_village switch.data matches 2281.. in minecraft:overworld run forceload remove 96135 96000 96148 96239
execute if score #rg_lg_village switch.data matches 2281.. in switch:game run forceload remove 96135 96000 96148 96239

execute if score #rg_lg_village switch.data matches 2281.. in minecraft:overworld run forceload remove 96148 96000 96160 96239
execute if score #rg_lg_village switch.data matches 2281.. in switch:game run forceload remove 96148 96000 96160 96239

execute if score #rg_lg_village switch.data matches 2281.. in minecraft:overworld run forceload remove 96160 96000 96172 96239
execute if score #rg_lg_village switch.data matches 2281.. in switch:game run forceload remove 96160 96000 96172 96239

execute if score #rg_lg_village switch.data matches 2281.. in minecraft:overworld run forceload remove 96172 96000 96184 96239
execute if score #rg_lg_village switch.data matches 2281.. in switch:game run forceload remove 96172 96000 96184 96239

execute if score #rg_lg_village switch.data matches 2281.. in minecraft:overworld run forceload remove 96184 96000 96197 96239
execute if score #rg_lg_village switch.data matches 2281.. in switch:game run forceload remove 96184 96000 96197 96239

execute if score #rg_lg_village switch.data matches 2281.. in minecraft:overworld run forceload remove 96197 96000 96209 96239
execute if score #rg_lg_village switch.data matches 2281.. in switch:game run forceload remove 96197 96000 96209 96239

execute if score #rg_lg_village switch.data matches 2281.. in minecraft:overworld run forceload remove 96209 96000 96221 96239
execute if score #rg_lg_village switch.data matches 2281.. in switch:game run forceload remove 96209 96000 96221 96239

execute if score #rg_lg_village switch.data matches 2281.. in minecraft:overworld run forceload remove 96221 96000 96234 96239
execute if score #rg_lg_village switch.data matches 2281.. in switch:game run forceload remove 96221 96000 96234 96239

execute if score #rg_lg_village switch.data matches 2281.. in minecraft:overworld run forceload remove 96234 96000 96246 96239
execute if score #rg_lg_village switch.data matches 2281.. in switch:game run forceload remove 96234 96000 96246 96239

execute if score #rg_lg_village switch.data matches 2281.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"lg_village","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"54","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_lg_village switch.data matches 2281.. run data modify storage switch:main MessageToLog set value '{"text":"Map `lg_village` just regenerated!"}'
execute if score #rg_lg_village switch.data matches 2281.. run function switch:engine/log_message/apply

execute if score #rg_lg_village switch.data matches 2281.. in switch:game run function switch:maps/regenerate_doors_macro {name:"lg_village"}
execute if score #rg_lg_village switch.data matches 2281.. run scoreboard players reset #rg_lg_village switch.data
execute if score #rg_lg_village switch.data matches 1.. run schedule function switch:maps/survival/lg_village/regenerate 1t

