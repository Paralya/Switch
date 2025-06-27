
#> switch:maps/survival/even_old_japan/regeneration_on_marker
#
# @within	switch:maps/survival/even_old_japan/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_even_old_japan_y switch.data

execute if score #rg_even_old_japan_mod switch.data matches 0 at @s in switch:game run particle cloud 162010 ~0.5 162050 10 0 25 0 250 force
execute if score #rg_even_old_japan_mod switch.data matches 0 at @s run clone from minecraft:overworld 162000 ~ 162000 162020 ~ 162100 to switch:game 162000 ~0 162000 replace force

execute if score #rg_even_old_japan_mod switch.data matches 1 at @s in switch:game run particle cloud 162030 ~0.5 162050 10 0 25 0 250 force
execute if score #rg_even_old_japan_mod switch.data matches 1 at @s run clone from minecraft:overworld 162020 ~ 162000 162040 ~ 162100 to switch:game 162020 ~0 162000 replace force

execute if score #rg_even_old_japan_mod switch.data matches 2 at @s in switch:game run particle cloud 162050 ~0.5 162050 10 0 25 0 250 force
execute if score #rg_even_old_japan_mod switch.data matches 2 at @s run clone from minecraft:overworld 162040 ~ 162000 162060 ~ 162100 to switch:game 162040 ~0 162000 replace force

execute if score #rg_even_old_japan_mod switch.data matches 3 at @s in switch:game run particle cloud 162070 ~0.5 162050 10 0 25 0 250 force
execute if score #rg_even_old_japan_mod switch.data matches 3 at @s run clone from minecraft:overworld 162060 ~ 162000 162080 ~ 162100 to switch:game 162060 ~0 162000 replace force

execute if score #rg_even_old_japan_mod switch.data matches 4 at @s in switch:game run particle cloud 162090 ~0.5 162050 10 0 25 0 250 force
execute if score #rg_even_old_japan_mod switch.data matches 4 at @s run clone from minecraft:overworld 162080 ~ 162000 162100 ~ 162100 to switch:game 162080 ~0 162000 replace force

scoreboard players add #rg_even_old_japan_mod switch.data 1
execute if score #rg_even_old_japan_mod switch.data matches 5 in switch:game run kill @e[type=item,x=162050,y=100,z=162050,distance=..1000]
execute if score #rg_even_old_japan_mod switch.data matches 5 run scoreboard players add #rg_even_old_japan_y switch.data 1
execute if score #rg_even_old_japan_mod switch.data matches 5 run scoreboard players set #rg_even_old_japan_mod switch.data 0

kill @s

