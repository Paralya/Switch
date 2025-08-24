
#> switch:maps/survival/adraik_big_ball/regenerate
#
# @within	switch:maps/survival/adraik_big_ball/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_adraik_big_ball switch.data 1
execute if score #rg_adraik_big_ball switch.data matches 1 run data modify storage switch:maps to_regenerate.adraik_big_ball set value 2b
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33000 33000 33014 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33000 33000 33014 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33014 33000 33027 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33014 33000 33027 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33027 33000 33041 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33027 33000 33041 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33041 33000 33055 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33041 33000 33055 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33055 33000 33069 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33055 33000 33069 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33069 33000 33082 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33069 33000 33082 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33082 33000 33096 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33082 33000 33096 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33096 33000 33110 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33096 33000 33110 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33110 33000 33124 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33110 33000 33124 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33124 33000 33137 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33124 33000 33137 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33137 33000 33151 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33137 33000 33151 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33151 33000 33165 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33151 33000 33165 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33165 33000 33179 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33165 33000 33179 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33179 33000 33192 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33179 33000 33192 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 33192 33000 33206 33205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 33192 33000 33206 33205

execute if score #rg_adraik_big_ball switch.data matches 1 run scoreboard players set #rg_adraik_big_ball_y switch.data 100
execute if score #rg_adraik_big_ball switch.data matches 1 run scoreboard players set #rg_adraik_big_ball_mod switch.data 0
execute if score #rg_adraik_big_ball switch.data matches ..2370 summon marker run function switch:maps/survival/adraik_big_ball/regeneration_on_marker

execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run kill @e[type=item,x=33103,y=100,z=33102,distance=..1000]
execute if score #rg_adraik_big_ball switch.data matches 2371.. run data remove storage switch:maps to_regenerate.adraik_big_ball

execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 33000 33000 33014 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 33000 33000 33014 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 33014 33000 33027 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 33014 33000 33027 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 33027 33000 33041 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 33027 33000 33041 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 33041 33000 33055 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 33041 33000 33055 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 33055 33000 33069 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 33055 33000 33069 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 33069 33000 33082 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 33069 33000 33082 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 33082 33000 33096 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 33082 33000 33096 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 33096 33000 33110 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 33096 33000 33110 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 33110 33000 33124 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 33110 33000 33124 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 33124 33000 33137 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 33124 33000 33137 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 33137 33000 33151 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 33137 33000 33151 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 33151 33000 33165 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 33151 33000 33165 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 33165 33000 33179 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 33165 33000 33179 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 33179 33000 33192 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 33179 33000 33192 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 33192 33000 33206 33205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 33192 33000 33206 33205

execute if score #rg_adraik_big_ball switch.data matches 2371.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Adraik's Big Ball","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"58","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_adraik_big_ball switch.data matches 2371.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Adraik\'s Big Ball` just regenerated!"}'
execute if score #rg_adraik_big_ball switch.data matches 2371.. run function switch:engine/log_message/apply

execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run function switch:maps/regenerate_doors_macro {name:"adraik_big_ball"}
execute if score #rg_adraik_big_ball switch.data matches 2371.. run scoreboard players reset #rg_adraik_big_ball switch.data
execute if score #rg_adraik_big_ball switch.data matches 1.. run schedule function switch:maps/survival/adraik_big_ball/regenerate 1t

