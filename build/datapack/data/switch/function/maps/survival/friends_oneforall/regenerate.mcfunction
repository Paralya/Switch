
#> switch:maps/survival/friends_oneforall/regenerate
#
# @within	switch:maps/survival/friends_oneforall/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_friends_oneforall switch.data 1
execute if score #rg_friends_oneforall switch.data matches 1 run data modify storage switch:maps to_regenerate.friends_oneforall set value 2b
execute if score #rg_friends_oneforall switch.data matches 1 in minecraft:overworld run forceload add 7977 7976 8001 8024
execute if score #rg_friends_oneforall switch.data matches 1 in switch:game run forceload add 7977 7976 8001 8024
execute if score #rg_friends_oneforall switch.data matches 1 in minecraft:overworld run forceload add 8001 7976 8025 8024
execute if score #rg_friends_oneforall switch.data matches 1 in switch:game run forceload add 8001 7976 8025 8024

execute if score #rg_friends_oneforall switch.data matches 1 run scoreboard players set #rg_friends_oneforall_y switch.data 0
execute if score #rg_friends_oneforall switch.data matches 1 run scoreboard players set #rg_friends_oneforall_mod switch.data 0
execute if score #rg_friends_oneforall switch.data matches ..64 summon marker run function switch:maps/survival/friends_oneforall/regeneration_on_marker

execute if score #rg_friends_oneforall switch.data matches 65.. in switch:game run kill @e[type=item,x=8001,y=0,z=8000,distance=..1000]
execute if score #rg_friends_oneforall switch.data matches 65.. run data remove storage switch:maps to_regenerate.friends_oneforall

execute if score #rg_friends_oneforall switch.data matches 65.. in minecraft:overworld run forceload remove 7977 7976 8001 8024
execute if score #rg_friends_oneforall switch.data matches 65.. in switch:game run forceload remove 7977 7976 8001 8024

execute if score #rg_friends_oneforall switch.data matches 65.. in minecraft:overworld run forceload remove 8001 7976 8025 8024
execute if score #rg_friends_oneforall switch.data matches 65.. in switch:game run forceload remove 8001 7976 8025 8024

execute if score #rg_friends_oneforall switch.data matches 65.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"friends_oneforall","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"3","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_friends_oneforall switch.data matches 65.. run data modify storage switch:main MessageToLog set value '{"text":"Map `friends_oneforall` just regenerated!"}'
execute if score #rg_friends_oneforall switch.data matches 65.. run function switch:engine/log_message/apply

execute if score #rg_friends_oneforall switch.data matches 65.. in switch:game run function switch:maps/regenerate_doors_macro {name:"friends_oneforall"}
execute if score #rg_friends_oneforall switch.data matches 65.. run scoreboard players reset #rg_friends_oneforall switch.data
execute if score #rg_friends_oneforall switch.data matches 1.. run schedule function switch:maps/survival/friends_oneforall/regenerate 1t
