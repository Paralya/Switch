
#> switch:maps/survival/stardust_boss_zone/regenerate
#
# @within	switch:maps/survival/stardust_boss_zone/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_stardust_boss_zone switch.data 1
execute if score #rg_stardust_boss_zone switch.data matches 1 run data modify storage switch:maps to_regenerate.stardust_boss_zone set value 2b
execute if score #rg_stardust_boss_zone switch.data matches 1 in minecraft:overworld run forceload add -8000 -10000 -7984 -9835
execute if score #rg_stardust_boss_zone switch.data matches 1 in switch:game run forceload add -8000 -10000 -7984 -9835
execute if score #rg_stardust_boss_zone switch.data matches 1 in minecraft:overworld run forceload add -7984 -10000 -7967 -9835
execute if score #rg_stardust_boss_zone switch.data matches 1 in switch:game run forceload add -7984 -10000 -7967 -9835
execute if score #rg_stardust_boss_zone switch.data matches 1 in minecraft:overworld run forceload add -7967 -10000 -7950 -9835
execute if score #rg_stardust_boss_zone switch.data matches 1 in switch:game run forceload add -7967 -10000 -7950 -9835
execute if score #rg_stardust_boss_zone switch.data matches 1 in minecraft:overworld run forceload add -7950 -10000 -7934 -9835
execute if score #rg_stardust_boss_zone switch.data matches 1 in switch:game run forceload add -7950 -10000 -7934 -9835
execute if score #rg_stardust_boss_zone switch.data matches 1 in minecraft:overworld run forceload add -7934 -10000 -7918 -9835
execute if score #rg_stardust_boss_zone switch.data matches 1 in switch:game run forceload add -7934 -10000 -7918 -9835
execute if score #rg_stardust_boss_zone switch.data matches 1 in minecraft:overworld run forceload add -7918 -10000 -7901 -9835
execute if score #rg_stardust_boss_zone switch.data matches 1 in switch:game run forceload add -7918 -10000 -7901 -9835
execute if score #rg_stardust_boss_zone switch.data matches 1 in minecraft:overworld run forceload add -7901 -10000 -7884 -9835
execute if score #rg_stardust_boss_zone switch.data matches 1 in switch:game run forceload add -7901 -10000 -7884 -9835
execute if score #rg_stardust_boss_zone switch.data matches 1 in minecraft:overworld run forceload add -7884 -10000 -7868 -9835
execute if score #rg_stardust_boss_zone switch.data matches 1 in switch:game run forceload add -7884 -10000 -7868 -9835

execute if score #rg_stardust_boss_zone switch.data matches 1 run scoreboard players set #rg_stardust_boss_zone_y switch.data 100
execute if score #rg_stardust_boss_zone switch.data matches 1 run scoreboard players set #rg_stardust_boss_zone_mod switch.data 0
execute if score #rg_stardust_boss_zone switch.data matches ..912 summon marker run function switch:maps/survival/stardust_boss_zone/regeneration_on_marker

execute if score #rg_stardust_boss_zone switch.data matches 913.. in switch:game run kill @e[type=item,x=-7934,y=100,z=-9917,distance=..1000]
execute if score #rg_stardust_boss_zone switch.data matches 913.. run data remove storage switch:maps to_regenerate.stardust_boss_zone

execute if score #rg_stardust_boss_zone switch.data matches 913.. in minecraft:overworld run forceload remove -8000 -10000 -7984 -9835
execute if score #rg_stardust_boss_zone switch.data matches 913.. in switch:game run forceload remove -8000 -10000 -7984 -9835
execute if score #rg_stardust_boss_zone switch.data matches 913.. in minecraft:overworld run forceload remove -7984 -10000 -7967 -9835
execute if score #rg_stardust_boss_zone switch.data matches 913.. in switch:game run forceload remove -7984 -10000 -7967 -9835
execute if score #rg_stardust_boss_zone switch.data matches 913.. in minecraft:overworld run forceload remove -7967 -10000 -7950 -9835
execute if score #rg_stardust_boss_zone switch.data matches 913.. in switch:game run forceload remove -7967 -10000 -7950 -9835
execute if score #rg_stardust_boss_zone switch.data matches 913.. in minecraft:overworld run forceload remove -7950 -10000 -7934 -9835
execute if score #rg_stardust_boss_zone switch.data matches 913.. in switch:game run forceload remove -7950 -10000 -7934 -9835
execute if score #rg_stardust_boss_zone switch.data matches 913.. in minecraft:overworld run forceload remove -7934 -10000 -7918 -9835
execute if score #rg_stardust_boss_zone switch.data matches 913.. in switch:game run forceload remove -7934 -10000 -7918 -9835
execute if score #rg_stardust_boss_zone switch.data matches 913.. in minecraft:overworld run forceload remove -7918 -10000 -7901 -9835
execute if score #rg_stardust_boss_zone switch.data matches 913.. in switch:game run forceload remove -7918 -10000 -7901 -9835
execute if score #rg_stardust_boss_zone switch.data matches 913.. in minecraft:overworld run forceload remove -7901 -10000 -7884 -9835
execute if score #rg_stardust_boss_zone switch.data matches 913.. in switch:game run forceload remove -7901 -10000 -7884 -9835
execute if score #rg_stardust_boss_zone switch.data matches 913.. in minecraft:overworld run forceload remove -7884 -10000 -7868 -9835
execute if score #rg_stardust_boss_zone switch.data matches 913.. in switch:game run forceload remove -7884 -10000 -7868 -9835

execute if score #rg_stardust_boss_zone switch.data matches 913.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Stardust Boss Zone","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"45","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_stardust_boss_zone switch.data matches 913.. run function switch:engine/log_message/apply {message:"Map `Stardust Boss Zone` just regenerated!"}

execute if score #rg_stardust_boss_zone switch.data matches 913.. run scoreboard players reset #rg_stardust_boss_zone switch.data
execute if score #rg_stardust_boss_zone switch.data matches 1.. run schedule function switch:maps/survival/stardust_boss_zone/regenerate 1t

