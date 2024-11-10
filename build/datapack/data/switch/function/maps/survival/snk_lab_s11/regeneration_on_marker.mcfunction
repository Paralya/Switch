
#> switch:maps/survival/snk_lab_s11/regeneration_on_marker
#
# @within	switch:maps/survival/snk_lab_s11/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_snk_lab_s11_y switch.data

execute if score #rg_snk_lab_s11_mod switch.data matches 0 at @s in switch:game run particle cloud 67011 ~100.5 67036 11 0 18 0 250 force
execute if score #rg_snk_lab_s11_mod switch.data matches 0 at @s run clone from minecraft:overworld 67000 ~ 67000 67022 ~ 67073 to switch:game 67000 ~100 67000 replace force

execute if score #rg_snk_lab_s11_mod switch.data matches 1 at @s in switch:game run particle cloud 67032 ~100.5 67036 10 0 18 0 250 force
execute if score #rg_snk_lab_s11_mod switch.data matches 1 at @s run clone from minecraft:overworld 67022 ~ 67000 67043 ~ 67073 to switch:game 67022 ~100 67000 replace force

execute if score #rg_snk_lab_s11_mod switch.data matches 2 at @s in switch:game run particle cloud 67054 ~100.5 67036 11 0 18 0 250 force
execute if score #rg_snk_lab_s11_mod switch.data matches 2 at @s run clone from minecraft:overworld 67043 ~ 67000 67065 ~ 67073 to switch:game 67043 ~100 67000 replace force

scoreboard players add #rg_snk_lab_s11_mod switch.data 1
execute if score #rg_snk_lab_s11_mod switch.data matches 3 in switch:game run kill @e[type=item,x=67032,y=0,z=67036,distance=..1000]
execute if score #rg_snk_lab_s11_mod switch.data matches 3 run scoreboard players add #rg_snk_lab_s11_y switch.data 1
execute if score #rg_snk_lab_s11_mod switch.data matches 3 run scoreboard players set #rg_snk_lab_s11_mod switch.data 0

kill @s

