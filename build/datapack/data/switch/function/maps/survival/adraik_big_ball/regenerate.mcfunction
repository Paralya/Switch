
#> switch:maps/survival/adraik_big_ball/regenerate
#
# @within	switch:maps/survival/adraik_big_ball/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_adraik_big_ball switch.data 1
execute if score #rg_adraik_big_ball switch.data matches 1 run data modify storage switch:maps to_regenerate.adraik_big_ball set value 2b
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6000 2000 6014 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6000 2000 6014 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6014 2000 6027 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6014 2000 6027 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6027 2000 6041 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6027 2000 6041 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6041 2000 6055 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6041 2000 6055 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6055 2000 6069 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6055 2000 6069 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6069 2000 6082 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6069 2000 6082 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6082 2000 6096 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6082 2000 6096 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6096 2000 6110 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6096 2000 6110 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6110 2000 6124 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6110 2000 6124 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6124 2000 6137 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6124 2000 6137 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6137 2000 6151 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6137 2000 6151 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6151 2000 6165 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6151 2000 6165 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6165 2000 6179 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6165 2000 6179 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6179 2000 6192 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6179 2000 6192 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6192 2000 6206 2205
execute if score #rg_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6192 2000 6206 2205

execute if score #rg_adraik_big_ball switch.data matches 1 run scoreboard players set #rg_adraik_big_ball_y switch.data 100
execute if score #rg_adraik_big_ball switch.data matches 1 run scoreboard players set #rg_adraik_big_ball_mod switch.data 0
execute if score #rg_adraik_big_ball switch.data matches ..2370 summon marker run function switch:maps/survival/adraik_big_ball/regeneration_on_marker

execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run kill @e[type=item,x=6103,y=100,z=2102,distance=..1000]
execute if score #rg_adraik_big_ball switch.data matches 2371.. run data remove storage switch:maps to_regenerate.adraik_big_ball

execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 6000 2000 6014 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 6000 2000 6014 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 6014 2000 6027 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 6014 2000 6027 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 6027 2000 6041 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 6027 2000 6041 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 6041 2000 6055 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 6041 2000 6055 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 6055 2000 6069 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 6055 2000 6069 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 6069 2000 6082 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 6069 2000 6082 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 6082 2000 6096 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 6082 2000 6096 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 6096 2000 6110 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 6096 2000 6110 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 6110 2000 6124 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 6110 2000 6124 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 6124 2000 6137 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 6124 2000 6137 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 6137 2000 6151 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 6137 2000 6151 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 6151 2000 6165 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 6151 2000 6165 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 6165 2000 6179 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 6165 2000 6179 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 6179 2000 6192 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 6179 2000 6192 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in minecraft:overworld run forceload remove 6192 2000 6206 2205
execute if score #rg_adraik_big_ball switch.data matches 2371.. in switch:game run forceload remove 6192 2000 6206 2205

execute if score #rg_adraik_big_ball switch.data matches 2371.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Adraik's Big Ball","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"58","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_adraik_big_ball switch.data matches 2371.. run function switch:engine/log_message/apply {message:"Map `Adraik's Big Ball` just regenerated!"}

execute if score #rg_adraik_big_ball switch.data matches 2371.. run scoreboard players reset #rg_adraik_big_ball switch.data
execute if score #rg_adraik_big_ball switch.data matches 1.. run schedule function switch:maps/survival/adraik_big_ball/regenerate 1t

