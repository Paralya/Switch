
#> switch:maps/survival/void_desert/regenerate
#
# @within	switch:maps/survival/void_desert/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_void_desert switch.data 1
execute if score #rg_void_desert switch.data matches 1 run data modify storage switch:maps to_regenerate.void_desert set value 2b
execute if score #rg_void_desert switch.data matches 1 in minecraft:overworld run forceload add 2000 8000 2020 8100
execute if score #rg_void_desert switch.data matches 1 in switch:game run forceload add 2000 8000 2020 8100
execute if score #rg_void_desert switch.data matches 1 in minecraft:overworld run forceload add 2020 8000 2040 8100
execute if score #rg_void_desert switch.data matches 1 in switch:game run forceload add 2020 8000 2040 8100
execute if score #rg_void_desert switch.data matches 1 in minecraft:overworld run forceload add 2040 8000 2060 8100
execute if score #rg_void_desert switch.data matches 1 in switch:game run forceload add 2040 8000 2060 8100
execute if score #rg_void_desert switch.data matches 1 in minecraft:overworld run forceload add 2060 8000 2080 8100
execute if score #rg_void_desert switch.data matches 1 in switch:game run forceload add 2060 8000 2080 8100
execute if score #rg_void_desert switch.data matches 1 in minecraft:overworld run forceload add 2080 8000 2100 8100
execute if score #rg_void_desert switch.data matches 1 in switch:game run forceload add 2080 8000 2100 8100

execute if score #rg_void_desert switch.data matches 1 run scoreboard players set #rg_void_desert_y switch.data 100
execute if score #rg_void_desert switch.data matches 1 run scoreboard players set #rg_void_desert_mod switch.data 0
execute if score #rg_void_desert switch.data matches ..455 summon marker run function switch:maps/survival/void_desert/regeneration_on_marker

execute if score #rg_void_desert switch.data matches 456.. in switch:game run kill @e[type=item,x=2050,y=100,z=8050,distance=..1000]
execute if score #rg_void_desert switch.data matches 456.. run data remove storage switch:maps to_regenerate.void_desert

execute if score #rg_void_desert switch.data matches 456.. in minecraft:overworld run forceload remove 2000 8000 2020 8100
execute if score #rg_void_desert switch.data matches 456.. in switch:game run forceload remove 2000 8000 2020 8100
execute if score #rg_void_desert switch.data matches 456.. in minecraft:overworld run forceload remove 2020 8000 2040 8100
execute if score #rg_void_desert switch.data matches 456.. in switch:game run forceload remove 2020 8000 2040 8100
execute if score #rg_void_desert switch.data matches 456.. in minecraft:overworld run forceload remove 2040 8000 2060 8100
execute if score #rg_void_desert switch.data matches 456.. in switch:game run forceload remove 2040 8000 2060 8100
execute if score #rg_void_desert switch.data matches 456.. in minecraft:overworld run forceload remove 2060 8000 2080 8100
execute if score #rg_void_desert switch.data matches 456.. in switch:game run forceload remove 2060 8000 2080 8100
execute if score #rg_void_desert switch.data matches 456.. in minecraft:overworld run forceload remove 2080 8000 2100 8100
execute if score #rg_void_desert switch.data matches 456.. in switch:game run forceload remove 2080 8000 2100 8100

execute if score #rg_void_desert switch.data matches 456.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Void Desert","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"22","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_void_desert switch.data matches 456.. run function switch:engine/log_message/apply {message:"Map `Void Desert` just regenerated!"}

execute if score #rg_void_desert switch.data matches 456.. run scoreboard players reset #rg_void_desert switch.data
execute if score #rg_void_desert switch.data matches 1.. run schedule function switch:maps/survival/void_desert/regenerate 1t

