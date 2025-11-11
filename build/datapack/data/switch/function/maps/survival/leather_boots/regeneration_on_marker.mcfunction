
#> switch:maps/survival/leather_boots/regeneration_on_marker
#
# @within	switch:maps/survival/leather_boots/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_leather_boots_y switch.data

execute if score #rg_leather_boots_mod switch.data matches 0 at @s in switch:game run particle cloud 63010 ~0.5 63050 10 0 25 0 250 force
execute if score #rg_leather_boots_mod switch.data matches 0 at @s run clone from minecraft:overworld 63000 ~ 63000 63020 ~ 63100 to switch:game 63000 ~0 63000 strict replace force

execute if score #rg_leather_boots_mod switch.data matches 1 at @s in switch:game run particle cloud 63030 ~0.5 63050 10 0 25 0 250 force
execute if score #rg_leather_boots_mod switch.data matches 1 at @s run clone from minecraft:overworld 63020 ~ 63000 63040 ~ 63100 to switch:game 63020 ~0 63000 strict replace force

execute if score #rg_leather_boots_mod switch.data matches 2 at @s in switch:game run particle cloud 63050 ~0.5 63050 10 0 25 0 250 force
execute if score #rg_leather_boots_mod switch.data matches 2 at @s run clone from minecraft:overworld 63040 ~ 63000 63060 ~ 63100 to switch:game 63040 ~0 63000 strict replace force

execute if score #rg_leather_boots_mod switch.data matches 3 at @s in switch:game run particle cloud 63070 ~0.5 63050 10 0 25 0 250 force
execute if score #rg_leather_boots_mod switch.data matches 3 at @s run clone from minecraft:overworld 63060 ~ 63000 63080 ~ 63100 to switch:game 63060 ~0 63000 strict replace force

execute if score #rg_leather_boots_mod switch.data matches 4 at @s in switch:game run particle cloud 63090 ~0.5 63050 10 0 25 0 250 force
execute if score #rg_leather_boots_mod switch.data matches 4 at @s run clone from minecraft:overworld 63080 ~ 63000 63100 ~ 63100 to switch:game 63080 ~0 63000 strict replace force

scoreboard players add #rg_leather_boots_mod switch.data 1
execute if score #rg_leather_boots_mod switch.data matches 5 in switch:game run kill @e[type=item,x=63050,y=100,z=63050,distance=..1000]
execute if score #rg_leather_boots_mod switch.data matches 5 run scoreboard players add #rg_leather_boots_y switch.data 1
execute if score #rg_leather_boots_mod switch.data matches 5 run scoreboard players set #rg_leather_boots_mod switch.data 0

kill @s

