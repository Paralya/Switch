
#> switch:maps/survival/mushroom_plains/regeneration_on_marker
#
# @within	switch:maps/survival/mushroom_plains/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_mushroom_plains_y switch.data

execute if score #rg_mushroom_plains_mod switch.data matches 0 at @s in switch:game run particle cloud 4010 ~0.5 4061 10 0 30 0 250 force
execute if score #rg_mushroom_plains_mod switch.data matches 0 at @s run clone from minecraft:overworld 4000 ~ 4000 4020 ~ 4122 to switch:game 4000 ~0 4000 strict replace force

execute if score #rg_mushroom_plains_mod switch.data matches 1 at @s in switch:game run particle cloud 4030 ~0.5 4061 10 0 30 0 250 force
execute if score #rg_mushroom_plains_mod switch.data matches 1 at @s run clone from minecraft:overworld 4020 ~ 4000 4041 ~ 4122 to switch:game 4020 ~0 4000 strict replace force

execute if score #rg_mushroom_plains_mod switch.data matches 2 at @s in switch:game run particle cloud 4051 ~0.5 4061 10 0 30 0 250 force
execute if score #rg_mushroom_plains_mod switch.data matches 2 at @s run clone from minecraft:overworld 4041 ~ 4000 4061 ~ 4122 to switch:game 4041 ~0 4000 strict replace force

execute if score #rg_mushroom_plains_mod switch.data matches 3 at @s in switch:game run particle cloud 4071 ~0.5 4061 10 0 30 0 250 force
execute if score #rg_mushroom_plains_mod switch.data matches 3 at @s run clone from minecraft:overworld 4061 ~ 4000 4081 ~ 4122 to switch:game 4061 ~0 4000 strict replace force

execute if score #rg_mushroom_plains_mod switch.data matches 4 at @s in switch:game run particle cloud 4091 ~0.5 4061 10 0 30 0 250 force
execute if score #rg_mushroom_plains_mod switch.data matches 4 at @s run clone from minecraft:overworld 4081 ~ 4000 4102 ~ 4122 to switch:game 4081 ~0 4000 strict replace force

execute if score #rg_mushroom_plains_mod switch.data matches 5 at @s in switch:game run particle cloud 4112 ~0.5 4061 10 0 30 0 250 force
execute if score #rg_mushroom_plains_mod switch.data matches 5 at @s run clone from minecraft:overworld 4102 ~ 4000 4122 ~ 4122 to switch:game 4102 ~0 4000 strict replace force

scoreboard players add #rg_mushroom_plains_mod switch.data 1
execute if score #rg_mushroom_plains_mod switch.data matches 6 in switch:game run kill @e[type=item,x=4061,y=100,z=4061,distance=..1000]
execute if score #rg_mushroom_plains_mod switch.data matches 6 run scoreboard players add #rg_mushroom_plains_y switch.data 1
execute if score #rg_mushroom_plains_mod switch.data matches 6 run scoreboard players set #rg_mushroom_plains_mod switch.data 0

kill @s

