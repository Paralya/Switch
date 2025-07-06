
#> switch:maps/survival/slimy_ground/regeneration_on_marker
#
# @within	switch:maps/survival/slimy_ground/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_slimy_ground_y switch.data

execute if score #rg_slimy_ground_mod switch.data matches 0 at @s in switch:game run particle cloud 60010 ~0.5 60050 10 0 25 0 250 force
execute if score #rg_slimy_ground_mod switch.data matches 0 at @s run clone from minecraft:overworld 60000 ~ 60000 60020 ~ 60100 to switch:game 60000 ~0 60000 replace force

execute if score #rg_slimy_ground_mod switch.data matches 1 at @s in switch:game run particle cloud 60030 ~0.5 60050 10 0 25 0 250 force
execute if score #rg_slimy_ground_mod switch.data matches 1 at @s run clone from minecraft:overworld 60020 ~ 60000 60040 ~ 60100 to switch:game 60020 ~0 60000 replace force

execute if score #rg_slimy_ground_mod switch.data matches 2 at @s in switch:game run particle cloud 60050 ~0.5 60050 10 0 25 0 250 force
execute if score #rg_slimy_ground_mod switch.data matches 2 at @s run clone from minecraft:overworld 60040 ~ 60000 60060 ~ 60100 to switch:game 60040 ~0 60000 replace force

execute if score #rg_slimy_ground_mod switch.data matches 3 at @s in switch:game run particle cloud 60070 ~0.5 60050 10 0 25 0 250 force
execute if score #rg_slimy_ground_mod switch.data matches 3 at @s run clone from minecraft:overworld 60060 ~ 60000 60080 ~ 60100 to switch:game 60060 ~0 60000 replace force

execute if score #rg_slimy_ground_mod switch.data matches 4 at @s in switch:game run particle cloud 60090 ~0.5 60050 10 0 25 0 250 force
execute if score #rg_slimy_ground_mod switch.data matches 4 at @s run clone from minecraft:overworld 60080 ~ 60000 60100 ~ 60100 to switch:game 60080 ~0 60000 replace force

scoreboard players add #rg_slimy_ground_mod switch.data 1
execute if score #rg_slimy_ground_mod switch.data matches 5 in switch:game run kill @e[type=item,x=60050,y=100,z=60050,distance=..1000]
execute if score #rg_slimy_ground_mod switch.data matches 5 run scoreboard players add #rg_slimy_ground_y switch.data 1
execute if score #rg_slimy_ground_mod switch.data matches 5 run scoreboard players set #rg_slimy_ground_mod switch.data 0

kill @s

