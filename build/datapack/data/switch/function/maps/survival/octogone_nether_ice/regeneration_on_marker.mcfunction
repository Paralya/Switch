
#> switch:maps/survival/octogone_nether_ice/regeneration_on_marker
#
# @within	switch:maps/survival/octogone_nether_ice/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_octogone_nether_ice_y switch.data

execute if score #rg_octogone_nether_ice_mod switch.data matches 0 at @s in switch:game run particle cloud 8010 ~0.5 -11960 10 0 20 0 250 force
execute if score #rg_octogone_nether_ice_mod switch.data matches 0 at @s run clone from minecraft:overworld 8000 ~ -12000 8020 ~ -11920 to switch:game 8000 ~0 -12000 strict replace force

execute if score #rg_octogone_nether_ice_mod switch.data matches 1 at @s in switch:game run particle cloud 8030 ~0.5 -11960 10 0 20 0 250 force
execute if score #rg_octogone_nether_ice_mod switch.data matches 1 at @s run clone from minecraft:overworld 8020 ~ -12000 8040 ~ -11920 to switch:game 8020 ~0 -12000 strict replace force

execute if score #rg_octogone_nether_ice_mod switch.data matches 2 at @s in switch:game run particle cloud 8050 ~0.5 -11960 10 0 20 0 250 force
execute if score #rg_octogone_nether_ice_mod switch.data matches 2 at @s run clone from minecraft:overworld 8040 ~ -12000 8060 ~ -11920 to switch:game 8040 ~0 -12000 strict replace force

execute if score #rg_octogone_nether_ice_mod switch.data matches 3 at @s in switch:game run particle cloud 8070 ~0.5 -11960 10 0 20 0 250 force
execute if score #rg_octogone_nether_ice_mod switch.data matches 3 at @s run clone from minecraft:overworld 8060 ~ -12000 8080 ~ -11920 to switch:game 8060 ~0 -12000 strict replace force

scoreboard players add #rg_octogone_nether_ice_mod switch.data 1
execute if score #rg_octogone_nether_ice_mod switch.data matches 4 in switch:game run kill @e[type=item,x=8040,y=100,z=-11960,distance=..1000]
execute if score #rg_octogone_nether_ice_mod switch.data matches 4 run scoreboard players add #rg_octogone_nether_ice_y switch.data 1
execute if score #rg_octogone_nether_ice_mod switch.data matches 4 run scoreboard players set #rg_octogone_nether_ice_mod switch.data 0

kill @s

