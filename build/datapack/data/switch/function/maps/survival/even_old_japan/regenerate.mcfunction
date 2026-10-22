
#> switch:maps/survival/even_old_japan/regenerate
#
# @within	switch:maps/survival/even_old_japan/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_even_old_japan switch.data 1
execute if score #rg_even_old_japan switch.data matches 1 run data modify storage switch:maps to_regenerate.even_old_japan set value 2b
execute if score #rg_even_old_japan switch.data matches 1 in minecraft:overworld run forceload add 12000 -12000 12020 -11900
execute if score #rg_even_old_japan switch.data matches 1 in switch:game run forceload add 12000 -12000 12020 -11900
execute if score #rg_even_old_japan switch.data matches 1 in minecraft:overworld run forceload add 12020 -12000 12040 -11900
execute if score #rg_even_old_japan switch.data matches 1 in switch:game run forceload add 12020 -12000 12040 -11900
execute if score #rg_even_old_japan switch.data matches 1 in minecraft:overworld run forceload add 12040 -12000 12060 -11900
execute if score #rg_even_old_japan switch.data matches 1 in switch:game run forceload add 12040 -12000 12060 -11900
execute if score #rg_even_old_japan switch.data matches 1 in minecraft:overworld run forceload add 12060 -12000 12080 -11900
execute if score #rg_even_old_japan switch.data matches 1 in switch:game run forceload add 12060 -12000 12080 -11900
execute if score #rg_even_old_japan switch.data matches 1 in minecraft:overworld run forceload add 12080 -12000 12100 -11900
execute if score #rg_even_old_japan switch.data matches 1 in switch:game run forceload add 12080 -12000 12100 -11900

execute if score #rg_even_old_japan switch.data matches 1 run scoreboard players set #rg_even_old_japan_y switch.data 100
execute if score #rg_even_old_japan switch.data matches 1 run scoreboard players set #rg_even_old_japan_mod switch.data 0
execute if score #rg_even_old_japan switch.data matches ..265 summon marker run function switch:maps/survival/even_old_japan/regeneration_on_marker

execute if score #rg_even_old_japan switch.data matches 266.. in switch:game run kill @e[type=item,x=12050,y=100,z=-11950,distance=..1000]
execute if score #rg_even_old_japan switch.data matches 266.. run data remove storage switch:maps to_regenerate.even_old_japan

execute if score #rg_even_old_japan switch.data matches 266.. in minecraft:overworld run forceload remove 12000 -12000 12020 -11900
execute if score #rg_even_old_japan switch.data matches 266.. in switch:game run forceload remove 12000 -12000 12020 -11900
execute if score #rg_even_old_japan switch.data matches 266.. in minecraft:overworld run forceload remove 12020 -12000 12040 -11900
execute if score #rg_even_old_japan switch.data matches 266.. in switch:game run forceload remove 12020 -12000 12040 -11900
execute if score #rg_even_old_japan switch.data matches 266.. in minecraft:overworld run forceload remove 12040 -12000 12060 -11900
execute if score #rg_even_old_japan switch.data matches 266.. in switch:game run forceload remove 12040 -12000 12060 -11900
execute if score #rg_even_old_japan switch.data matches 266.. in minecraft:overworld run forceload remove 12060 -12000 12080 -11900
execute if score #rg_even_old_japan switch.data matches 266.. in switch:game run forceload remove 12060 -12000 12080 -11900
execute if score #rg_even_old_japan switch.data matches 266.. in minecraft:overworld run forceload remove 12080 -12000 12100 -11900
execute if score #rg_even_old_japan switch.data matches 266.. in switch:game run forceload remove 12080 -12000 12100 -11900

execute if score #rg_even_old_japan switch.data matches 266.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Old Japan","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"13","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_even_old_japan switch.data matches 266.. run function switch:engine/log_message/apply {message:"Map `Old Japan` just regenerated!"}

execute if score #rg_even_old_japan switch.data matches 266.. run scoreboard players reset #rg_even_old_japan switch.data
execute if score #rg_even_old_japan switch.data matches 1.. run schedule function switch:maps/survival/even_old_japan/regenerate 1t

