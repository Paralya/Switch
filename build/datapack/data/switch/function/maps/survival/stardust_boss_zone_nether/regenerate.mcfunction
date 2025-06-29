
#> switch:maps/survival/stardust_boss_zone_nether/regenerate
#
# @within	switch:maps/survival/stardust_boss_zone_nether/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_stardust_boss_zone_nether switch.data 1
execute if score #rg_stardust_boss_zone_nether switch.data matches 1 run data modify storage switch:maps to_regenerate.stardust_boss_zone_nether set value 2b
execute if score #rg_stardust_boss_zone_nether switch.data matches 1 in minecraft:overworld run forceload add 104000 104000 104016 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1 in switch:game run forceload add 104000 104000 104016 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1 in minecraft:overworld run forceload add 104016 104000 104033 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1 in switch:game run forceload add 104016 104000 104033 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1 in minecraft:overworld run forceload add 104033 104000 104050 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1 in switch:game run forceload add 104033 104000 104050 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1 in minecraft:overworld run forceload add 104050 104000 104066 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1 in switch:game run forceload add 104050 104000 104066 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1 in minecraft:overworld run forceload add 104066 104000 104082 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1 in switch:game run forceload add 104066 104000 104082 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1 in minecraft:overworld run forceload add 104082 104000 104099 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1 in switch:game run forceload add 104082 104000 104099 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1 in minecraft:overworld run forceload add 104099 104000 104116 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1 in switch:game run forceload add 104099 104000 104116 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1 in minecraft:overworld run forceload add 104116 104000 104132 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1 in switch:game run forceload add 104116 104000 104132 104165

execute if score #rg_stardust_boss_zone_nether switch.data matches 1 run scoreboard players set #rg_stardust_boss_zone_nether_y switch.data 100
execute if score #rg_stardust_boss_zone_nether switch.data matches 1 run scoreboard players set #rg_stardust_boss_zone_nether_mod switch.data 0
execute if score #rg_stardust_boss_zone_nether switch.data matches ..1032 summon marker run function switch:maps/survival/stardust_boss_zone_nether/regeneration_on_marker

execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. in switch:game run kill @e[type=item,x=104066,y=100,z=104082,distance=..1000]
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. run data remove storage switch:maps to_regenerate.stardust_boss_zone_nether

execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. in minecraft:overworld run forceload remove 104000 104000 104016 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. in switch:game run forceload remove 104000 104000 104016 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. in minecraft:overworld run forceload remove 104016 104000 104033 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. in switch:game run forceload remove 104016 104000 104033 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. in minecraft:overworld run forceload remove 104033 104000 104050 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. in switch:game run forceload remove 104033 104000 104050 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. in minecraft:overworld run forceload remove 104050 104000 104066 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. in switch:game run forceload remove 104050 104000 104066 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. in minecraft:overworld run forceload remove 104066 104000 104082 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. in switch:game run forceload remove 104066 104000 104082 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. in minecraft:overworld run forceload remove 104082 104000 104099 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. in switch:game run forceload remove 104082 104000 104099 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. in minecraft:overworld run forceload remove 104099 104000 104116 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. in switch:game run forceload remove 104099 104000 104116 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. in minecraft:overworld run forceload remove 104116 104000 104132 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. in switch:game run forceload remove 104116 104000 104132 104165

execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Stardust Boss Zone Nether","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"51","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Stardust Boss Zone Nether` just regenerated!"}'
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. run function switch:engine/log_message/apply

execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. in switch:game run function switch:maps/regenerate_doors_macro {name:"stardust_boss_zone_nether"}
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. run scoreboard players reset #rg_stardust_boss_zone_nether switch.data
execute if score #rg_stardust_boss_zone_nether switch.data matches 1.. run schedule function switch:maps/survival/stardust_boss_zone_nether/regenerate 1t

