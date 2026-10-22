
#> switch:maps/survival/leather_boots/regeneration_on_marker
#
# @within	switch:maps/survival/leather_boots/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_leather_boots_y switch.data

execute if score #rg_leather_boots_mod switch.data matches 0 at @s in switch:game run particle cloud 8010 ~0.5 4050 10 0 25 0 250 force
execute if score #rg_leather_boots_mod switch.data matches 0 at @s run clone from minecraft:overworld 8000 ~ 4000 8020 ~ 4100 to switch:game 8000 ~0 4000 strict replace force

execute if score #rg_leather_boots_mod switch.data matches 1 at @s in switch:game run particle cloud 8030 ~0.5 4050 10 0 25 0 250 force
execute if score #rg_leather_boots_mod switch.data matches 1 at @s run clone from minecraft:overworld 8020 ~ 4000 8040 ~ 4100 to switch:game 8020 ~0 4000 strict replace force

execute if score #rg_leather_boots_mod switch.data matches 2 at @s in switch:game run particle cloud 8050 ~0.5 4050 10 0 25 0 250 force
execute if score #rg_leather_boots_mod switch.data matches 2 at @s run clone from minecraft:overworld 8040 ~ 4000 8060 ~ 4100 to switch:game 8040 ~0 4000 strict replace force

execute if score #rg_leather_boots_mod switch.data matches 3 at @s in switch:game run particle cloud 8070 ~0.5 4050 10 0 25 0 250 force
execute if score #rg_leather_boots_mod switch.data matches 3 at @s run clone from minecraft:overworld 8060 ~ 4000 8080 ~ 4100 to switch:game 8060 ~0 4000 strict replace force

execute if score #rg_leather_boots_mod switch.data matches 4 at @s in switch:game run particle cloud 8090 ~0.5 4050 10 0 25 0 250 force
execute if score #rg_leather_boots_mod switch.data matches 4 at @s run clone from minecraft:overworld 8080 ~ 4000 8100 ~ 4100 to switch:game 8080 ~0 4000 strict replace force

scoreboard players add #rg_leather_boots_mod switch.data 1
execute if score #rg_leather_boots_mod switch.data matches 5 in switch:game run kill @e[type=item,x=8050,y=100,z=4050,distance=..1000]
execute if score #rg_leather_boots_mod switch.data matches 5 run scoreboard players add #rg_leather_boots_y switch.data 1
execute if score #rg_leather_boots_mod switch.data matches 5 run scoreboard players set #rg_leather_boots_mod switch.data 0

kill @s

