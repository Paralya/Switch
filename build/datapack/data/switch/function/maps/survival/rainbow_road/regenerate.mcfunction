
#> switch:maps/survival/rainbow_road/regenerate
#
# @within	switch:maps/survival/rainbow_road/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_rainbow_road switch.data 1
execute if score #rg_rainbow_road switch.data matches 1 run data modify storage switch:maps to_regenerate.rainbow_road set value 2b
execute if score #rg_rainbow_road switch.data matches 1 in minecraft:overworld run forceload add -6000 -6000 -5983 -5863
execute if score #rg_rainbow_road switch.data matches 1 in switch:game run forceload add -6000 -6000 -5983 -5863
execute if score #rg_rainbow_road switch.data matches 1 in minecraft:overworld run forceload add -5983 -6000 -5965 -5863
execute if score #rg_rainbow_road switch.data matches 1 in switch:game run forceload add -5983 -6000 -5965 -5863
execute if score #rg_rainbow_road switch.data matches 1 in minecraft:overworld run forceload add -5965 -6000 -5948 -5863
execute if score #rg_rainbow_road switch.data matches 1 in switch:game run forceload add -5965 -6000 -5948 -5863
execute if score #rg_rainbow_road switch.data matches 1 in minecraft:overworld run forceload add -5948 -6000 -5930 -5863
execute if score #rg_rainbow_road switch.data matches 1 in switch:game run forceload add -5948 -6000 -5930 -5863
execute if score #rg_rainbow_road switch.data matches 1 in minecraft:overworld run forceload add -5930 -6000 -5913 -5863
execute if score #rg_rainbow_road switch.data matches 1 in switch:game run forceload add -5930 -6000 -5913 -5863
execute if score #rg_rainbow_road switch.data matches 1 in minecraft:overworld run forceload add -5913 -6000 -5895 -5863
execute if score #rg_rainbow_road switch.data matches 1 in switch:game run forceload add -5913 -6000 -5895 -5863
execute if score #rg_rainbow_road switch.data matches 1 in minecraft:overworld run forceload add -5895 -6000 -5878 -5863
execute if score #rg_rainbow_road switch.data matches 1 in switch:game run forceload add -5895 -6000 -5878 -5863

execute if score #rg_rainbow_road switch.data matches 1 run scoreboard players set #rg_rainbow_road_y switch.data 100
execute if score #rg_rainbow_road switch.data matches 1 run scoreboard players set #rg_rainbow_road_mod switch.data 0
execute if score #rg_rainbow_road switch.data matches ..469 summon marker run function switch:maps/survival/rainbow_road/regeneration_on_marker

execute if score #rg_rainbow_road switch.data matches 470.. in switch:game run kill @e[type=item,x=-5939,y=100,z=-5931,distance=..1000]
execute if score #rg_rainbow_road switch.data matches 470.. run data remove storage switch:maps to_regenerate.rainbow_road

execute if score #rg_rainbow_road switch.data matches 470.. in minecraft:overworld run forceload remove -6000 -6000 -5983 -5863
execute if score #rg_rainbow_road switch.data matches 470.. in switch:game run forceload remove -6000 -6000 -5983 -5863
execute if score #rg_rainbow_road switch.data matches 470.. in minecraft:overworld run forceload remove -5983 -6000 -5965 -5863
execute if score #rg_rainbow_road switch.data matches 470.. in switch:game run forceload remove -5983 -6000 -5965 -5863
execute if score #rg_rainbow_road switch.data matches 470.. in minecraft:overworld run forceload remove -5965 -6000 -5948 -5863
execute if score #rg_rainbow_road switch.data matches 470.. in switch:game run forceload remove -5965 -6000 -5948 -5863
execute if score #rg_rainbow_road switch.data matches 470.. in minecraft:overworld run forceload remove -5948 -6000 -5930 -5863
execute if score #rg_rainbow_road switch.data matches 470.. in switch:game run forceload remove -5948 -6000 -5930 -5863
execute if score #rg_rainbow_road switch.data matches 470.. in minecraft:overworld run forceload remove -5930 -6000 -5913 -5863
execute if score #rg_rainbow_road switch.data matches 470.. in switch:game run forceload remove -5930 -6000 -5913 -5863
execute if score #rg_rainbow_road switch.data matches 470.. in minecraft:overworld run forceload remove -5913 -6000 -5895 -5863
execute if score #rg_rainbow_road switch.data matches 470.. in switch:game run forceload remove -5913 -6000 -5895 -5863
execute if score #rg_rainbow_road switch.data matches 470.. in minecraft:overworld run forceload remove -5895 -6000 -5878 -5863
execute if score #rg_rainbow_road switch.data matches 470.. in switch:game run forceload remove -5895 -6000 -5878 -5863

execute if score #rg_rainbow_road switch.data matches 470.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Rainbow Road","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"23","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_rainbow_road switch.data matches 470.. run function switch:engine/log_message/apply {message:"Map `Rainbow Road` just regenerated!"}

execute if score #rg_rainbow_road switch.data matches 470.. run scoreboard players reset #rg_rainbow_road switch.data
execute if score #rg_rainbow_road switch.data matches 1.. run schedule function switch:maps/survival/rainbow_road/regenerate 1t

