
#> switch:maps/survival/old_japan/regeneration_on_marker
#
# @within	switch:maps/survival/old_japan/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_old_japan_y switch.data

execute if score #rg_old_japan_mod switch.data matches 0 at @s in switch:game run particle cloud -5990 ~0.5 2050 10 0 25 0 250 force
execute if score #rg_old_japan_mod switch.data matches 0 at @s run clone from minecraft:overworld -6000 ~ 2000 -5980 ~ 2100 to switch:game -6000 ~0 2000 strict replace force

execute if score #rg_old_japan_mod switch.data matches 1 at @s in switch:game run particle cloud -5970 ~0.5 2050 10 0 25 0 250 force
execute if score #rg_old_japan_mod switch.data matches 1 at @s run clone from minecraft:overworld -5980 ~ 2000 -5960 ~ 2100 to switch:game -5980 ~0 2000 strict replace force

execute if score #rg_old_japan_mod switch.data matches 2 at @s in switch:game run particle cloud -5950 ~0.5 2050 10 0 25 0 250 force
execute if score #rg_old_japan_mod switch.data matches 2 at @s run clone from minecraft:overworld -5960 ~ 2000 -5940 ~ 2100 to switch:game -5960 ~0 2000 strict replace force

execute if score #rg_old_japan_mod switch.data matches 3 at @s in switch:game run particle cloud -5930 ~0.5 2050 10 0 25 0 250 force
execute if score #rg_old_japan_mod switch.data matches 3 at @s run clone from minecraft:overworld -5940 ~ 2000 -5920 ~ 2100 to switch:game -5940 ~0 2000 strict replace force

execute if score #rg_old_japan_mod switch.data matches 4 at @s in switch:game run particle cloud -5910 ~0.5 2050 10 0 25 0 250 force
execute if score #rg_old_japan_mod switch.data matches 4 at @s run clone from minecraft:overworld -5920 ~ 2000 -5900 ~ 2100 to switch:game -5920 ~0 2000 strict replace force

scoreboard players add #rg_old_japan_mod switch.data 1
execute if score #rg_old_japan_mod switch.data matches 5 in switch:game run kill @e[type=item,x=-5950,y=100,z=2050,distance=..1000]
execute if score #rg_old_japan_mod switch.data matches 5 run scoreboard players add #rg_old_japan_y switch.data 1
execute if score #rg_old_japan_mod switch.data matches 5 run scoreboard players set #rg_old_japan_mod switch.data 0

kill @s

