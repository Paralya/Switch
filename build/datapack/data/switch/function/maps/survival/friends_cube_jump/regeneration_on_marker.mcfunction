
#> switch:maps/survival/friends_cube_jump/regeneration_on_marker
#
# @within	switch:maps/survival/friends_cube_jump/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_friends_cube_jump_y switch.data

execute if score #rg_friends_cube_jump_mod switch.data matches 0 at @s in switch:game run particle cloud 9009 ~0.5 9016 9 0 8 0 250 force
execute if score #rg_friends_cube_jump_mod switch.data matches 0 at @s run clone from minecraft:overworld 9000 ~ 9000 9018 ~ 9032 to switch:game 9000 ~0 9000 strict replace force

execute if score #rg_friends_cube_jump_mod switch.data matches 1 at @s in switch:game run particle cloud 9026 ~0.5 9016 8 0 8 0 250 force
execute if score #rg_friends_cube_jump_mod switch.data matches 1 at @s run clone from minecraft:overworld 9018 ~ 9000 9035 ~ 9032 to switch:game 9018 ~0 9000 strict replace force

scoreboard players add #rg_friends_cube_jump_mod switch.data 1
execute if score #rg_friends_cube_jump_mod switch.data matches 2 in switch:game run kill @e[type=item,x=9017,y=100,z=9016,distance=..1000]
execute if score #rg_friends_cube_jump_mod switch.data matches 2 run scoreboard players add #rg_friends_cube_jump_y switch.data 1
execute if score #rg_friends_cube_jump_mod switch.data matches 2 run scoreboard players set #rg_friends_cube_jump_mod switch.data 0

kill @s

