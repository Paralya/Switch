
#> switch:maps/survival/old_japan/regeneration_on_marker
#
# @within	switch:maps/survival/old_japan/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_old_japan_y switch.data

execute if score #rg_old_japan_mod switch.data matches 0 at @s in switch:game run particle cloud 47010 ~0.5 47050 10 0 25 0 250 force
execute if score #rg_old_japan_mod switch.data matches 0 at @s run clone from minecraft:overworld 47000 ~ 47000 47020 ~ 47100 to switch:game 47000 ~0 47000 replace force

execute if score #rg_old_japan_mod switch.data matches 1 at @s in switch:game run particle cloud 47030 ~0.5 47050 10 0 25 0 250 force
execute if score #rg_old_japan_mod switch.data matches 1 at @s run clone from minecraft:overworld 47020 ~ 47000 47040 ~ 47100 to switch:game 47020 ~0 47000 replace force

execute if score #rg_old_japan_mod switch.data matches 2 at @s in switch:game run particle cloud 47050 ~0.5 47050 10 0 25 0 250 force
execute if score #rg_old_japan_mod switch.data matches 2 at @s run clone from minecraft:overworld 47040 ~ 47000 47060 ~ 47100 to switch:game 47040 ~0 47000 replace force

execute if score #rg_old_japan_mod switch.data matches 3 at @s in switch:game run particle cloud 47070 ~0.5 47050 10 0 25 0 250 force
execute if score #rg_old_japan_mod switch.data matches 3 at @s run clone from minecraft:overworld 47060 ~ 47000 47080 ~ 47100 to switch:game 47060 ~0 47000 replace force

execute if score #rg_old_japan_mod switch.data matches 4 at @s in switch:game run particle cloud 47090 ~0.5 47050 10 0 25 0 250 force
execute if score #rg_old_japan_mod switch.data matches 4 at @s run clone from minecraft:overworld 47080 ~ 47000 47100 ~ 47100 to switch:game 47080 ~0 47000 replace force

scoreboard players add #rg_old_japan_mod switch.data 1
execute if score #rg_old_japan_mod switch.data matches 5 in switch:game run kill @e[type=item,x=47050,y=100,z=47050,distance=..1000]
execute if score #rg_old_japan_mod switch.data matches 5 run scoreboard players add #rg_old_japan_y switch.data 1
execute if score #rg_old_japan_mod switch.data matches 5 run scoreboard players set #rg_old_japan_mod switch.data 0

kill @s

