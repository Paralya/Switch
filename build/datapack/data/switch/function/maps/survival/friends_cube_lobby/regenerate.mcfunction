
#> switch:maps/survival/friends_cube_lobby/regenerate
#
# @within	switch:maps/survival/friends_cube_lobby/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_friends_cube_lobby switch.data 1
execute if score #rg_friends_cube_lobby switch.data matches 1 run data modify storage switch:maps to_regenerate.friends_cube_lobby set value 2b
execute if score #rg_friends_cube_lobby switch.data matches 1 in minecraft:overworld run forceload add -4000 4000 -3980 4080
execute if score #rg_friends_cube_lobby switch.data matches 1 in switch:game run forceload add -4000 4000 -3980 4080
execute if score #rg_friends_cube_lobby switch.data matches 1 in minecraft:overworld run forceload add -3980 4000 -3960 4080
execute if score #rg_friends_cube_lobby switch.data matches 1 in switch:game run forceload add -3980 4000 -3960 4080
execute if score #rg_friends_cube_lobby switch.data matches 1 in minecraft:overworld run forceload add -3960 4000 -3940 4080
execute if score #rg_friends_cube_lobby switch.data matches 1 in switch:game run forceload add -3960 4000 -3940 4080
execute if score #rg_friends_cube_lobby switch.data matches 1 in minecraft:overworld run forceload add -3940 4000 -3920 4080
execute if score #rg_friends_cube_lobby switch.data matches 1 in switch:game run forceload add -3940 4000 -3920 4080

execute if score #rg_friends_cube_lobby switch.data matches 1 run scoreboard players set #rg_friends_cube_lobby_y switch.data 100
execute if score #rg_friends_cube_lobby switch.data matches 1 run scoreboard players set #rg_friends_cube_lobby_mod switch.data 0
execute if score #rg_friends_cube_lobby switch.data matches ..184 summon marker run function switch:maps/survival/friends_cube_lobby/regeneration_on_marker

execute if score #rg_friends_cube_lobby switch.data matches 185.. in switch:game run kill @e[type=item,x=-3960,y=100,z=4040,distance=..1000]
execute if score #rg_friends_cube_lobby switch.data matches 185.. run data remove storage switch:maps to_regenerate.friends_cube_lobby

execute if score #rg_friends_cube_lobby switch.data matches 185.. in minecraft:overworld run forceload remove -4000 4000 -3980 4080
execute if score #rg_friends_cube_lobby switch.data matches 185.. in switch:game run forceload remove -4000 4000 -3980 4080
execute if score #rg_friends_cube_lobby switch.data matches 185.. in minecraft:overworld run forceload remove -3980 4000 -3960 4080
execute if score #rg_friends_cube_lobby switch.data matches 185.. in switch:game run forceload remove -3980 4000 -3960 4080
execute if score #rg_friends_cube_lobby switch.data matches 185.. in minecraft:overworld run forceload remove -3960 4000 -3940 4080
execute if score #rg_friends_cube_lobby switch.data matches 185.. in switch:game run forceload remove -3960 4000 -3940 4080
execute if score #rg_friends_cube_lobby switch.data matches 185.. in minecraft:overworld run forceload remove -3940 4000 -3920 4080
execute if score #rg_friends_cube_lobby switch.data matches 185.. in switch:game run forceload remove -3940 4000 -3920 4080

execute if score #rg_friends_cube_lobby switch.data matches 185.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"FriendsCube Lobby","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"9","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_friends_cube_lobby switch.data matches 185.. run function switch:engine/log_message/apply {message:"Map `FriendsCube Lobby` just regenerated!"}

execute if score #rg_friends_cube_lobby switch.data matches 185.. in switch:game run function switch:maps/regenerate_doors_macro {name:"friends_cube_lobby"}
execute if score #rg_friends_cube_lobby switch.data matches 185.. run scoreboard players reset #rg_friends_cube_lobby switch.data
execute if score #rg_friends_cube_lobby switch.data matches 1.. run schedule function switch:maps/survival/friends_cube_lobby/regenerate 1t

