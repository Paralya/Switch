
#> switch:maps/survival/sakura_house/regeneration_on_marker
#
# @within	switch:maps/survival/sakura_house/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_sakura_house_y switch.data

execute if score #rg_sakura_house_mod switch.data matches 0 at @s in switch:game run particle cloud 86008 ~100.5 86067 8 0 33 0 250 force
execute if score #rg_sakura_house_mod switch.data matches 0 at @s run clone from minecraft:overworld 86000 ~ 86000 86017 ~ 86135 to switch:game 86000 ~100 86000 replace force

execute if score #rg_sakura_house_mod switch.data matches 1 at @s in switch:game run particle cloud 86026 ~100.5 86067 9 0 33 0 250 force
execute if score #rg_sakura_house_mod switch.data matches 1 at @s run clone from minecraft:overworld 86017 ~ 86000 86035 ~ 86135 to switch:game 86017 ~100 86000 replace force

execute if score #rg_sakura_house_mod switch.data matches 2 at @s in switch:game run particle cloud 86043 ~100.5 86067 8 0 33 0 250 force
execute if score #rg_sakura_house_mod switch.data matches 2 at @s run clone from minecraft:overworld 86035 ~ 86000 86052 ~ 86135 to switch:game 86035 ~100 86000 replace force

execute if score #rg_sakura_house_mod switch.data matches 3 at @s in switch:game run particle cloud 86060 ~100.5 86067 8 0 33 0 250 force
execute if score #rg_sakura_house_mod switch.data matches 3 at @s run clone from minecraft:overworld 86052 ~ 86000 86069 ~ 86135 to switch:game 86052 ~100 86000 replace force

execute if score #rg_sakura_house_mod switch.data matches 4 at @s in switch:game run particle cloud 86077 ~100.5 86067 8 0 33 0 250 force
execute if score #rg_sakura_house_mod switch.data matches 4 at @s run clone from minecraft:overworld 86069 ~ 86000 86086 ~ 86135 to switch:game 86069 ~100 86000 replace force

execute if score #rg_sakura_house_mod switch.data matches 5 at @s in switch:game run particle cloud 86095 ~100.5 86067 9 0 33 0 250 force
execute if score #rg_sakura_house_mod switch.data matches 5 at @s run clone from minecraft:overworld 86086 ~ 86000 86104 ~ 86135 to switch:game 86086 ~100 86000 replace force

execute if score #rg_sakura_house_mod switch.data matches 6 at @s in switch:game run particle cloud 86112 ~100.5 86067 8 0 33 0 250 force
execute if score #rg_sakura_house_mod switch.data matches 6 at @s run clone from minecraft:overworld 86104 ~ 86000 86121 ~ 86135 to switch:game 86104 ~100 86000 replace force

scoreboard players add #rg_sakura_house_mod switch.data 1
execute if score #rg_sakura_house_mod switch.data matches 7 in switch:game run kill @e[type=item,x=86060,y=0,z=86067,distance=..1000]
execute if score #rg_sakura_house_mod switch.data matches 7 run scoreboard players add #rg_sakura_house_y switch.data 1
execute if score #rg_sakura_house_mod switch.data matches 7 run scoreboard players set #rg_sakura_house_mod switch.data 0

kill @s

