
#> switch:maps/survival/floor_is_lava/regeneration_on_marker
#
# @within	switch:maps/survival/floor_is_lava/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_floor_is_lava_y switch.data

execute if score #rg_floor_is_lava_mod switch.data matches 0 at @s in switch:game run particle cloud 62010 ~0.5 62050 10 0 25 0 250 force
execute if score #rg_floor_is_lava_mod switch.data matches 0 at @s run clone from minecraft:overworld 62000 ~ 62000 62020 ~ 62100 to switch:game 62000 ~0 62000 strict replace force

execute if score #rg_floor_is_lava_mod switch.data matches 1 at @s in switch:game run particle cloud 62030 ~0.5 62050 10 0 25 0 250 force
execute if score #rg_floor_is_lava_mod switch.data matches 1 at @s run clone from minecraft:overworld 62020 ~ 62000 62040 ~ 62100 to switch:game 62020 ~0 62000 strict replace force

execute if score #rg_floor_is_lava_mod switch.data matches 2 at @s in switch:game run particle cloud 62050 ~0.5 62050 10 0 25 0 250 force
execute if score #rg_floor_is_lava_mod switch.data matches 2 at @s run clone from minecraft:overworld 62040 ~ 62000 62060 ~ 62100 to switch:game 62040 ~0 62000 strict replace force

execute if score #rg_floor_is_lava_mod switch.data matches 3 at @s in switch:game run particle cloud 62070 ~0.5 62050 10 0 25 0 250 force
execute if score #rg_floor_is_lava_mod switch.data matches 3 at @s run clone from minecraft:overworld 62060 ~ 62000 62080 ~ 62100 to switch:game 62060 ~0 62000 strict replace force

execute if score #rg_floor_is_lava_mod switch.data matches 4 at @s in switch:game run particle cloud 62090 ~0.5 62050 10 0 25 0 250 force
execute if score #rg_floor_is_lava_mod switch.data matches 4 at @s run clone from minecraft:overworld 62080 ~ 62000 62100 ~ 62100 to switch:game 62080 ~0 62000 strict replace force

scoreboard players add #rg_floor_is_lava_mod switch.data 1
execute if score #rg_floor_is_lava_mod switch.data matches 5 in switch:game run kill @e[type=item,x=62050,y=100,z=62050,distance=..1000]
execute if score #rg_floor_is_lava_mod switch.data matches 5 run scoreboard players add #rg_floor_is_lava_y switch.data 1
execute if score #rg_floor_is_lava_mod switch.data matches 5 run scoreboard players set #rg_floor_is_lava_mod switch.data 0

kill @s

