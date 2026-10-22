
#> switch:maps/survival/ancienne_egypte_2013/regeneration_on_marker
#
# @within	switch:maps/survival/ancienne_egypte_2013/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_ancienne_egypte_2013_y switch.data

execute if score #rg_ancienne_egypte_2013_mod switch.data matches 0 at @s in switch:game run particle cloud 6009 ~0.5 10056 9 0 28 0 250 force
execute if score #rg_ancienne_egypte_2013_mod switch.data matches 0 at @s run clone from minecraft:overworld 6000 ~ 10000 6019 ~ 10113 to switch:game 6000 ~0 10000 strict replace force

execute if score #rg_ancienne_egypte_2013_mod switch.data matches 1 at @s in switch:game run particle cloud 6028 ~0.5 10056 9 0 28 0 250 force
execute if score #rg_ancienne_egypte_2013_mod switch.data matches 1 at @s run clone from minecraft:overworld 6019 ~ 10000 6038 ~ 10113 to switch:game 6019 ~0 10000 strict replace force

execute if score #rg_ancienne_egypte_2013_mod switch.data matches 2 at @s in switch:game run particle cloud 6047 ~0.5 10056 9 0 28 0 250 force
execute if score #rg_ancienne_egypte_2013_mod switch.data matches 2 at @s run clone from minecraft:overworld 6038 ~ 10000 6057 ~ 10113 to switch:game 6038 ~0 10000 strict replace force

execute if score #rg_ancienne_egypte_2013_mod switch.data matches 3 at @s in switch:game run particle cloud 6066 ~0.5 10056 9 0 28 0 250 force
execute if score #rg_ancienne_egypte_2013_mod switch.data matches 3 at @s run clone from minecraft:overworld 6057 ~ 10000 6076 ~ 10113 to switch:game 6057 ~0 10000 strict replace force

execute if score #rg_ancienne_egypte_2013_mod switch.data matches 4 at @s in switch:game run particle cloud 6085 ~0.5 10056 9 0 28 0 250 force
execute if score #rg_ancienne_egypte_2013_mod switch.data matches 4 at @s run clone from minecraft:overworld 6076 ~ 10000 6095 ~ 10113 to switch:game 6076 ~0 10000 strict replace force

scoreboard players add #rg_ancienne_egypte_2013_mod switch.data 1
execute if score #rg_ancienne_egypte_2013_mod switch.data matches 5 in switch:game run kill @e[type=item,x=6047,y=100,z=10056,distance=..1000]
execute if score #rg_ancienne_egypte_2013_mod switch.data matches 5 run scoreboard players add #rg_ancienne_egypte_2013_y switch.data 1
execute if score #rg_ancienne_egypte_2013_mod switch.data matches 5 run scoreboard players set #rg_ancienne_egypte_2013_mod switch.data 0

kill @s

