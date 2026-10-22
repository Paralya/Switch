
#> switch:maps/survival/stardust_boss_zone/regeneration_on_marker
#
# @within	switch:maps/survival/stardust_boss_zone/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_stardust_boss_zone_y switch.data

execute if score #rg_stardust_boss_zone_mod switch.data matches 0 at @s in switch:game run particle cloud -7992 ~0.5 -9918 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_mod switch.data matches 0 at @s run clone from minecraft:overworld -8000 ~ -10000 -7984 ~ -9835 to switch:game -8000 ~0 -10000 strict replace force

execute if score #rg_stardust_boss_zone_mod switch.data matches 1 at @s in switch:game run particle cloud -7976 ~0.5 -9918 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_mod switch.data matches 1 at @s run clone from minecraft:overworld -7984 ~ -10000 -7967 ~ -9835 to switch:game -7984 ~0 -10000 strict replace force

execute if score #rg_stardust_boss_zone_mod switch.data matches 2 at @s in switch:game run particle cloud -7959 ~0.5 -9918 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_mod switch.data matches 2 at @s run clone from minecraft:overworld -7967 ~ -10000 -7950 ~ -9835 to switch:game -7967 ~0 -10000 strict replace force

execute if score #rg_stardust_boss_zone_mod switch.data matches 3 at @s in switch:game run particle cloud -7942 ~0.5 -9918 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_mod switch.data matches 3 at @s run clone from minecraft:overworld -7950 ~ -10000 -7934 ~ -9835 to switch:game -7950 ~0 -10000 strict replace force

execute if score #rg_stardust_boss_zone_mod switch.data matches 4 at @s in switch:game run particle cloud -7926 ~0.5 -9918 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_mod switch.data matches 4 at @s run clone from minecraft:overworld -7934 ~ -10000 -7918 ~ -9835 to switch:game -7934 ~0 -10000 strict replace force

execute if score #rg_stardust_boss_zone_mod switch.data matches 5 at @s in switch:game run particle cloud -7910 ~0.5 -9918 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_mod switch.data matches 5 at @s run clone from minecraft:overworld -7918 ~ -10000 -7901 ~ -9835 to switch:game -7918 ~0 -10000 strict replace force

execute if score #rg_stardust_boss_zone_mod switch.data matches 6 at @s in switch:game run particle cloud -7893 ~0.5 -9918 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_mod switch.data matches 6 at @s run clone from minecraft:overworld -7901 ~ -10000 -7884 ~ -9835 to switch:game -7901 ~0 -10000 strict replace force

execute if score #rg_stardust_boss_zone_mod switch.data matches 7 at @s in switch:game run particle cloud -7876 ~0.5 -9918 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_mod switch.data matches 7 at @s run clone from minecraft:overworld -7884 ~ -10000 -7868 ~ -9835 to switch:game -7884 ~0 -10000 strict replace force

scoreboard players add #rg_stardust_boss_zone_mod switch.data 1
execute if score #rg_stardust_boss_zone_mod switch.data matches 8 in switch:game run kill @e[type=item,x=-7934,y=100,z=-9917,distance=..1000]
execute if score #rg_stardust_boss_zone_mod switch.data matches 8 run scoreboard players add #rg_stardust_boss_zone_y switch.data 1
execute if score #rg_stardust_boss_zone_mod switch.data matches 8 run scoreboard players set #rg_stardust_boss_zone_mod switch.data 0

kill @s

