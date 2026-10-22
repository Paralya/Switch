
#> switch:maps/survival/stardust_boss_zone_nether/regeneration_on_marker
#
# @within	switch:maps/survival/stardust_boss_zone_nether/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_stardust_boss_zone_nether_y switch.data

execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 0 at @s in switch:game run particle cloud -5992 ~0.5 -9918 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 0 at @s run clone from minecraft:overworld -6000 ~ -10000 -5984 ~ -9835 to switch:game -6000 ~0 -10000 strict replace force

execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 1 at @s in switch:game run particle cloud -5976 ~0.5 -9918 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 1 at @s run clone from minecraft:overworld -5984 ~ -10000 -5967 ~ -9835 to switch:game -5984 ~0 -10000 strict replace force

execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 2 at @s in switch:game run particle cloud -5959 ~0.5 -9918 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 2 at @s run clone from minecraft:overworld -5967 ~ -10000 -5950 ~ -9835 to switch:game -5967 ~0 -10000 strict replace force

execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 3 at @s in switch:game run particle cloud -5942 ~0.5 -9918 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 3 at @s run clone from minecraft:overworld -5950 ~ -10000 -5934 ~ -9835 to switch:game -5950 ~0 -10000 strict replace force

execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 4 at @s in switch:game run particle cloud -5926 ~0.5 -9918 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 4 at @s run clone from minecraft:overworld -5934 ~ -10000 -5918 ~ -9835 to switch:game -5934 ~0 -10000 strict replace force

execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 5 at @s in switch:game run particle cloud -5910 ~0.5 -9918 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 5 at @s run clone from minecraft:overworld -5918 ~ -10000 -5901 ~ -9835 to switch:game -5918 ~0 -10000 strict replace force

execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 6 at @s in switch:game run particle cloud -5893 ~0.5 -9918 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 6 at @s run clone from minecraft:overworld -5901 ~ -10000 -5884 ~ -9835 to switch:game -5901 ~0 -10000 strict replace force

execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 7 at @s in switch:game run particle cloud -5876 ~0.5 -9918 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 7 at @s run clone from minecraft:overworld -5884 ~ -10000 -5868 ~ -9835 to switch:game -5884 ~0 -10000 strict replace force

scoreboard players add #rg_stardust_boss_zone_nether_mod switch.data 1
execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 8 in switch:game run kill @e[type=item,x=-5934,y=100,z=-9917,distance=..1000]
execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 8 run scoreboard players add #rg_stardust_boss_zone_nether_y switch.data 1
execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 8 run scoreboard players set #rg_stardust_boss_zone_nether_mod switch.data 0

kill @s

