
#> switch:maps/survival/jn_ice_castles/regeneration_on_marker
#
# @within	switch:maps/survival/jn_ice_castles/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_jn_ice_castles_y switch.data

execute if score #rg_jn_ice_castles_mod switch.data matches 0 at @s in switch:game run particle cloud 133007 ~100.5 133065 7 0 32 0 250 force
execute if score #rg_jn_ice_castles_mod switch.data matches 0 at @s run clone from minecraft:overworld 133000 ~ 133000 133014 ~ 133130 to switch:game 133000 ~100 133000 replace force

execute if score #rg_jn_ice_castles_mod switch.data matches 1 at @s in switch:game run particle cloud 133020 ~100.5 133065 6 0 32 0 250 force
execute if score #rg_jn_ice_castles_mod switch.data matches 1 at @s run clone from minecraft:overworld 133014 ~ 133000 133027 ~ 133130 to switch:game 133014 ~100 133000 replace force

execute if score #rg_jn_ice_castles_mod switch.data matches 2 at @s in switch:game run particle cloud 133033 ~100.5 133065 6 0 32 0 250 force
execute if score #rg_jn_ice_castles_mod switch.data matches 2 at @s run clone from minecraft:overworld 133027 ~ 133000 133040 ~ 133130 to switch:game 133027 ~100 133000 replace force

execute if score #rg_jn_ice_castles_mod switch.data matches 3 at @s in switch:game run particle cloud 133047 ~100.5 133065 7 0 32 0 250 force
execute if score #rg_jn_ice_castles_mod switch.data matches 3 at @s run clone from minecraft:overworld 133040 ~ 133000 133054 ~ 133130 to switch:game 133040 ~100 133000 replace force

scoreboard players add #rg_jn_ice_castles_mod switch.data 1
execute if score #rg_jn_ice_castles_mod switch.data matches 4 in switch:game run kill @e[type=item,x=133027,y=0,z=133065,distance=..1000]
execute if score #rg_jn_ice_castles_mod switch.data matches 4 run scoreboard players add #rg_jn_ice_castles_y switch.data 1
execute if score #rg_jn_ice_castles_mod switch.data matches 4 run scoreboard players set #rg_jn_ice_castles_mod switch.data 0

kill @s

