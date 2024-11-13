
#> switch:maps/survival/pretty_garden/regenerate
#
# @within	switch:maps/survival/pretty_garden/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_pretty_garden switch.data 1
execute if score #rg_pretty_garden switch.data matches 1 run data modify storage switch:maps to_regenerate.pretty_garden set value 2b
execute if score #rg_pretty_garden switch.data matches 1 in minecraft:overworld run forceload add 140000 140000 140019 140070
execute if score #rg_pretty_garden switch.data matches 1 in switch:game run forceload add 140000 140000 140019 140070
execute if score #rg_pretty_garden switch.data matches 1 in minecraft:overworld run forceload add 140019 140000 140037 140070
execute if score #rg_pretty_garden switch.data matches 1 in switch:game run forceload add 140019 140000 140037 140070
execute if score #rg_pretty_garden switch.data matches 1 in minecraft:overworld run forceload add 140037 140000 140056 140070
execute if score #rg_pretty_garden switch.data matches 1 in switch:game run forceload add 140037 140000 140056 140070

execute if score #rg_pretty_garden switch.data matches 1 run scoreboard players set #rg_pretty_garden_y switch.data 0
execute if score #rg_pretty_garden switch.data matches 1 run scoreboard players set #rg_pretty_garden_mod switch.data 0
execute if score #rg_pretty_garden switch.data matches ..117 summon marker run function switch:maps/survival/pretty_garden/regeneration_on_marker

execute if score #rg_pretty_garden switch.data matches 118.. in switch:game run kill @e[type=item,x=140028,y=0,z=140035,distance=..1000]
execute if score #rg_pretty_garden switch.data matches 118.. run data remove storage switch:maps to_regenerate.pretty_garden

execute if score #rg_pretty_garden switch.data matches 118.. in minecraft:overworld run forceload remove 140000 140000 140019 140070
execute if score #rg_pretty_garden switch.data matches 118.. in switch:game run forceload remove 140000 140000 140019 140070

execute if score #rg_pretty_garden switch.data matches 118.. in minecraft:overworld run forceload remove 140019 140000 140037 140070
execute if score #rg_pretty_garden switch.data matches 118.. in switch:game run forceload remove 140019 140000 140037 140070

execute if score #rg_pretty_garden switch.data matches 118.. in minecraft:overworld run forceload remove 140037 140000 140056 140070
execute if score #rg_pretty_garden switch.data matches 118.. in switch:game run forceload remove 140037 140000 140056 140070

execute if score #rg_pretty_garden switch.data matches 118.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"pretty_garden","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"5","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_pretty_garden switch.data matches 118.. run data modify storage switch:main MessageToLog set value '{"text":"Map `pretty_garden` just regenerated!"}'
execute if score #rg_pretty_garden switch.data matches 118.. run function switch:engine/log_message/apply

execute if score #rg_pretty_garden switch.data matches 118.. in switch:game run function switch:maps/regenerate_doors_macro {name:"pretty_garden"}
execute if score #rg_pretty_garden switch.data matches 118.. run scoreboard players reset #rg_pretty_garden switch.data
execute if score #rg_pretty_garden switch.data matches 1.. run schedule function switch:maps/survival/pretty_garden/regenerate 1t
