
#> switch:maps/survival/even_old_japan/regeneration_on_marker
#
# @within	switch:maps/survival/even_old_japan/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_even_old_japan_y switch.data

execute if score #rg_even_old_japan_mod switch.data matches 0 at @s in switch:game run particle cloud 12010 ~0.5 -11950 10 0 25 0 250 force
execute if score #rg_even_old_japan_mod switch.data matches 0 at @s run clone from minecraft:overworld 12000 ~ -12000 12020 ~ -11900 to switch:game 12000 ~0 -12000 strict replace force

execute if score #rg_even_old_japan_mod switch.data matches 1 at @s in switch:game run particle cloud 12030 ~0.5 -11950 10 0 25 0 250 force
execute if score #rg_even_old_japan_mod switch.data matches 1 at @s run clone from minecraft:overworld 12020 ~ -12000 12040 ~ -11900 to switch:game 12020 ~0 -12000 strict replace force

execute if score #rg_even_old_japan_mod switch.data matches 2 at @s in switch:game run particle cloud 12050 ~0.5 -11950 10 0 25 0 250 force
execute if score #rg_even_old_japan_mod switch.data matches 2 at @s run clone from minecraft:overworld 12040 ~ -12000 12060 ~ -11900 to switch:game 12040 ~0 -12000 strict replace force

execute if score #rg_even_old_japan_mod switch.data matches 3 at @s in switch:game run particle cloud 12070 ~0.5 -11950 10 0 25 0 250 force
execute if score #rg_even_old_japan_mod switch.data matches 3 at @s run clone from minecraft:overworld 12060 ~ -12000 12080 ~ -11900 to switch:game 12060 ~0 -12000 strict replace force

execute if score #rg_even_old_japan_mod switch.data matches 4 at @s in switch:game run particle cloud 12090 ~0.5 -11950 10 0 25 0 250 force
execute if score #rg_even_old_japan_mod switch.data matches 4 at @s run clone from minecraft:overworld 12080 ~ -12000 12100 ~ -11900 to switch:game 12080 ~0 -12000 strict replace force

scoreboard players add #rg_even_old_japan_mod switch.data 1
execute if score #rg_even_old_japan_mod switch.data matches 5 in switch:game run kill @e[type=item,x=12050,y=100,z=-11950,distance=..1000]
execute if score #rg_even_old_japan_mod switch.data matches 5 run scoreboard players add #rg_even_old_japan_y switch.data 1
execute if score #rg_even_old_japan_mod switch.data matches 5 run scoreboard players set #rg_even_old_japan_mod switch.data 0

kill @s

