
#> switch:maps/survival/old_japan_apocalypse/regeneration_on_marker
#
# @within	switch:maps/survival/old_japan_apocalypse/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_old_japan_apocalypse_y switch.data

execute if score #rg_old_japan_apocalypse_mod switch.data matches 0 at @s in switch:game run particle cloud 4010 ~0.5 10051 10 0 25 0 250 force
execute if score #rg_old_japan_apocalypse_mod switch.data matches 0 at @s run clone from minecraft:overworld 4000 ~ 10000 4020 ~ 10102 to switch:game 4000 ~0 10000 strict replace force

execute if score #rg_old_japan_apocalypse_mod switch.data matches 1 at @s in switch:game run particle cloud 4030 ~0.5 10051 10 0 25 0 250 force
execute if score #rg_old_japan_apocalypse_mod switch.data matches 1 at @s run clone from minecraft:overworld 4020 ~ 10000 4041 ~ 10102 to switch:game 4020 ~0 10000 strict replace force

execute if score #rg_old_japan_apocalypse_mod switch.data matches 2 at @s in switch:game run particle cloud 4051 ~0.5 10051 10 0 25 0 250 force
execute if score #rg_old_japan_apocalypse_mod switch.data matches 2 at @s run clone from minecraft:overworld 4041 ~ 10000 4061 ~ 10102 to switch:game 4041 ~0 10000 strict replace force

execute if score #rg_old_japan_apocalypse_mod switch.data matches 3 at @s in switch:game run particle cloud 4071 ~0.5 10051 10 0 25 0 250 force
execute if score #rg_old_japan_apocalypse_mod switch.data matches 3 at @s run clone from minecraft:overworld 4061 ~ 10000 4082 ~ 10102 to switch:game 4061 ~0 10000 strict replace force

execute if score #rg_old_japan_apocalypse_mod switch.data matches 4 at @s in switch:game run particle cloud 4092 ~0.5 10051 10 0 25 0 250 force
execute if score #rg_old_japan_apocalypse_mod switch.data matches 4 at @s run clone from minecraft:overworld 4082 ~ 10000 4102 ~ 10102 to switch:game 4082 ~0 10000 strict replace force

scoreboard players add #rg_old_japan_apocalypse_mod switch.data 1
execute if score #rg_old_japan_apocalypse_mod switch.data matches 5 in switch:game run kill @e[type=item,x=4051,y=100,z=10051,distance=..1000]
execute if score #rg_old_japan_apocalypse_mod switch.data matches 5 run scoreboard players add #rg_old_japan_apocalypse_y switch.data 1
execute if score #rg_old_japan_apocalypse_mod switch.data matches 5 run scoreboard players set #rg_old_japan_apocalypse_mod switch.data 0

kill @s

