
#> switch:maps/survival/warden_forest/regenerate
#
# @within	switch:maps/survival/warden_forest/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_warden_forest switch.data 1
execute if score #rg_warden_forest switch.data matches 1 run data modify storage switch:maps to_regenerate.warden_forest set value 2b
execute if score #rg_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 10000 10000 10019 10132
execute if score #rg_warden_forest switch.data matches 1 in switch:game run forceload add 10000 10000 10019 10132
execute if score #rg_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 10019 10000 10038 10132
execute if score #rg_warden_forest switch.data matches 1 in switch:game run forceload add 10019 10000 10038 10132
execute if score #rg_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 10038 10000 10057 10132
execute if score #rg_warden_forest switch.data matches 1 in switch:game run forceload add 10038 10000 10057 10132
execute if score #rg_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 10057 10000 10075 10132
execute if score #rg_warden_forest switch.data matches 1 in switch:game run forceload add 10057 10000 10075 10132
execute if score #rg_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 10075 10000 10094 10132
execute if score #rg_warden_forest switch.data matches 1 in switch:game run forceload add 10075 10000 10094 10132
execute if score #rg_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 10094 10000 10113 10132
execute if score #rg_warden_forest switch.data matches 1 in switch:game run forceload add 10094 10000 10113 10132
execute if score #rg_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 10113 10000 10132 10132
execute if score #rg_warden_forest switch.data matches 1 in switch:game run forceload add 10113 10000 10132 10132

execute if score #rg_warden_forest switch.data matches 1 run scoreboard players set #rg_warden_forest_y switch.data 100
execute if score #rg_warden_forest switch.data matches 1 run scoreboard players set #rg_warden_forest_mod switch.data 0
execute if score #rg_warden_forest switch.data matches ..455 summon marker run function switch:maps/survival/warden_forest/regeneration_on_marker

execute if score #rg_warden_forest switch.data matches 456.. in switch:game run kill @e[type=item,x=10066,y=100,z=10066,distance=..1000]
execute if score #rg_warden_forest switch.data matches 456.. run data remove storage switch:maps to_regenerate.warden_forest

execute if score #rg_warden_forest switch.data matches 456.. in minecraft:overworld run forceload remove 10000 10000 10019 10132
execute if score #rg_warden_forest switch.data matches 456.. in switch:game run forceload remove 10000 10000 10019 10132

execute if score #rg_warden_forest switch.data matches 456.. in minecraft:overworld run forceload remove 10019 10000 10038 10132
execute if score #rg_warden_forest switch.data matches 456.. in switch:game run forceload remove 10019 10000 10038 10132

execute if score #rg_warden_forest switch.data matches 456.. in minecraft:overworld run forceload remove 10038 10000 10057 10132
execute if score #rg_warden_forest switch.data matches 456.. in switch:game run forceload remove 10038 10000 10057 10132

execute if score #rg_warden_forest switch.data matches 456.. in minecraft:overworld run forceload remove 10057 10000 10075 10132
execute if score #rg_warden_forest switch.data matches 456.. in switch:game run forceload remove 10057 10000 10075 10132

execute if score #rg_warden_forest switch.data matches 456.. in minecraft:overworld run forceload remove 10075 10000 10094 10132
execute if score #rg_warden_forest switch.data matches 456.. in switch:game run forceload remove 10075 10000 10094 10132

execute if score #rg_warden_forest switch.data matches 456.. in minecraft:overworld run forceload remove 10094 10000 10113 10132
execute if score #rg_warden_forest switch.data matches 456.. in switch:game run forceload remove 10094 10000 10113 10132

execute if score #rg_warden_forest switch.data matches 456.. in minecraft:overworld run forceload remove 10113 10000 10132 10132
execute if score #rg_warden_forest switch.data matches 456.. in switch:game run forceload remove 10113 10000 10132 10132

execute if score #rg_warden_forest switch.data matches 456.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"warden_forest","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"22","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_warden_forest switch.data matches 456.. run data modify storage switch:main MessageToLog set value '{"text":"Map `warden_forest` just regenerated!"}'
execute if score #rg_warden_forest switch.data matches 456.. run function switch:engine/log_message/apply

execute if score #rg_warden_forest switch.data matches 456.. in switch:game run function switch:maps/regenerate_doors_macro {name:"warden_forest"}
execute if score #rg_warden_forest switch.data matches 456.. run scoreboard players reset #rg_warden_forest switch.data
execute if score #rg_warden_forest switch.data matches 1.. run schedule function switch:maps/survival/warden_forest/regenerate 1t

