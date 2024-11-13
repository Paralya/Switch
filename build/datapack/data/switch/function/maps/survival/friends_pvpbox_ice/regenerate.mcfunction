
#> switch:maps/survival/friends_pvpbox_ice/regenerate
#
# @within	switch:maps/survival/friends_pvpbox_ice/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_friends_pvpbox_ice switch.data 1
execute if score #rg_friends_pvpbox_ice switch.data matches 1 run data modify storage switch:maps to_regenerate.friends_pvpbox_ice set value 2b
execute if score #rg_friends_pvpbox_ice switch.data matches 1 in minecraft:overworld run forceload add 10964 10968 10986 11033
execute if score #rg_friends_pvpbox_ice switch.data matches 1 in switch:game run forceload add 10964 10968 10986 11033
execute if score #rg_friends_pvpbox_ice switch.data matches 1 in minecraft:overworld run forceload add 10986 10968 11007 11033
execute if score #rg_friends_pvpbox_ice switch.data matches 1 in switch:game run forceload add 10986 10968 11007 11033
execute if score #rg_friends_pvpbox_ice switch.data matches 1 in minecraft:overworld run forceload add 11007 10968 11029 11033
execute if score #rg_friends_pvpbox_ice switch.data matches 1 in switch:game run forceload add 11007 10968 11029 11033

execute if score #rg_friends_pvpbox_ice switch.data matches 1 run scoreboard players set #rg_friends_pvpbox_ice_y switch.data 0
execute if score #rg_friends_pvpbox_ice switch.data matches 1 run scoreboard players set #rg_friends_pvpbox_ice_mod switch.data 0
execute if score #rg_friends_pvpbox_ice switch.data matches ..129 summon marker run function switch:maps/survival/friends_pvpbox_ice/regeneration_on_marker

execute if score #rg_friends_pvpbox_ice switch.data matches 130.. in switch:game run kill @e[type=item,x=10996,y=0,z=11000,distance=..1000]
execute if score #rg_friends_pvpbox_ice switch.data matches 130.. run data remove storage switch:maps to_regenerate.friends_pvpbox_ice

execute if score #rg_friends_pvpbox_ice switch.data matches 130.. in minecraft:overworld run forceload remove 10964 10968 10986 11033
execute if score #rg_friends_pvpbox_ice switch.data matches 130.. in switch:game run forceload remove 10964 10968 10986 11033

execute if score #rg_friends_pvpbox_ice switch.data matches 130.. in minecraft:overworld run forceload remove 10986 10968 11007 11033
execute if score #rg_friends_pvpbox_ice switch.data matches 130.. in switch:game run forceload remove 10986 10968 11007 11033

execute if score #rg_friends_pvpbox_ice switch.data matches 130.. in minecraft:overworld run forceload remove 11007 10968 11029 11033
execute if score #rg_friends_pvpbox_ice switch.data matches 130.. in switch:game run forceload remove 11007 10968 11029 11033

execute if score #rg_friends_pvpbox_ice switch.data matches 130.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"friends_pvpbox_ice","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"6","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_friends_pvpbox_ice switch.data matches 130.. run data modify storage switch:main MessageToLog set value '{"text":"Map `friends_pvpbox_ice` just regenerated!"}'
execute if score #rg_friends_pvpbox_ice switch.data matches 130.. run function switch:engine/log_message/apply

execute if score #rg_friends_pvpbox_ice switch.data matches 130.. in switch:game run function switch:maps/regenerate_doors_macro {name:"friends_pvpbox_ice"}
execute if score #rg_friends_pvpbox_ice switch.data matches 130.. run scoreboard players reset #rg_friends_pvpbox_ice switch.data
execute if score #rg_friends_pvpbox_ice switch.data matches 1.. run schedule function switch:maps/survival/friends_pvpbox_ice/regenerate 1t
