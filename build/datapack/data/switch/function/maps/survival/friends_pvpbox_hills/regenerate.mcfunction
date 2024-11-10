
#> switch:maps/survival/friends_pvpbox_hills/regenerate
#
# @within	switch:maps/survival/friends_pvpbox_hills/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_friends_pvpbox_hills switch.data 1
execute if score #rg_friends_pvpbox_hills switch.data matches 1 run data modify storage switch:maps to_regenerate.friends_pvpbox_hills set value 2b
execute if score #rg_friends_pvpbox_hills switch.data matches 1 in minecraft:overworld run forceload add 11957 11965 11980 12055
execute if score #rg_friends_pvpbox_hills switch.data matches 1 in switch:game run forceload add 11957 11965 11980 12055
execute if score #rg_friends_pvpbox_hills switch.data matches 1 in minecraft:overworld run forceload add 11980 11965 12002 12055
execute if score #rg_friends_pvpbox_hills switch.data matches 1 in switch:game run forceload add 11980 11965 12002 12055
execute if score #rg_friends_pvpbox_hills switch.data matches 1 in minecraft:overworld run forceload add 12002 11965 12024 12055
execute if score #rg_friends_pvpbox_hills switch.data matches 1 in switch:game run forceload add 12002 11965 12024 12055
execute if score #rg_friends_pvpbox_hills switch.data matches 1 in minecraft:overworld run forceload add 12024 11965 12047 12055
execute if score #rg_friends_pvpbox_hills switch.data matches 1 in switch:game run forceload add 12024 11965 12047 12055

execute if score #rg_friends_pvpbox_hills switch.data matches 1 run scoreboard players set #rg_friends_pvpbox_hills_y switch.data 0
execute if score #rg_friends_pvpbox_hills switch.data matches 1 run scoreboard players set #rg_friends_pvpbox_hills_mod switch.data 0
execute if score #rg_friends_pvpbox_hills switch.data matches ..272 summon marker run function switch:maps/survival/friends_pvpbox_hills/regeneration_on_marker

execute if score #rg_friends_pvpbox_hills switch.data matches 273.. in switch:game run kill @e[type=item,x=12002,y=0,z=12010,distance=..1000]
execute if score #rg_friends_pvpbox_hills switch.data matches 273.. run data remove storage switch:maps to_regenerate.friends_pvpbox_hills

execute if score #rg_friends_pvpbox_hills switch.data matches 273.. in minecraft:overworld run forceload remove 11957 11965 11980 12055
execute if score #rg_friends_pvpbox_hills switch.data matches 273.. in switch:game run forceload remove 11957 11965 11980 12055

execute if score #rg_friends_pvpbox_hills switch.data matches 273.. in minecraft:overworld run forceload remove 11980 11965 12002 12055
execute if score #rg_friends_pvpbox_hills switch.data matches 273.. in switch:game run forceload remove 11980 11965 12002 12055

execute if score #rg_friends_pvpbox_hills switch.data matches 273.. in minecraft:overworld run forceload remove 12002 11965 12024 12055
execute if score #rg_friends_pvpbox_hills switch.data matches 273.. in switch:game run forceload remove 12002 11965 12024 12055

execute if score #rg_friends_pvpbox_hills switch.data matches 273.. in minecraft:overworld run forceload remove 12024 11965 12047 12055
execute if score #rg_friends_pvpbox_hills switch.data matches 273.. in switch:game run forceload remove 12024 11965 12047 12055

execute if score #rg_friends_pvpbox_hills switch.data matches 273.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"friends_pvpbox_hills","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"13","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_friends_pvpbox_hills switch.data matches 273.. run data modify storage switch:main MessageToLog set value '{"text":"Map `friends_pvpbox_hills` just regenerated!"}'
execute if score #rg_friends_pvpbox_hills switch.data matches 273.. run function switch:engine/log_message/apply

execute if score #rg_friends_pvpbox_hills switch.data matches 273.. in switch:game run function switch:maps/regenerate_doors_macro {name:"friends_pvpbox_hills"}
execute if score #rg_friends_pvpbox_hills switch.data matches 273.. run scoreboard players reset #rg_friends_pvpbox_hills switch.data
execute if score #rg_friends_pvpbox_hills switch.data matches 1.. run schedule function switch:maps/survival/friends_pvpbox_hills/regenerate 1t

