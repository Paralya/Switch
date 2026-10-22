
#> switch:maps/survival/jn_one_in_the_chamber_2/regeneration_on_marker
#
# @within	switch:maps/survival/jn_one_in_the_chamber_2/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_jn_one_in_the_chamber_2_y switch.data

execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 0 at @s in switch:game run particle cloud -9989 ~0.5 8050 11 0 25 0 250 force
execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 0 at @s run clone from minecraft:overworld -10000 ~ 8000 -9977 ~ 8100 to switch:game -10000 ~0 8000 strict replace force

execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 1 at @s in switch:game run particle cloud -9965 ~0.5 8050 12 0 25 0 250 force
execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 1 at @s run clone from minecraft:overworld -9977 ~ 8000 -9953 ~ 8100 to switch:game -9977 ~0 8000 strict replace force

execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 2 at @s in switch:game run particle cloud -9942 ~0.5 8050 11 0 25 0 250 force
execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 2 at @s run clone from minecraft:overworld -9953 ~ 8000 -9930 ~ 8100 to switch:game -9953 ~0 8000 strict replace force

execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 3 at @s in switch:game run particle cloud -9919 ~0.5 8050 11 0 25 0 250 force
execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 3 at @s run clone from minecraft:overworld -9930 ~ 8000 -9907 ~ 8100 to switch:game -9930 ~0 8000 strict replace force

execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 4 at @s in switch:game run particle cloud -9895 ~0.5 8050 12 0 25 0 250 force
execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 4 at @s run clone from minecraft:overworld -9907 ~ 8000 -9883 ~ 8100 to switch:game -9907 ~0 8000 strict replace force

execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 5 at @s in switch:game run particle cloud -9872 ~0.5 8050 11 0 25 0 250 force
execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 5 at @s run clone from minecraft:overworld -9883 ~ 8000 -9860 ~ 8100 to switch:game -9883 ~0 8000 strict replace force

scoreboard players add #rg_jn_one_in_the_chamber_2_mod switch.data 1
execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 6 in switch:game run kill @e[type=item,x=-9930,y=100,z=8050,distance=..1000]
execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 6 run scoreboard players add #rg_jn_one_in_the_chamber_2_y switch.data 1
execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 6 run scoreboard players set #rg_jn_one_in_the_chamber_2_mod switch.data 0

kill @s

