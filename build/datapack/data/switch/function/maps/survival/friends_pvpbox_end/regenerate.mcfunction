
#> switch:maps/survival/friends_pvpbox_end/regenerate
#
# @within	switch:maps/survival/friends_pvpbox_end/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_friends_pvpbox_end switch.data 1
execute if score #rg_friends_pvpbox_end switch.data matches 1 run data modify storage switch:maps to_regenerate.friends_pvpbox_end set value 2b
execute if score #rg_friends_pvpbox_end switch.data matches 1 in minecraft:overworld run forceload add 13000 13000 13023 13090
execute if score #rg_friends_pvpbox_end switch.data matches 1 in switch:game run forceload add 13000 13000 13023 13090
execute if score #rg_friends_pvpbox_end switch.data matches 1 in minecraft:overworld run forceload add 13023 13000 13046 13090
execute if score #rg_friends_pvpbox_end switch.data matches 1 in switch:game run forceload add 13023 13000 13046 13090
execute if score #rg_friends_pvpbox_end switch.data matches 1 in minecraft:overworld run forceload add 13046 13000 13068 13090
execute if score #rg_friends_pvpbox_end switch.data matches 1 in switch:game run forceload add 13046 13000 13068 13090
execute if score #rg_friends_pvpbox_end switch.data matches 1 in minecraft:overworld run forceload add 13068 13000 13091 13090
execute if score #rg_friends_pvpbox_end switch.data matches 1 in switch:game run forceload add 13068 13000 13091 13090

execute if score #rg_friends_pvpbox_end switch.data matches 1 run scoreboard players set #rg_friends_pvpbox_end_y switch.data 100
execute if score #rg_friends_pvpbox_end switch.data matches 1 run scoreboard players set #rg_friends_pvpbox_end_mod switch.data 0
execute if score #rg_friends_pvpbox_end switch.data matches ..136 summon marker run function switch:maps/survival/friends_pvpbox_end/regeneration_on_marker

execute if score #rg_friends_pvpbox_end switch.data matches 137.. in switch:game run kill @e[type=item,x=13045,y=100,z=13045,distance=..1000]
execute if score #rg_friends_pvpbox_end switch.data matches 137.. run data remove storage switch:maps to_regenerate.friends_pvpbox_end

execute if score #rg_friends_pvpbox_end switch.data matches 137.. in minecraft:overworld run forceload remove 13000 13000 13023 13090
execute if score #rg_friends_pvpbox_end switch.data matches 137.. in switch:game run forceload remove 13000 13000 13023 13090

execute if score #rg_friends_pvpbox_end switch.data matches 137.. in minecraft:overworld run forceload remove 13023 13000 13046 13090
execute if score #rg_friends_pvpbox_end switch.data matches 137.. in switch:game run forceload remove 13023 13000 13046 13090

execute if score #rg_friends_pvpbox_end switch.data matches 137.. in minecraft:overworld run forceload remove 13046 13000 13068 13090
execute if score #rg_friends_pvpbox_end switch.data matches 137.. in switch:game run forceload remove 13046 13000 13068 13090

execute if score #rg_friends_pvpbox_end switch.data matches 137.. in minecraft:overworld run forceload remove 13068 13000 13091 13090
execute if score #rg_friends_pvpbox_end switch.data matches 137.. in switch:game run forceload remove 13068 13000 13091 13090

execute if score #rg_friends_pvpbox_end switch.data matches 137.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"friends_pvpbox_end","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"6","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_friends_pvpbox_end switch.data matches 137.. run data modify storage switch:main MessageToLog set value '{"text":"Map `friends_pvpbox_end` just regenerated!"}'
execute if score #rg_friends_pvpbox_end switch.data matches 137.. run function switch:engine/log_message/apply

execute if score #rg_friends_pvpbox_end switch.data matches 137.. in switch:game run function switch:maps/regenerate_doors_macro {name:"friends_pvpbox_end"}
execute if score #rg_friends_pvpbox_end switch.data matches 137.. run scoreboard players reset #rg_friends_pvpbox_end switch.data
execute if score #rg_friends_pvpbox_end switch.data matches 1.. run schedule function switch:maps/survival/friends_pvpbox_end/regenerate 1t

