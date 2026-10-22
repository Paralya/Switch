
#> switch:maps/survival/warden_forest/regenerate
#
# @within	switch:maps/survival/warden_forest/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_warden_forest switch.data 1
execute if score #rg_warden_forest switch.data matches 1 run data modify storage switch:maps to_regenerate.warden_forest set value 2b
execute if score #rg_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 4013 2013 4032 2145
execute if score #rg_warden_forest switch.data matches 1 in switch:game run forceload add 4013 2013 4032 2145
execute if score #rg_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 4032 2013 4051 2145
execute if score #rg_warden_forest switch.data matches 1 in switch:game run forceload add 4032 2013 4051 2145
execute if score #rg_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 4051 2013 4070 2145
execute if score #rg_warden_forest switch.data matches 1 in switch:game run forceload add 4051 2013 4070 2145
execute if score #rg_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 4070 2013 4088 2145
execute if score #rg_warden_forest switch.data matches 1 in switch:game run forceload add 4070 2013 4088 2145
execute if score #rg_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 4088 2013 4107 2145
execute if score #rg_warden_forest switch.data matches 1 in switch:game run forceload add 4088 2013 4107 2145
execute if score #rg_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 4107 2013 4126 2145
execute if score #rg_warden_forest switch.data matches 1 in switch:game run forceload add 4107 2013 4126 2145
execute if score #rg_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 4126 2013 4145 2145
execute if score #rg_warden_forest switch.data matches 1 in switch:game run forceload add 4126 2013 4145 2145

execute if score #rg_warden_forest switch.data matches 1 run scoreboard players set #rg_warden_forest_y switch.data 100
execute if score #rg_warden_forest switch.data matches 1 run scoreboard players set #rg_warden_forest_mod switch.data 0
execute if score #rg_warden_forest switch.data matches ..140 summon marker run function switch:maps/survival/warden_forest/regeneration_on_marker

execute if score #rg_warden_forest switch.data matches 141.. in switch:game run kill @e[type=item,x=4079,y=100,z=2079,distance=..1000]
execute if score #rg_warden_forest switch.data matches 141.. run data remove storage switch:maps to_regenerate.warden_forest

execute if score #rg_warden_forest switch.data matches 141.. in minecraft:overworld run forceload remove 4013 2013 4032 2145
execute if score #rg_warden_forest switch.data matches 141.. in switch:game run forceload remove 4013 2013 4032 2145
execute if score #rg_warden_forest switch.data matches 141.. in minecraft:overworld run forceload remove 4032 2013 4051 2145
execute if score #rg_warden_forest switch.data matches 141.. in switch:game run forceload remove 4032 2013 4051 2145
execute if score #rg_warden_forest switch.data matches 141.. in minecraft:overworld run forceload remove 4051 2013 4070 2145
execute if score #rg_warden_forest switch.data matches 141.. in switch:game run forceload remove 4051 2013 4070 2145
execute if score #rg_warden_forest switch.data matches 141.. in minecraft:overworld run forceload remove 4070 2013 4088 2145
execute if score #rg_warden_forest switch.data matches 141.. in switch:game run forceload remove 4070 2013 4088 2145
execute if score #rg_warden_forest switch.data matches 141.. in minecraft:overworld run forceload remove 4088 2013 4107 2145
execute if score #rg_warden_forest switch.data matches 141.. in switch:game run forceload remove 4088 2013 4107 2145
execute if score #rg_warden_forest switch.data matches 141.. in minecraft:overworld run forceload remove 4107 2013 4126 2145
execute if score #rg_warden_forest switch.data matches 141.. in switch:game run forceload remove 4107 2013 4126 2145
execute if score #rg_warden_forest switch.data matches 141.. in minecraft:overworld run forceload remove 4126 2013 4145 2145
execute if score #rg_warden_forest switch.data matches 141.. in switch:game run forceload remove 4126 2013 4145 2145

execute if score #rg_warden_forest switch.data matches 141.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Warden Forest","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"7","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_warden_forest switch.data matches 141.. run function switch:engine/log_message/apply {message:"Map `Warden Forest` just regenerated!"}

execute if score #rg_warden_forest switch.data matches 141.. run scoreboard players reset #rg_warden_forest switch.data
execute if score #rg_warden_forest switch.data matches 1.. run schedule function switch:maps/survival/warden_forest/regenerate 1t

