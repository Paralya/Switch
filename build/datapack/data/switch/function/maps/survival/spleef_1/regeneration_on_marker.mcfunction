
#> switch:maps/survival/spleef_1/regeneration_on_marker
#
# @within	switch:maps/survival/spleef_1/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_spleef_1_y switch.data

execute if score #rg_spleef_1_mod switch.data matches 0 at @s in switch:game run particle cloud 2010 ~24.5 -5960 10 0 20 0 250 force
execute if score #rg_spleef_1_mod switch.data matches 0 at @s run clone from minecraft:overworld 2000 ~ -6000 2020 ~ -5920 to switch:game 2000 ~24 -6000 strict replace force

execute if score #rg_spleef_1_mod switch.data matches 1 at @s in switch:game run particle cloud 2030 ~24.5 -5960 10 0 20 0 250 force
execute if score #rg_spleef_1_mod switch.data matches 1 at @s run clone from minecraft:overworld 2020 ~ -6000 2040 ~ -5920 to switch:game 2020 ~24 -6000 strict replace force

execute if score #rg_spleef_1_mod switch.data matches 2 at @s in switch:game run particle cloud 2050 ~24.5 -5960 10 0 20 0 250 force
execute if score #rg_spleef_1_mod switch.data matches 2 at @s run clone from minecraft:overworld 2040 ~ -6000 2060 ~ -5920 to switch:game 2040 ~24 -6000 strict replace force

execute if score #rg_spleef_1_mod switch.data matches 3 at @s in switch:game run particle cloud 2070 ~24.5 -5960 10 0 20 0 250 force
execute if score #rg_spleef_1_mod switch.data matches 3 at @s run clone from minecraft:overworld 2060 ~ -6000 2080 ~ -5920 to switch:game 2060 ~24 -6000 strict replace force

scoreboard players add #rg_spleef_1_mod switch.data 1
execute if score #rg_spleef_1_mod switch.data matches 4 in switch:game run kill @e[type=item,x=2040,y=61,z=-5960,distance=..1000]
execute if score #rg_spleef_1_mod switch.data matches 4 run scoreboard players add #rg_spleef_1_y switch.data 1
execute if score #rg_spleef_1_mod switch.data matches 4 run scoreboard players set #rg_spleef_1_mod switch.data 0

kill @s

