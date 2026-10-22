
#> switch:maps/survival/friends_cube_jump/regenerate
#
# @within	switch:maps/survival/friends_cube_jump/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_friends_cube_jump switch.data 1
execute if score #rg_friends_cube_jump switch.data matches 1 run data modify storage switch:maps to_regenerate.friends_cube_jump set value 2b
execute if score #rg_friends_cube_jump switch.data matches 1 in minecraft:overworld run forceload add 4000 0 4018 32
execute if score #rg_friends_cube_jump switch.data matches 1 in switch:game run forceload add 4000 0 4018 32
execute if score #rg_friends_cube_jump switch.data matches 1 in minecraft:overworld run forceload add 4018 0 4035 32
execute if score #rg_friends_cube_jump switch.data matches 1 in switch:game run forceload add 4018 0 4035 32

execute if score #rg_friends_cube_jump switch.data matches 1 run scoreboard players set #rg_friends_cube_jump_y switch.data 100
execute if score #rg_friends_cube_jump switch.data matches 1 run scoreboard players set #rg_friends_cube_jump_mod switch.data 0
execute if score #rg_friends_cube_jump switch.data matches ..186 summon marker run function switch:maps/survival/friends_cube_jump/regeneration_on_marker

execute if score #rg_friends_cube_jump switch.data matches 187.. in switch:game run kill @e[type=item,x=4017,y=100,z=16,distance=..1000]
execute if score #rg_friends_cube_jump switch.data matches 187.. run data remove storage switch:maps to_regenerate.friends_cube_jump

execute if score #rg_friends_cube_jump switch.data matches 187.. in minecraft:overworld run forceload remove 4000 0 4018 32
execute if score #rg_friends_cube_jump switch.data matches 187.. in switch:game run forceload remove 4000 0 4018 32
execute if score #rg_friends_cube_jump switch.data matches 187.. in minecraft:overworld run forceload remove 4018 0 4035 32
execute if score #rg_friends_cube_jump switch.data matches 187.. in switch:game run forceload remove 4018 0 4035 32

execute if score #rg_friends_cube_jump switch.data matches 187.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"FriendsCube Jump","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"9","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_friends_cube_jump switch.data matches 187.. run function switch:engine/log_message/apply {message:"Map `FriendsCube Jump` just regenerated!"}

execute if score #rg_friends_cube_jump switch.data matches 187.. in switch:game run function switch:maps/regenerate_doors_macro {name:"friends_cube_jump"}
execute if score #rg_friends_cube_jump switch.data matches 187.. run scoreboard players reset #rg_friends_cube_jump switch.data
execute if score #rg_friends_cube_jump switch.data matches 1.. run schedule function switch:maps/survival/friends_cube_jump/regenerate 1t

