
#> switch:maps/survival/coupdetat/regeneration_on_marker
#
# @within	switch:maps/survival/coupdetat/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_coupdetat_y switch.data

execute if score #rg_coupdetat_mod switch.data matches 0 at @s in switch:game run particle cloud 18006 ~0.5 18011 6 0 5 0 250 force
execute if score #rg_coupdetat_mod switch.data matches 0 at @s run clone from minecraft:overworld 18000 ~ 18000 18012 ~ 18022 to switch:game 18000 ~0 18000 replace force

execute if score #rg_coupdetat_mod switch.data matches 1 at @s in switch:game run particle cloud 18017 ~0.5 18011 5 0 5 0 250 force
execute if score #rg_coupdetat_mod switch.data matches 1 at @s run clone from minecraft:overworld 18012 ~ 18000 18023 ~ 18022 to switch:game 18012 ~0 18000 replace force

scoreboard players add #rg_coupdetat_mod switch.data 1
execute if score #rg_coupdetat_mod switch.data matches 2 in switch:game run kill @e[type=item,x=18011,y=100,z=18011,distance=..1000]
execute if score #rg_coupdetat_mod switch.data matches 2 run scoreboard players add #rg_coupdetat_y switch.data 1
execute if score #rg_coupdetat_mod switch.data matches 2 run scoreboard players set #rg_coupdetat_mod switch.data 0

kill @s

