
#> switch:maps/survival/friends_cube_jump/regeneration_on_marker
#
# @within	switch:maps/survival/friends_cube_jump/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_friends_cube_jump_y switch.data

execute if score #rg_friends_cube_jump_mod switch.data matches 0 at @s in switch:game run particle cloud 4009 ~0.5 16 9 0 8 0 250 force
execute if score #rg_friends_cube_jump_mod switch.data matches 0 at @s run clone from minecraft:overworld 4000 ~ 0 4018 ~ 32 to switch:game 4000 ~0 0 strict replace force

execute if score #rg_friends_cube_jump_mod switch.data matches 1 at @s in switch:game run particle cloud 4026 ~0.5 16 8 0 8 0 250 force
execute if score #rg_friends_cube_jump_mod switch.data matches 1 at @s run clone from minecraft:overworld 4018 ~ 0 4035 ~ 32 to switch:game 4018 ~0 0 strict replace force

scoreboard players add #rg_friends_cube_jump_mod switch.data 1
execute if score #rg_friends_cube_jump_mod switch.data matches 2 in switch:game run kill @e[type=item,x=4017,y=100,z=16,distance=..1000]
execute if score #rg_friends_cube_jump_mod switch.data matches 2 run scoreboard players add #rg_friends_cube_jump_y switch.data 1
execute if score #rg_friends_cube_jump_mod switch.data matches 2 run scoreboard players set #rg_friends_cube_jump_mod switch.data 0

kill @s

