
#> switch:maps/survival/fireblast_1/regeneration_on_marker
#
# @within	switch:maps/survival/fireblast_1/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_fireblast_1_y switch.data

execute if score #rg_fireblast_1_mod switch.data matches 0 at @s in switch:game run particle cloud 163012 ~100.5 163037 12 0 18 0 250 force
execute if score #rg_fireblast_1_mod switch.data matches 0 at @s run clone from minecraft:overworld 163000 ~ 163000 163025 ~ 163075 to switch:game 163000 ~100 163000 replace force

execute if score #rg_fireblast_1_mod switch.data matches 1 at @s in switch:game run particle cloud 163037 ~100.5 163037 12 0 18 0 250 force
execute if score #rg_fireblast_1_mod switch.data matches 1 at @s run clone from minecraft:overworld 163025 ~ 163000 163050 ~ 163075 to switch:game 163025 ~100 163000 replace force

execute if score #rg_fireblast_1_mod switch.data matches 2 at @s in switch:game run particle cloud 163062 ~100.5 163037 12 0 18 0 250 force
execute if score #rg_fireblast_1_mod switch.data matches 2 at @s run clone from minecraft:overworld 163050 ~ 163000 163075 ~ 163075 to switch:game 163050 ~100 163000 replace force

scoreboard players add #rg_fireblast_1_mod switch.data 1
execute if score #rg_fireblast_1_mod switch.data matches 3 in switch:game run kill @e[type=item,x=163037,y=0,z=163037,distance=..1000]
execute if score #rg_fireblast_1_mod switch.data matches 3 run scoreboard players add #rg_fireblast_1_y switch.data 1
execute if score #rg_fireblast_1_mod switch.data matches 3 run scoreboard players set #rg_fireblast_1_mod switch.data 0

kill @s

