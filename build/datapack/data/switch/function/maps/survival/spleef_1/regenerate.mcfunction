
#> switch:maps/survival/spleef_1/regenerate
#
# @within	switch:maps/survival/spleef_1/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_spleef_1 switch.data 1
execute if score #rg_spleef_1 switch.data matches 1 run data modify storage switch:maps to_regenerate.spleef_1 set value 2b
execute if score #rg_spleef_1 switch.data matches 1 in minecraft:overworld run forceload add 27960 27960 27980 28040
execute if score #rg_spleef_1 switch.data matches 1 in switch:game run forceload add 27960 27960 27980 28040
execute if score #rg_spleef_1 switch.data matches 1 in minecraft:overworld run forceload add 27980 27960 28000 28040
execute if score #rg_spleef_1 switch.data matches 1 in switch:game run forceload add 27980 27960 28000 28040
execute if score #rg_spleef_1 switch.data matches 1 in minecraft:overworld run forceload add 28000 27960 28020 28040
execute if score #rg_spleef_1 switch.data matches 1 in switch:game run forceload add 28000 27960 28020 28040
execute if score #rg_spleef_1 switch.data matches 1 in minecraft:overworld run forceload add 28020 27960 28040 28040
execute if score #rg_spleef_1 switch.data matches 1 in switch:game run forceload add 28020 27960 28040 28040

execute if score #rg_spleef_1 switch.data matches 1 run scoreboard players set #rg_spleef_1_y switch.data 61
execute if score #rg_spleef_1 switch.data matches 1 run scoreboard players set #rg_spleef_1_mod switch.data 0
execute if score #rg_spleef_1 switch.data matches ..112 summon marker run function switch:maps/survival/spleef_1/regeneration_on_marker

execute if score #rg_spleef_1 switch.data matches 113.. in switch:game run kill @e[type=item,x=28000,y=61,z=28000,distance=..1000]
execute if score #rg_spleef_1 switch.data matches 113.. run data remove storage switch:maps to_regenerate.spleef_1

execute if score #rg_spleef_1 switch.data matches 113.. in minecraft:overworld run forceload remove 27960 27960 27980 28040
execute if score #rg_spleef_1 switch.data matches 113.. in switch:game run forceload remove 27960 27960 27980 28040
execute if score #rg_spleef_1 switch.data matches 113.. in minecraft:overworld run forceload remove 27980 27960 28000 28040
execute if score #rg_spleef_1 switch.data matches 113.. in switch:game run forceload remove 27980 27960 28000 28040
execute if score #rg_spleef_1 switch.data matches 113.. in minecraft:overworld run forceload remove 28000 27960 28020 28040
execute if score #rg_spleef_1 switch.data matches 113.. in switch:game run forceload remove 28000 27960 28020 28040
execute if score #rg_spleef_1 switch.data matches 113.. in minecraft:overworld run forceload remove 28020 27960 28040 28040
execute if score #rg_spleef_1 switch.data matches 113.. in switch:game run forceload remove 28020 27960 28040 28040

execute if score #rg_spleef_1 switch.data matches 113.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Spleef 1","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"5","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_spleef_1 switch.data matches 113.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Spleef 1` just regenerated!"}'
execute if score #rg_spleef_1 switch.data matches 113.. run function switch:engine/log_message/apply

execute if score #rg_spleef_1 switch.data matches 113.. in switch:game run function switch:maps/regenerate_doors_macro {name:"spleef_1"}
execute if score #rg_spleef_1 switch.data matches 113.. run scoreboard players reset #rg_spleef_1 switch.data
execute if score #rg_spleef_1 switch.data matches 1.. run schedule function switch:maps/survival/spleef_1/regenerate 1t

