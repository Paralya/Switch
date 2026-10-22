
#> switch:maps/survival/jn_biomes_relief/regeneration_on_marker
#
# @within	switch:maps/survival/jn_biomes_relief/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_jn_biomes_relief_y switch.data

execute if score #rg_jn_biomes_relief_mod switch.data matches 0 at @s in switch:game run particle cloud -9990 ~0.5 6069 10 0 34 0 250 force
execute if score #rg_jn_biomes_relief_mod switch.data matches 0 at @s run clone from minecraft:overworld -10000 ~ 6000 -9980 ~ 6139 to switch:game -10000 ~0 6000 strict replace force

execute if score #rg_jn_biomes_relief_mod switch.data matches 1 at @s in switch:game run particle cloud -9970 ~0.5 6069 10 0 34 0 250 force
execute if score #rg_jn_biomes_relief_mod switch.data matches 1 at @s run clone from minecraft:overworld -9980 ~ 6000 -9960 ~ 6139 to switch:game -9980 ~0 6000 strict replace force

execute if score #rg_jn_biomes_relief_mod switch.data matches 2 at @s in switch:game run particle cloud -9951 ~0.5 6069 9 0 34 0 250 force
execute if score #rg_jn_biomes_relief_mod switch.data matches 2 at @s run clone from minecraft:overworld -9960 ~ 6000 -9941 ~ 6139 to switch:game -9960 ~0 6000 strict replace force

execute if score #rg_jn_biomes_relief_mod switch.data matches 3 at @s in switch:game run particle cloud -9931 ~0.5 6069 10 0 34 0 250 force
execute if score #rg_jn_biomes_relief_mod switch.data matches 3 at @s run clone from minecraft:overworld -9941 ~ 6000 -9921 ~ 6139 to switch:game -9941 ~0 6000 strict replace force

execute if score #rg_jn_biomes_relief_mod switch.data matches 4 at @s in switch:game run particle cloud -9911 ~0.5 6069 10 0 34 0 250 force
execute if score #rg_jn_biomes_relief_mod switch.data matches 4 at @s run clone from minecraft:overworld -9921 ~ 6000 -9901 ~ 6139 to switch:game -9921 ~0 6000 strict replace force

execute if score #rg_jn_biomes_relief_mod switch.data matches 5 at @s in switch:game run particle cloud -9891 ~0.5 6069 10 0 34 0 250 force
execute if score #rg_jn_biomes_relief_mod switch.data matches 5 at @s run clone from minecraft:overworld -9901 ~ 6000 -9881 ~ 6139 to switch:game -9901 ~0 6000 strict replace force

execute if score #rg_jn_biomes_relief_mod switch.data matches 6 at @s in switch:game run particle cloud -9871 ~0.5 6069 10 0 34 0 250 force
execute if score #rg_jn_biomes_relief_mod switch.data matches 6 at @s run clone from minecraft:overworld -9881 ~ 6000 -9861 ~ 6139 to switch:game -9881 ~0 6000 strict replace force

execute if score #rg_jn_biomes_relief_mod switch.data matches 7 at @s in switch:game run particle cloud -9852 ~0.5 6069 9 0 34 0 250 force
execute if score #rg_jn_biomes_relief_mod switch.data matches 7 at @s run clone from minecraft:overworld -9861 ~ 6000 -9842 ~ 6139 to switch:game -9861 ~0 6000 strict replace force

execute if score #rg_jn_biomes_relief_mod switch.data matches 8 at @s in switch:game run particle cloud -9832 ~0.5 6069 10 0 34 0 250 force
execute if score #rg_jn_biomes_relief_mod switch.data matches 8 at @s run clone from minecraft:overworld -9842 ~ 6000 -9822 ~ 6139 to switch:game -9842 ~0 6000 strict replace force

execute if score #rg_jn_biomes_relief_mod switch.data matches 9 at @s in switch:game run particle cloud -9812 ~0.5 6069 10 0 34 0 250 force
execute if score #rg_jn_biomes_relief_mod switch.data matches 9 at @s run clone from minecraft:overworld -9822 ~ 6000 -9802 ~ 6139 to switch:game -9822 ~0 6000 strict replace force

scoreboard players add #rg_jn_biomes_relief_mod switch.data 1
execute if score #rg_jn_biomes_relief_mod switch.data matches 10 in switch:game run kill @e[type=item,x=-9901,y=100,z=6069,distance=..1000]
execute if score #rg_jn_biomes_relief_mod switch.data matches 10 run scoreboard players add #rg_jn_biomes_relief_y switch.data 1
execute if score #rg_jn_biomes_relief_mod switch.data matches 10 run scoreboard players set #rg_jn_biomes_relief_mod switch.data 0

kill @s

