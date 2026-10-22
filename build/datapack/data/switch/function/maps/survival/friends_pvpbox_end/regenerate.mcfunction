
#> switch:maps/survival/friends_pvpbox_end/regenerate
#
# @within	switch:maps/survival/friends_pvpbox_end/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_friends_pvpbox_end switch.data 1
execute if score #rg_friends_pvpbox_end switch.data matches 1 run data modify storage switch:maps to_regenerate.friends_pvpbox_end set value 2b
execute if score #rg_friends_pvpbox_end switch.data matches 1 in minecraft:overworld run forceload add 0 4000 23 4090
execute if score #rg_friends_pvpbox_end switch.data matches 1 in switch:game run forceload add 0 4000 23 4090
execute if score #rg_friends_pvpbox_end switch.data matches 1 in minecraft:overworld run forceload add 23 4000 46 4090
execute if score #rg_friends_pvpbox_end switch.data matches 1 in switch:game run forceload add 23 4000 46 4090
execute if score #rg_friends_pvpbox_end switch.data matches 1 in minecraft:overworld run forceload add 46 4000 68 4090
execute if score #rg_friends_pvpbox_end switch.data matches 1 in switch:game run forceload add 46 4000 68 4090
execute if score #rg_friends_pvpbox_end switch.data matches 1 in minecraft:overworld run forceload add 68 4000 91 4090
execute if score #rg_friends_pvpbox_end switch.data matches 1 in switch:game run forceload add 68 4000 91 4090

execute if score #rg_friends_pvpbox_end switch.data matches 1 run scoreboard players set #rg_friends_pvpbox_end_y switch.data 100
execute if score #rg_friends_pvpbox_end switch.data matches 1 run scoreboard players set #rg_friends_pvpbox_end_mod switch.data 0
execute if score #rg_friends_pvpbox_end switch.data matches ..136 summon marker run function switch:maps/survival/friends_pvpbox_end/regeneration_on_marker

execute if score #rg_friends_pvpbox_end switch.data matches 137.. in switch:game run kill @e[type=item,x=45,y=100,z=4045,distance=..1000]
execute if score #rg_friends_pvpbox_end switch.data matches 137.. run data remove storage switch:maps to_regenerate.friends_pvpbox_end

execute if score #rg_friends_pvpbox_end switch.data matches 137.. in minecraft:overworld run forceload remove 0 4000 23 4090
execute if score #rg_friends_pvpbox_end switch.data matches 137.. in switch:game run forceload remove 0 4000 23 4090
execute if score #rg_friends_pvpbox_end switch.data matches 137.. in minecraft:overworld run forceload remove 23 4000 46 4090
execute if score #rg_friends_pvpbox_end switch.data matches 137.. in switch:game run forceload remove 23 4000 46 4090
execute if score #rg_friends_pvpbox_end switch.data matches 137.. in minecraft:overworld run forceload remove 46 4000 68 4090
execute if score #rg_friends_pvpbox_end switch.data matches 137.. in switch:game run forceload remove 46 4000 68 4090
execute if score #rg_friends_pvpbox_end switch.data matches 137.. in minecraft:overworld run forceload remove 68 4000 91 4090
execute if score #rg_friends_pvpbox_end switch.data matches 137.. in switch:game run forceload remove 68 4000 91 4090

execute if score #rg_friends_pvpbox_end switch.data matches 137.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"FriendsCube PvPbox End","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"6","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_friends_pvpbox_end switch.data matches 137.. run function switch:engine/log_message/apply {message:"Map `FriendsCube PvPbox End` just regenerated!"}

execute if score #rg_friends_pvpbox_end switch.data matches 137.. run scoreboard players reset #rg_friends_pvpbox_end switch.data
execute if score #rg_friends_pvpbox_end switch.data matches 1.. run schedule function switch:maps/survival/friends_pvpbox_end/regenerate 1t

