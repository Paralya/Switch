
#> switch:maps/survival/friends_cube_lobby/regenerate
#
# @within	switch:maps/survival/friends_cube_lobby/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_friends_cube_lobby switch.data 1
execute if score #rg_friends_cube_lobby switch.data matches 1 run data modify storage switch:maps to_regenerate.friends_cube_lobby set value 2b
execute if score #rg_friends_cube_lobby switch.data matches 1 in minecraft:overworld run forceload add 16960 16960 16980 17040
execute if score #rg_friends_cube_lobby switch.data matches 1 in switch:game run forceload add 16960 16960 16980 17040
execute if score #rg_friends_cube_lobby switch.data matches 1 in minecraft:overworld run forceload add 16980 16960 17000 17040
execute if score #rg_friends_cube_lobby switch.data matches 1 in switch:game run forceload add 16980 16960 17000 17040
execute if score #rg_friends_cube_lobby switch.data matches 1 in minecraft:overworld run forceload add 17000 16960 17020 17040
execute if score #rg_friends_cube_lobby switch.data matches 1 in switch:game run forceload add 17000 16960 17020 17040
execute if score #rg_friends_cube_lobby switch.data matches 1 in minecraft:overworld run forceload add 17020 16960 17040 17040
execute if score #rg_friends_cube_lobby switch.data matches 1 in switch:game run forceload add 17020 16960 17040 17040

execute if score #rg_friends_cube_lobby switch.data matches 1 run scoreboard players set #rg_friends_cube_lobby_y switch.data 0
execute if score #rg_friends_cube_lobby switch.data matches 1 run scoreboard players set #rg_friends_cube_lobby_mod switch.data 0
execute if score #rg_friends_cube_lobby switch.data matches ..184 summon marker run function switch:maps/survival/friends_cube_lobby/regeneration_on_marker

execute if score #rg_friends_cube_lobby switch.data matches 185.. in switch:game run kill @e[type=item,x=17000,y=0,z=17000,distance=..1000]
execute if score #rg_friends_cube_lobby switch.data matches 185.. run data remove storage switch:maps to_regenerate.friends_cube_lobby

execute if score #rg_friends_cube_lobby switch.data matches 185.. in minecraft:overworld run forceload remove 16960 16960 16980 17040
execute if score #rg_friends_cube_lobby switch.data matches 185.. in switch:game run forceload remove 16960 16960 16980 17040

execute if score #rg_friends_cube_lobby switch.data matches 185.. in minecraft:overworld run forceload remove 16980 16960 17000 17040
execute if score #rg_friends_cube_lobby switch.data matches 185.. in switch:game run forceload remove 16980 16960 17000 17040

execute if score #rg_friends_cube_lobby switch.data matches 185.. in minecraft:overworld run forceload remove 17000 16960 17020 17040
execute if score #rg_friends_cube_lobby switch.data matches 185.. in switch:game run forceload remove 17000 16960 17020 17040

execute if score #rg_friends_cube_lobby switch.data matches 185.. in minecraft:overworld run forceload remove 17020 16960 17040 17040
execute if score #rg_friends_cube_lobby switch.data matches 185.. in switch:game run forceload remove 17020 16960 17040 17040

execute if score #rg_friends_cube_lobby switch.data matches 185.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"friends_cube_lobby","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"9","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_friends_cube_lobby switch.data matches 185.. run data modify storage switch:main MessageToLog set value '{"text":"Map `friends_cube_lobby` just regenerated!"}'
execute if score #rg_friends_cube_lobby switch.data matches 185.. run function switch:engine/log_message/apply

execute if score #rg_friends_cube_lobby switch.data matches 185.. in switch:game run function switch:maps/regenerate_doors_macro {name:"friends_cube_lobby"}
execute if score #rg_friends_cube_lobby switch.data matches 185.. run scoreboard players reset #rg_friends_cube_lobby switch.data
execute if score #rg_friends_cube_lobby switch.data matches 1.. run schedule function switch:maps/survival/friends_cube_lobby/regenerate 1t

