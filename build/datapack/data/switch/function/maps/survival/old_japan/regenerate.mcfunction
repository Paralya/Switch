
#> switch:maps/survival/old_japan/regenerate
#
# @within	switch:maps/survival/old_japan/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_old_japan switch.data 1
execute if score #rg_old_japan switch.data matches 1 run data modify storage switch:maps to_regenerate.old_japan set value 2b
execute if score #rg_old_japan switch.data matches 1 in minecraft:overworld run forceload add -6000 2000 -5980 2100
execute if score #rg_old_japan switch.data matches 1 in switch:game run forceload add -6000 2000 -5980 2100
execute if score #rg_old_japan switch.data matches 1 in minecraft:overworld run forceload add -5980 2000 -5960 2100
execute if score #rg_old_japan switch.data matches 1 in switch:game run forceload add -5980 2000 -5960 2100
execute if score #rg_old_japan switch.data matches 1 in minecraft:overworld run forceload add -5960 2000 -5940 2100
execute if score #rg_old_japan switch.data matches 1 in switch:game run forceload add -5960 2000 -5940 2100
execute if score #rg_old_japan switch.data matches 1 in minecraft:overworld run forceload add -5940 2000 -5920 2100
execute if score #rg_old_japan switch.data matches 1 in switch:game run forceload add -5940 2000 -5920 2100
execute if score #rg_old_japan switch.data matches 1 in minecraft:overworld run forceload add -5920 2000 -5900 2100
execute if score #rg_old_japan switch.data matches 1 in switch:game run forceload add -5920 2000 -5900 2100

execute if score #rg_old_japan switch.data matches 1 run scoreboard players set #rg_old_japan_y switch.data 100
execute if score #rg_old_japan switch.data matches 1 run scoreboard players set #rg_old_japan_mod switch.data 0
execute if score #rg_old_japan switch.data matches ..260 summon marker run function switch:maps/survival/old_japan/regeneration_on_marker

execute if score #rg_old_japan switch.data matches 261.. in switch:game run kill @e[type=item,x=-5950,y=100,z=2050,distance=..1000]
execute if score #rg_old_japan switch.data matches 261.. run data remove storage switch:maps to_regenerate.old_japan

execute if score #rg_old_japan switch.data matches 261.. in minecraft:overworld run forceload remove -6000 2000 -5980 2100
execute if score #rg_old_japan switch.data matches 261.. in switch:game run forceload remove -6000 2000 -5980 2100
execute if score #rg_old_japan switch.data matches 261.. in minecraft:overworld run forceload remove -5980 2000 -5960 2100
execute if score #rg_old_japan switch.data matches 261.. in switch:game run forceload remove -5980 2000 -5960 2100
execute if score #rg_old_japan switch.data matches 261.. in minecraft:overworld run forceload remove -5960 2000 -5940 2100
execute if score #rg_old_japan switch.data matches 261.. in switch:game run forceload remove -5960 2000 -5940 2100
execute if score #rg_old_japan switch.data matches 261.. in minecraft:overworld run forceload remove -5940 2000 -5920 2100
execute if score #rg_old_japan switch.data matches 261.. in switch:game run forceload remove -5940 2000 -5920 2100
execute if score #rg_old_japan switch.data matches 261.. in minecraft:overworld run forceload remove -5920 2000 -5900 2100
execute if score #rg_old_japan switch.data matches 261.. in switch:game run forceload remove -5920 2000 -5900 2100

execute if score #rg_old_japan switch.data matches 261.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Old Japan","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"13","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_old_japan switch.data matches 261.. run function switch:engine/log_message/apply {message:"Map `Old Japan` just regenerated!"}

execute if score #rg_old_japan switch.data matches 261.. run scoreboard players reset #rg_old_japan switch.data
execute if score #rg_old_japan switch.data matches 1.. run schedule function switch:maps/survival/old_japan/regenerate 1t

