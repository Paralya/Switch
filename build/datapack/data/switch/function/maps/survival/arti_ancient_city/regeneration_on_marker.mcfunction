
#> switch:maps/survival/arti_ancient_city/regeneration_on_marker
#
# @within	switch:maps/survival/arti_ancient_city/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_arti_ancient_city_y switch.data

execute if score #rg_arti_ancient_city_mod switch.data matches 0 at @s in switch:game run particle cloud 2009 ~0.5 -11942 9 0 29 0 250 force
execute if score #rg_arti_ancient_city_mod switch.data matches 0 at @s run clone from minecraft:overworld 2000 ~ -12000 2018 ~ -11883 to switch:game 2000 ~0 -12000 strict replace force

execute if score #rg_arti_ancient_city_mod switch.data matches 1 at @s in switch:game run particle cloud 2027 ~0.5 -11942 9 0 29 0 250 force
execute if score #rg_arti_ancient_city_mod switch.data matches 1 at @s run clone from minecraft:overworld 2018 ~ -12000 2037 ~ -11883 to switch:game 2018 ~0 -12000 strict replace force

execute if score #rg_arti_ancient_city_mod switch.data matches 2 at @s in switch:game run particle cloud 2046 ~0.5 -11942 9 0 29 0 250 force
execute if score #rg_arti_ancient_city_mod switch.data matches 2 at @s run clone from minecraft:overworld 2037 ~ -12000 2056 ~ -11883 to switch:game 2037 ~0 -12000 strict replace force

execute if score #rg_arti_ancient_city_mod switch.data matches 3 at @s in switch:game run particle cloud 2065 ~0.5 -11942 9 0 29 0 250 force
execute if score #rg_arti_ancient_city_mod switch.data matches 3 at @s run clone from minecraft:overworld 2056 ~ -12000 2074 ~ -11883 to switch:game 2056 ~0 -12000 strict replace force

execute if score #rg_arti_ancient_city_mod switch.data matches 4 at @s in switch:game run particle cloud 2083 ~0.5 -11942 9 0 29 0 250 force
execute if score #rg_arti_ancient_city_mod switch.data matches 4 at @s run clone from minecraft:overworld 2074 ~ -12000 2092 ~ -11883 to switch:game 2074 ~0 -12000 strict replace force

execute if score #rg_arti_ancient_city_mod switch.data matches 5 at @s in switch:game run particle cloud 2101 ~0.5 -11942 9 0 29 0 250 force
execute if score #rg_arti_ancient_city_mod switch.data matches 5 at @s run clone from minecraft:overworld 2092 ~ -12000 2111 ~ -11883 to switch:game 2092 ~0 -12000 strict replace force

scoreboard players add #rg_arti_ancient_city_mod switch.data 1
execute if score #rg_arti_ancient_city_mod switch.data matches 6 in switch:game run kill @e[type=item,x=2055,y=100,z=-11941,distance=..1000]
execute if score #rg_arti_ancient_city_mod switch.data matches 6 run scoreboard players add #rg_arti_ancient_city_y switch.data 1
execute if score #rg_arti_ancient_city_mod switch.data matches 6 run scoreboard players set #rg_arti_ancient_city_mod switch.data 0

kill @s

