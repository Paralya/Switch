
#> switch:maps/survival/jn_one_in_the_chamber_2/regeneration_on_marker
#
# @within	switch:maps/survival/jn_one_in_the_chamber_2/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_jn_one_in_the_chamber_2_y switch.data

execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 0 at @s in switch:game run particle cloud 138011 ~100.5 138050 11 0 25 0 250 force
execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 0 at @s run clone from minecraft:overworld 138000 ~ 138000 138023 ~ 138100 to switch:game 138000 ~100 138000 replace force

execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 1 at @s in switch:game run particle cloud 138035 ~100.5 138050 12 0 25 0 250 force
execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 1 at @s run clone from minecraft:overworld 138023 ~ 138000 138047 ~ 138100 to switch:game 138023 ~100 138000 replace force

execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 2 at @s in switch:game run particle cloud 138058 ~100.5 138050 11 0 25 0 250 force
execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 2 at @s run clone from minecraft:overworld 138047 ~ 138000 138070 ~ 138100 to switch:game 138047 ~100 138000 replace force

execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 3 at @s in switch:game run particle cloud 138081 ~100.5 138050 11 0 25 0 250 force
execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 3 at @s run clone from minecraft:overworld 138070 ~ 138000 138093 ~ 138100 to switch:game 138070 ~100 138000 replace force

execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 4 at @s in switch:game run particle cloud 138105 ~100.5 138050 12 0 25 0 250 force
execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 4 at @s run clone from minecraft:overworld 138093 ~ 138000 138117 ~ 138100 to switch:game 138093 ~100 138000 replace force

execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 5 at @s in switch:game run particle cloud 138128 ~100.5 138050 11 0 25 0 250 force
execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 5 at @s run clone from minecraft:overworld 138117 ~ 138000 138140 ~ 138100 to switch:game 138117 ~100 138000 replace force

scoreboard players add #rg_jn_one_in_the_chamber_2_mod switch.data 1
execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 6 in switch:game run kill @e[type=item,x=138070,y=0,z=138050,distance=..1000]
execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 6 run scoreboard players add #rg_jn_one_in_the_chamber_2_y switch.data 1
execute if score #rg_jn_one_in_the_chamber_2_mod switch.data matches 6 run scoreboard players set #rg_jn_one_in_the_chamber_2_mod switch.data 0

kill @s

