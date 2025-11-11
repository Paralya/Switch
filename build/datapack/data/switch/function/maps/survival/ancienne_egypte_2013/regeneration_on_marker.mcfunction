
#> switch:maps/survival/ancienne_egypte_2013/regeneration_on_marker
#
# @within	switch:maps/survival/ancienne_egypte_2013/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_ancienne_egypte_2013_y switch.data

execute if score #rg_ancienne_egypte_2013_mod switch.data matches 0 at @s in switch:game run particle cloud 128009 ~0.5 128056 9 0 28 0 250 force
execute if score #rg_ancienne_egypte_2013_mod switch.data matches 0 at @s run clone from minecraft:overworld 128000 ~ 128000 128019 ~ 128113 to switch:game 128000 ~0 128000 strict replace force

execute if score #rg_ancienne_egypte_2013_mod switch.data matches 1 at @s in switch:game run particle cloud 128028 ~0.5 128056 9 0 28 0 250 force
execute if score #rg_ancienne_egypte_2013_mod switch.data matches 1 at @s run clone from minecraft:overworld 128019 ~ 128000 128038 ~ 128113 to switch:game 128019 ~0 128000 strict replace force

execute if score #rg_ancienne_egypte_2013_mod switch.data matches 2 at @s in switch:game run particle cloud 128047 ~0.5 128056 9 0 28 0 250 force
execute if score #rg_ancienne_egypte_2013_mod switch.data matches 2 at @s run clone from minecraft:overworld 128038 ~ 128000 128057 ~ 128113 to switch:game 128038 ~0 128000 strict replace force

execute if score #rg_ancienne_egypte_2013_mod switch.data matches 3 at @s in switch:game run particle cloud 128066 ~0.5 128056 9 0 28 0 250 force
execute if score #rg_ancienne_egypte_2013_mod switch.data matches 3 at @s run clone from minecraft:overworld 128057 ~ 128000 128076 ~ 128113 to switch:game 128057 ~0 128000 strict replace force

execute if score #rg_ancienne_egypte_2013_mod switch.data matches 4 at @s in switch:game run particle cloud 128085 ~0.5 128056 9 0 28 0 250 force
execute if score #rg_ancienne_egypte_2013_mod switch.data matches 4 at @s run clone from minecraft:overworld 128076 ~ 128000 128095 ~ 128113 to switch:game 128076 ~0 128000 strict replace force

scoreboard players add #rg_ancienne_egypte_2013_mod switch.data 1
execute if score #rg_ancienne_egypte_2013_mod switch.data matches 5 in switch:game run kill @e[type=item,x=128047,y=100,z=128056,distance=..1000]
execute if score #rg_ancienne_egypte_2013_mod switch.data matches 5 run scoreboard players add #rg_ancienne_egypte_2013_y switch.data 1
execute if score #rg_ancienne_egypte_2013_mod switch.data matches 5 run scoreboard players set #rg_ancienne_egypte_2013_mod switch.data 0

kill @s

