
#> switch:maps/survival/jn_countries_castle/regeneration_on_marker
#
# @within	switch:maps/survival/jn_countries_castle/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_jn_countries_castle_y switch.data

execute if score #rg_jn_countries_castle_mod switch.data matches 0 at @s in switch:game run particle cloud 132010 ~100.5 132060 10 0 30 0 250 force
execute if score #rg_jn_countries_castle_mod switch.data matches 0 at @s run clone from minecraft:overworld 132000 ~ 132000 132020 ~ 132120 to switch:game 132000 ~100 132000 replace force

execute if score #rg_jn_countries_castle_mod switch.data matches 1 at @s in switch:game run particle cloud 132030 ~100.5 132060 10 0 30 0 250 force
execute if score #rg_jn_countries_castle_mod switch.data matches 1 at @s run clone from minecraft:overworld 132020 ~ 132000 132040 ~ 132120 to switch:game 132020 ~100 132000 replace force

execute if score #rg_jn_countries_castle_mod switch.data matches 2 at @s in switch:game run particle cloud 132050 ~100.5 132060 10 0 30 0 250 force
execute if score #rg_jn_countries_castle_mod switch.data matches 2 at @s run clone from minecraft:overworld 132040 ~ 132000 132060 ~ 132120 to switch:game 132040 ~100 132000 replace force

execute if score #rg_jn_countries_castle_mod switch.data matches 3 at @s in switch:game run particle cloud 132070 ~100.5 132060 10 0 30 0 250 force
execute if score #rg_jn_countries_castle_mod switch.data matches 3 at @s run clone from minecraft:overworld 132060 ~ 132000 132080 ~ 132120 to switch:game 132060 ~100 132000 replace force

execute if score #rg_jn_countries_castle_mod switch.data matches 4 at @s in switch:game run particle cloud 132090 ~100.5 132060 10 0 30 0 250 force
execute if score #rg_jn_countries_castle_mod switch.data matches 4 at @s run clone from minecraft:overworld 132080 ~ 132000 132100 ~ 132120 to switch:game 132080 ~100 132000 replace force

execute if score #rg_jn_countries_castle_mod switch.data matches 5 at @s in switch:game run particle cloud 132110 ~100.5 132060 10 0 30 0 250 force
execute if score #rg_jn_countries_castle_mod switch.data matches 5 at @s run clone from minecraft:overworld 132100 ~ 132000 132120 ~ 132120 to switch:game 132100 ~100 132000 replace force

scoreboard players add #rg_jn_countries_castle_mod switch.data 1
execute if score #rg_jn_countries_castle_mod switch.data matches 6 in switch:game run kill @e[type=item,x=132060,y=0,z=132060,distance=..1000]
execute if score #rg_jn_countries_castle_mod switch.data matches 6 run scoreboard players add #rg_jn_countries_castle_y switch.data 1
execute if score #rg_jn_countries_castle_mod switch.data matches 6 run scoreboard players set #rg_jn_countries_castle_mod switch.data 0

kill @s

