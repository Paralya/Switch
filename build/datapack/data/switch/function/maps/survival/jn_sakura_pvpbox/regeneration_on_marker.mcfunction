
#> switch:maps/survival/jn_sakura_pvpbox/regeneration_on_marker
#
# @within	switch:maps/survival/jn_sakura_pvpbox/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_jn_sakura_pvpbox_y switch.data

execute if score #rg_jn_sakura_pvpbox_mod switch.data matches 0 at @s in switch:game run particle cloud -5990 ~0.5 10050 10 0 25 0 250 force
execute if score #rg_jn_sakura_pvpbox_mod switch.data matches 0 at @s run clone from minecraft:overworld -6000 ~ 10000 -5980 ~ 10100 to switch:game -6000 ~0 10000 strict replace force

execute if score #rg_jn_sakura_pvpbox_mod switch.data matches 1 at @s in switch:game run particle cloud -5970 ~0.5 10050 10 0 25 0 250 force
execute if score #rg_jn_sakura_pvpbox_mod switch.data matches 1 at @s run clone from minecraft:overworld -5980 ~ 10000 -5960 ~ 10100 to switch:game -5980 ~0 10000 strict replace force

execute if score #rg_jn_sakura_pvpbox_mod switch.data matches 2 at @s in switch:game run particle cloud -5950 ~0.5 10050 10 0 25 0 250 force
execute if score #rg_jn_sakura_pvpbox_mod switch.data matches 2 at @s run clone from minecraft:overworld -5960 ~ 10000 -5940 ~ 10100 to switch:game -5960 ~0 10000 strict replace force

execute if score #rg_jn_sakura_pvpbox_mod switch.data matches 3 at @s in switch:game run particle cloud -5930 ~0.5 10050 10 0 25 0 250 force
execute if score #rg_jn_sakura_pvpbox_mod switch.data matches 3 at @s run clone from minecraft:overworld -5940 ~ 10000 -5920 ~ 10100 to switch:game -5940 ~0 10000 strict replace force

execute if score #rg_jn_sakura_pvpbox_mod switch.data matches 4 at @s in switch:game run particle cloud -5910 ~0.5 10050 10 0 25 0 250 force
execute if score #rg_jn_sakura_pvpbox_mod switch.data matches 4 at @s run clone from minecraft:overworld -5920 ~ 10000 -5900 ~ 10100 to switch:game -5920 ~0 10000 strict replace force

scoreboard players add #rg_jn_sakura_pvpbox_mod switch.data 1
execute if score #rg_jn_sakura_pvpbox_mod switch.data matches 5 in switch:game run kill @e[type=item,x=-5950,y=100,z=10050,distance=..1000]
execute if score #rg_jn_sakura_pvpbox_mod switch.data matches 5 run scoreboard players add #rg_jn_sakura_pvpbox_y switch.data 1
execute if score #rg_jn_sakura_pvpbox_mod switch.data matches 5 run scoreboard players set #rg_jn_sakura_pvpbox_mod switch.data 0

kill @s

