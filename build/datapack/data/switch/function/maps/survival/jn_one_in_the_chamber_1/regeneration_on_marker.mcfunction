
#> switch:maps/survival/jn_one_in_the_chamber_1/regeneration_on_marker
#
# @within	switch:maps/survival/jn_one_in_the_chamber_1/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_jn_one_in_the_chamber_1_y switch.data

execute if score #rg_jn_one_in_the_chamber_1_mod switch.data matches 0 at @s in switch:game run particle cloud 137010 ~100.5 137060 10 0 30 0 250 force
execute if score #rg_jn_one_in_the_chamber_1_mod switch.data matches 0 at @s run clone from minecraft:overworld 137000 ~ 137000 137020 ~ 137120 to switch:game 137000 ~100 137000 replace force

execute if score #rg_jn_one_in_the_chamber_1_mod switch.data matches 1 at @s in switch:game run particle cloud 137029 ~100.5 137060 9 0 30 0 250 force
execute if score #rg_jn_one_in_the_chamber_1_mod switch.data matches 1 at @s run clone from minecraft:overworld 137020 ~ 137000 137039 ~ 137120 to switch:game 137020 ~100 137000 replace force

execute if score #rg_jn_one_in_the_chamber_1_mod switch.data matches 2 at @s in switch:game run particle cloud 137048 ~100.5 137060 9 0 30 0 250 force
execute if score #rg_jn_one_in_the_chamber_1_mod switch.data matches 2 at @s run clone from minecraft:overworld 137039 ~ 137000 137058 ~ 137120 to switch:game 137039 ~100 137000 replace force

execute if score #rg_jn_one_in_the_chamber_1_mod switch.data matches 3 at @s in switch:game run particle cloud 137068 ~100.5 137060 10 0 30 0 250 force
execute if score #rg_jn_one_in_the_chamber_1_mod switch.data matches 3 at @s run clone from minecraft:overworld 137058 ~ 137000 137078 ~ 137120 to switch:game 137058 ~100 137000 replace force

scoreboard players add #rg_jn_one_in_the_chamber_1_mod switch.data 1
execute if score #rg_jn_one_in_the_chamber_1_mod switch.data matches 4 in switch:game run kill @e[type=item,x=137039,y=0,z=137060,distance=..1000]
execute if score #rg_jn_one_in_the_chamber_1_mod switch.data matches 4 run scoreboard players add #rg_jn_one_in_the_chamber_1_y switch.data 1
execute if score #rg_jn_one_in_the_chamber_1_mod switch.data matches 4 run scoreboard players set #rg_jn_one_in_the_chamber_1_mod switch.data 0

kill @s

