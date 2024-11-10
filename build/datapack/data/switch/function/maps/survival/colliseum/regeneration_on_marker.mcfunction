
#> switch:maps/survival/colliseum/regeneration_on_marker
#
# @within	switch:maps/survival/colliseum/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_colliseum_y switch.data

execute if score #rg_colliseum_mod switch.data matches 0 at @s in switch:game run particle cloud 59010 ~100.5 59062 10 0 31 0 250 force
execute if score #rg_colliseum_mod switch.data matches 0 at @s run clone from minecraft:overworld 59000 ~ 59000 59020 ~ 59124 to switch:game 59000 ~100 59000 replace force

execute if score #rg_colliseum_mod switch.data matches 1 at @s in switch:game run particle cloud 59030 ~100.5 59062 10 0 31 0 250 force
execute if score #rg_colliseum_mod switch.data matches 1 at @s run clone from minecraft:overworld 59020 ~ 59000 59040 ~ 59124 to switch:game 59020 ~100 59000 replace force

execute if score #rg_colliseum_mod switch.data matches 2 at @s in switch:game run particle cloud 59050 ~100.5 59062 10 0 31 0 250 force
execute if score #rg_colliseum_mod switch.data matches 2 at @s run clone from minecraft:overworld 59040 ~ 59000 59060 ~ 59124 to switch:game 59040 ~100 59000 replace force

execute if score #rg_colliseum_mod switch.data matches 3 at @s in switch:game run particle cloud 59070 ~100.5 59062 10 0 31 0 250 force
execute if score #rg_colliseum_mod switch.data matches 3 at @s run clone from minecraft:overworld 59060 ~ 59000 59080 ~ 59124 to switch:game 59060 ~100 59000 replace force

execute if score #rg_colliseum_mod switch.data matches 4 at @s in switch:game run particle cloud 59090 ~100.5 59062 10 0 31 0 250 force
execute if score #rg_colliseum_mod switch.data matches 4 at @s run clone from minecraft:overworld 59080 ~ 59000 59100 ~ 59124 to switch:game 59080 ~100 59000 replace force

execute if score #rg_colliseum_mod switch.data matches 5 at @s in switch:game run particle cloud 59110 ~100.5 59062 10 0 31 0 250 force
execute if score #rg_colliseum_mod switch.data matches 5 at @s run clone from minecraft:overworld 59100 ~ 59000 59120 ~ 59124 to switch:game 59100 ~100 59000 replace force

execute if score #rg_colliseum_mod switch.data matches 6 at @s in switch:game run particle cloud 59130 ~100.5 59062 10 0 31 0 250 force
execute if score #rg_colliseum_mod switch.data matches 6 at @s run clone from minecraft:overworld 59120 ~ 59000 59140 ~ 59124 to switch:game 59120 ~100 59000 replace force

execute if score #rg_colliseum_mod switch.data matches 7 at @s in switch:game run particle cloud 59150 ~100.5 59062 10 0 31 0 250 force
execute if score #rg_colliseum_mod switch.data matches 7 at @s run clone from minecraft:overworld 59140 ~ 59000 59160 ~ 59124 to switch:game 59140 ~100 59000 replace force

scoreboard players add #rg_colliseum_mod switch.data 1
execute if score #rg_colliseum_mod switch.data matches 8 in switch:game run kill @e[type=item,x=59080,y=0,z=59062,distance=..1000]
execute if score #rg_colliseum_mod switch.data matches 8 run scoreboard players add #rg_colliseum_y switch.data 1
execute if score #rg_colliseum_mod switch.data matches 8 run scoreboard players set #rg_colliseum_mod switch.data 0

kill @s

