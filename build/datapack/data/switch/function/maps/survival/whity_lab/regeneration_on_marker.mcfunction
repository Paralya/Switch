
#> switch:maps/survival/whity_lab/regeneration_on_marker
#
# @within	switch:maps/survival/whity_lab/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_whity_lab_y switch.data

execute if score #rg_whity_lab_mod switch.data matches 0 at @s in switch:game run particle cloud -7990 ~0.5 2051 10 0 25 0 250 force
execute if score #rg_whity_lab_mod switch.data matches 0 at @s run clone from minecraft:overworld -8000 ~ 2000 -7980 ~ 2102 to switch:game -8000 ~0 2000 strict replace force

execute if score #rg_whity_lab_mod switch.data matches 1 at @s in switch:game run particle cloud -7970 ~0.5 2051 10 0 25 0 250 force
execute if score #rg_whity_lab_mod switch.data matches 1 at @s run clone from minecraft:overworld -7980 ~ 2000 -7959 ~ 2102 to switch:game -7980 ~0 2000 strict replace force

execute if score #rg_whity_lab_mod switch.data matches 2 at @s in switch:game run particle cloud -7949 ~0.5 2051 10 0 25 0 250 force
execute if score #rg_whity_lab_mod switch.data matches 2 at @s run clone from minecraft:overworld -7959 ~ 2000 -7939 ~ 2102 to switch:game -7959 ~0 2000 strict replace force

execute if score #rg_whity_lab_mod switch.data matches 3 at @s in switch:game run particle cloud -7929 ~0.5 2051 10 0 25 0 250 force
execute if score #rg_whity_lab_mod switch.data matches 3 at @s run clone from minecraft:overworld -7939 ~ 2000 -7918 ~ 2102 to switch:game -7939 ~0 2000 strict replace force

execute if score #rg_whity_lab_mod switch.data matches 4 at @s in switch:game run particle cloud -7908 ~0.5 2051 10 0 25 0 250 force
execute if score #rg_whity_lab_mod switch.data matches 4 at @s run clone from minecraft:overworld -7918 ~ 2000 -7898 ~ 2102 to switch:game -7918 ~0 2000 strict replace force

scoreboard players add #rg_whity_lab_mod switch.data 1
execute if score #rg_whity_lab_mod switch.data matches 5 in switch:game run kill @e[type=item,x=-7949,y=100,z=2051,distance=..1000]
execute if score #rg_whity_lab_mod switch.data matches 5 run scoreboard players add #rg_whity_lab_y switch.data 1
execute if score #rg_whity_lab_mod switch.data matches 5 run scoreboard players set #rg_whity_lab_mod switch.data 0

kill @s

