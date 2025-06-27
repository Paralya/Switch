
#> switch:maps/survival/pillars_of_fortune/regeneration_on_marker
#
# @within	switch:maps/survival/pillars_of_fortune/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_pillars_of_fortune_y switch.data

execute if score #rg_pillars_of_fortune_mod switch.data matches 0 at @s in switch:game run particle cloud 161010 ~0.5 161050 10 0 25 0 250 force
execute if score #rg_pillars_of_fortune_mod switch.data matches 0 at @s run clone from minecraft:overworld 161000 ~ 161000 161020 ~ 161100 to switch:game 161000 ~0 161000 replace force

execute if score #rg_pillars_of_fortune_mod switch.data matches 1 at @s in switch:game run particle cloud 161030 ~0.5 161050 10 0 25 0 250 force
execute if score #rg_pillars_of_fortune_mod switch.data matches 1 at @s run clone from minecraft:overworld 161020 ~ 161000 161040 ~ 161100 to switch:game 161020 ~0 161000 replace force

execute if score #rg_pillars_of_fortune_mod switch.data matches 2 at @s in switch:game run particle cloud 161050 ~0.5 161050 10 0 25 0 250 force
execute if score #rg_pillars_of_fortune_mod switch.data matches 2 at @s run clone from minecraft:overworld 161040 ~ 161000 161060 ~ 161100 to switch:game 161040 ~0 161000 replace force

execute if score #rg_pillars_of_fortune_mod switch.data matches 3 at @s in switch:game run particle cloud 161070 ~0.5 161050 10 0 25 0 250 force
execute if score #rg_pillars_of_fortune_mod switch.data matches 3 at @s run clone from minecraft:overworld 161060 ~ 161000 161080 ~ 161100 to switch:game 161060 ~0 161000 replace force

execute if score #rg_pillars_of_fortune_mod switch.data matches 4 at @s in switch:game run particle cloud 161090 ~0.5 161050 10 0 25 0 250 force
execute if score #rg_pillars_of_fortune_mod switch.data matches 4 at @s run clone from minecraft:overworld 161080 ~ 161000 161100 ~ 161100 to switch:game 161080 ~0 161000 replace force

scoreboard players add #rg_pillars_of_fortune_mod switch.data 1
execute if score #rg_pillars_of_fortune_mod switch.data matches 5 in switch:game run kill @e[type=item,x=161050,y=100,z=161050,distance=..1000]
execute if score #rg_pillars_of_fortune_mod switch.data matches 5 run scoreboard players add #rg_pillars_of_fortune_y switch.data 1
execute if score #rg_pillars_of_fortune_mod switch.data matches 5 run scoreboard players set #rg_pillars_of_fortune_mod switch.data 0

kill @s

