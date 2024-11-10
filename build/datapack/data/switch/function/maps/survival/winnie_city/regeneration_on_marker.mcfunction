
#> switch:maps/survival/winnie_city/regeneration_on_marker
#
# @within	switch:maps/survival/winnie_city/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_winnie_city_y switch.data

execute if score #rg_winnie_city_mod switch.data matches 0 at @s in switch:game run particle cloud 117010 ~100.5 117065 10 0 32 0 250 force
execute if score #rg_winnie_city_mod switch.data matches 0 at @s run clone from minecraft:overworld 117000 ~ 117000 117020 ~ 117130 to switch:game 117000 ~100 117000 replace force

execute if score #rg_winnie_city_mod switch.data matches 1 at @s in switch:game run particle cloud 117030 ~100.5 117065 10 0 32 0 250 force
execute if score #rg_winnie_city_mod switch.data matches 1 at @s run clone from minecraft:overworld 117020 ~ 117000 117040 ~ 117130 to switch:game 117020 ~100 117000 replace force

execute if score #rg_winnie_city_mod switch.data matches 2 at @s in switch:game run particle cloud 117050 ~100.5 117065 10 0 32 0 250 force
execute if score #rg_winnie_city_mod switch.data matches 2 at @s run clone from minecraft:overworld 117040 ~ 117000 117060 ~ 117130 to switch:game 117040 ~100 117000 replace force

execute if score #rg_winnie_city_mod switch.data matches 3 at @s in switch:game run particle cloud 117069 ~100.5 117065 9 0 32 0 250 force
execute if score #rg_winnie_city_mod switch.data matches 3 at @s run clone from minecraft:overworld 117060 ~ 117000 117079 ~ 117130 to switch:game 117060 ~100 117000 replace force

execute if score #rg_winnie_city_mod switch.data matches 4 at @s in switch:game run particle cloud 117089 ~100.5 117065 10 0 32 0 250 force
execute if score #rg_winnie_city_mod switch.data matches 4 at @s run clone from minecraft:overworld 117079 ~ 117000 117099 ~ 117130 to switch:game 117079 ~100 117000 replace force

execute if score #rg_winnie_city_mod switch.data matches 5 at @s in switch:game run particle cloud 117109 ~100.5 117065 10 0 32 0 250 force
execute if score #rg_winnie_city_mod switch.data matches 5 at @s run clone from minecraft:overworld 117099 ~ 117000 117119 ~ 117130 to switch:game 117099 ~100 117000 replace force

scoreboard players add #rg_winnie_city_mod switch.data 1
execute if score #rg_winnie_city_mod switch.data matches 6 in switch:game run kill @e[type=item,x=117059,y=0,z=117065,distance=..1000]
execute if score #rg_winnie_city_mod switch.data matches 6 run scoreboard players add #rg_winnie_city_y switch.data 1
execute if score #rg_winnie_city_mod switch.data matches 6 run scoreboard players set #rg_winnie_city_mod switch.data 0

kill @s

