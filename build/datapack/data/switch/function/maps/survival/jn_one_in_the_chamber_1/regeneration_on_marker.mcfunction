
#> switch:maps/survival/jn_one_in_the_chamber_1/regeneration_on_marker
#
# @within	switch:maps/survival/jn_one_in_the_chamber_1/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_jn_one_in_the_chamber_1_y switch.data

execute if score #rg_jn_one_in_the_chamber_1_mod switch.data matches 0 at @s in switch:game run particle cloud -9990 ~0.5 10060 10 0 30 0 250 force
execute if score #rg_jn_one_in_the_chamber_1_mod switch.data matches 0 at @s run clone from minecraft:overworld -10000 ~ 10000 -9980 ~ 10120 to switch:game -10000 ~0 10000 strict replace force

execute if score #rg_jn_one_in_the_chamber_1_mod switch.data matches 1 at @s in switch:game run particle cloud -9971 ~0.5 10060 9 0 30 0 250 force
execute if score #rg_jn_one_in_the_chamber_1_mod switch.data matches 1 at @s run clone from minecraft:overworld -9980 ~ 10000 -9961 ~ 10120 to switch:game -9980 ~0 10000 strict replace force

execute if score #rg_jn_one_in_the_chamber_1_mod switch.data matches 2 at @s in switch:game run particle cloud -9952 ~0.5 10060 9 0 30 0 250 force
execute if score #rg_jn_one_in_the_chamber_1_mod switch.data matches 2 at @s run clone from minecraft:overworld -9961 ~ 10000 -9942 ~ 10120 to switch:game -9961 ~0 10000 strict replace force

execute if score #rg_jn_one_in_the_chamber_1_mod switch.data matches 3 at @s in switch:game run particle cloud -9932 ~0.5 10060 10 0 30 0 250 force
execute if score #rg_jn_one_in_the_chamber_1_mod switch.data matches 3 at @s run clone from minecraft:overworld -9942 ~ 10000 -9922 ~ 10120 to switch:game -9942 ~0 10000 strict replace force

scoreboard players add #rg_jn_one_in_the_chamber_1_mod switch.data 1
execute if score #rg_jn_one_in_the_chamber_1_mod switch.data matches 4 in switch:game run kill @e[type=item,x=-9961,y=100,z=10060,distance=..1000]
execute if score #rg_jn_one_in_the_chamber_1_mod switch.data matches 4 run scoreboard players add #rg_jn_one_in_the_chamber_1_y switch.data 1
execute if score #rg_jn_one_in_the_chamber_1_mod switch.data matches 4 run scoreboard players set #rg_jn_one_in_the_chamber_1_mod switch.data 0

kill @s

