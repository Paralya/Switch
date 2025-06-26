
#> switch:maps/survival/old_japan_apocalypse/regeneration_on_marker
#
# @within	switch:maps/survival/old_japan_apocalypse/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_old_japan_apocalypse_y switch.data

execute if score #rg_old_japan_apocalypse_mod switch.data matches 0 at @s in switch:game run particle cloud 129010 ~0.5 129051 10 0 25 0 250 force
execute if score #rg_old_japan_apocalypse_mod switch.data matches 0 at @s run clone from minecraft:overworld 129000 ~ 129000 129020 ~ 129102 to switch:game 129000 ~0 129000 replace force

execute if score #rg_old_japan_apocalypse_mod switch.data matches 1 at @s in switch:game run particle cloud 129030 ~0.5 129051 10 0 25 0 250 force
execute if score #rg_old_japan_apocalypse_mod switch.data matches 1 at @s run clone from minecraft:overworld 129020 ~ 129000 129041 ~ 129102 to switch:game 129020 ~0 129000 replace force

execute if score #rg_old_japan_apocalypse_mod switch.data matches 2 at @s in switch:game run particle cloud 129051 ~0.5 129051 10 0 25 0 250 force
execute if score #rg_old_japan_apocalypse_mod switch.data matches 2 at @s run clone from minecraft:overworld 129041 ~ 129000 129061 ~ 129102 to switch:game 129041 ~0 129000 replace force

execute if score #rg_old_japan_apocalypse_mod switch.data matches 3 at @s in switch:game run particle cloud 129071 ~0.5 129051 10 0 25 0 250 force
execute if score #rg_old_japan_apocalypse_mod switch.data matches 3 at @s run clone from minecraft:overworld 129061 ~ 129000 129082 ~ 129102 to switch:game 129061 ~0 129000 replace force

execute if score #rg_old_japan_apocalypse_mod switch.data matches 4 at @s in switch:game run particle cloud 129092 ~0.5 129051 10 0 25 0 250 force
execute if score #rg_old_japan_apocalypse_mod switch.data matches 4 at @s run clone from minecraft:overworld 129082 ~ 129000 129102 ~ 129102 to switch:game 129082 ~0 129000 replace force

scoreboard players add #rg_old_japan_apocalypse_mod switch.data 1
execute if score #rg_old_japan_apocalypse_mod switch.data matches 5 in switch:game run kill @e[type=item,x=129051,y=100,z=129051,distance=..1000]
execute if score #rg_old_japan_apocalypse_mod switch.data matches 5 run scoreboard players add #rg_old_japan_apocalypse_y switch.data 1
execute if score #rg_old_japan_apocalypse_mod switch.data matches 5 run scoreboard players set #rg_old_japan_apocalypse_mod switch.data 0

kill @s

