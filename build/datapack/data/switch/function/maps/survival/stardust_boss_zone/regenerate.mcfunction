
#> switch:maps/survival/stardust_boss_zone/regenerate
#
# @within	switch:maps/survival/stardust_boss_zone/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_stardust_boss_zone switch.data 1
execute if score #rg_stardust_boss_zone switch.data matches 1 run data modify storage switch:maps to_regenerate.stardust_boss_zone set value 2b
execute if score #rg_stardust_boss_zone switch.data matches 1 in minecraft:overworld run forceload add 103000 103000 103016 103165
execute if score #rg_stardust_boss_zone switch.data matches 1 in switch:game run forceload add 103000 103000 103016 103165
execute if score #rg_stardust_boss_zone switch.data matches 1 in minecraft:overworld run forceload add 103016 103000 103033 103165
execute if score #rg_stardust_boss_zone switch.data matches 1 in switch:game run forceload add 103016 103000 103033 103165
execute if score #rg_stardust_boss_zone switch.data matches 1 in minecraft:overworld run forceload add 103033 103000 103050 103165
execute if score #rg_stardust_boss_zone switch.data matches 1 in switch:game run forceload add 103033 103000 103050 103165
execute if score #rg_stardust_boss_zone switch.data matches 1 in minecraft:overworld run forceload add 103050 103000 103066 103165
execute if score #rg_stardust_boss_zone switch.data matches 1 in switch:game run forceload add 103050 103000 103066 103165
execute if score #rg_stardust_boss_zone switch.data matches 1 in minecraft:overworld run forceload add 103066 103000 103082 103165
execute if score #rg_stardust_boss_zone switch.data matches 1 in switch:game run forceload add 103066 103000 103082 103165
execute if score #rg_stardust_boss_zone switch.data matches 1 in minecraft:overworld run forceload add 103082 103000 103099 103165
execute if score #rg_stardust_boss_zone switch.data matches 1 in switch:game run forceload add 103082 103000 103099 103165
execute if score #rg_stardust_boss_zone switch.data matches 1 in minecraft:overworld run forceload add 103099 103000 103116 103165
execute if score #rg_stardust_boss_zone switch.data matches 1 in switch:game run forceload add 103099 103000 103116 103165
execute if score #rg_stardust_boss_zone switch.data matches 1 in minecraft:overworld run forceload add 103116 103000 103132 103165
execute if score #rg_stardust_boss_zone switch.data matches 1 in switch:game run forceload add 103116 103000 103132 103165

execute if score #rg_stardust_boss_zone switch.data matches 1 run scoreboard players set #rg_stardust_boss_zone_y switch.data 100
execute if score #rg_stardust_boss_zone switch.data matches 1 run scoreboard players set #rg_stardust_boss_zone_mod switch.data 0
execute if score #rg_stardust_boss_zone switch.data matches ..912 summon marker run function switch:maps/survival/stardust_boss_zone/regeneration_on_marker

execute if score #rg_stardust_boss_zone switch.data matches 913.. in switch:game run kill @e[type=item,x=103066,y=100,z=103082,distance=..1000]
execute if score #rg_stardust_boss_zone switch.data matches 913.. run data remove storage switch:maps to_regenerate.stardust_boss_zone

execute if score #rg_stardust_boss_zone switch.data matches 913.. in minecraft:overworld run forceload remove 103000 103000 103016 103165
execute if score #rg_stardust_boss_zone switch.data matches 913.. in switch:game run forceload remove 103000 103000 103016 103165

execute if score #rg_stardust_boss_zone switch.data matches 913.. in minecraft:overworld run forceload remove 103016 103000 103033 103165
execute if score #rg_stardust_boss_zone switch.data matches 913.. in switch:game run forceload remove 103016 103000 103033 103165

execute if score #rg_stardust_boss_zone switch.data matches 913.. in minecraft:overworld run forceload remove 103033 103000 103050 103165
execute if score #rg_stardust_boss_zone switch.data matches 913.. in switch:game run forceload remove 103033 103000 103050 103165

execute if score #rg_stardust_boss_zone switch.data matches 913.. in minecraft:overworld run forceload remove 103050 103000 103066 103165
execute if score #rg_stardust_boss_zone switch.data matches 913.. in switch:game run forceload remove 103050 103000 103066 103165

execute if score #rg_stardust_boss_zone switch.data matches 913.. in minecraft:overworld run forceload remove 103066 103000 103082 103165
execute if score #rg_stardust_boss_zone switch.data matches 913.. in switch:game run forceload remove 103066 103000 103082 103165

execute if score #rg_stardust_boss_zone switch.data matches 913.. in minecraft:overworld run forceload remove 103082 103000 103099 103165
execute if score #rg_stardust_boss_zone switch.data matches 913.. in switch:game run forceload remove 103082 103000 103099 103165

execute if score #rg_stardust_boss_zone switch.data matches 913.. in minecraft:overworld run forceload remove 103099 103000 103116 103165
execute if score #rg_stardust_boss_zone switch.data matches 913.. in switch:game run forceload remove 103099 103000 103116 103165

execute if score #rg_stardust_boss_zone switch.data matches 913.. in minecraft:overworld run forceload remove 103116 103000 103132 103165
execute if score #rg_stardust_boss_zone switch.data matches 913.. in switch:game run forceload remove 103116 103000 103132 103165

execute if score #rg_stardust_boss_zone switch.data matches 913.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Stardust Boss Zone","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"45","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_stardust_boss_zone switch.data matches 913.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Stardust Boss Zone` just regenerated!"}'
execute if score #rg_stardust_boss_zone switch.data matches 913.. run function switch:engine/log_message/apply

execute if score #rg_stardust_boss_zone switch.data matches 913.. in switch:game run function switch:maps/regenerate_doors_macro {name:"stardust_boss_zone"}
execute if score #rg_stardust_boss_zone switch.data matches 913.. run scoreboard players reset #rg_stardust_boss_zone switch.data
execute if score #rg_stardust_boss_zone switch.data matches 1.. run schedule function switch:maps/survival/stardust_boss_zone/regenerate 1t

