
#> switch:maps/survival/nether_storm/regeneration_on_marker
#
# @within	switch:maps/survival/nether_storm/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_nether_storm_y switch.data

execute if score #rg_nether_storm_mod switch.data matches 0 at @s in switch:game run particle cloud 10014 ~0.5 4037 14 0 18 0 250 force
execute if score #rg_nether_storm_mod switch.data matches 0 at @s run clone from minecraft:overworld 10000 ~ 4000 10028 ~ 4074 to switch:game 10000 ~0 4000 strict replace force

execute if score #rg_nether_storm_mod switch.data matches 1 at @s in switch:game run particle cloud 10042 ~0.5 4037 14 0 18 0 250 force
execute if score #rg_nether_storm_mod switch.data matches 1 at @s run clone from minecraft:overworld 10028 ~ 4000 10056 ~ 4074 to switch:game 10028 ~0 4000 strict replace force

execute if score #rg_nether_storm_mod switch.data matches 2 at @s in switch:game run particle cloud 10069 ~0.5 4037 13 0 18 0 250 force
execute if score #rg_nether_storm_mod switch.data matches 2 at @s run clone from minecraft:overworld 10056 ~ 4000 10083 ~ 4074 to switch:game 10056 ~0 4000 strict replace force

execute if score #rg_nether_storm_mod switch.data matches 3 at @s in switch:game run particle cloud 10097 ~0.5 4037 14 0 18 0 250 force
execute if score #rg_nether_storm_mod switch.data matches 3 at @s run clone from minecraft:overworld 10083 ~ 4000 10111 ~ 4074 to switch:game 10083 ~0 4000 strict replace force

scoreboard players add #rg_nether_storm_mod switch.data 1
execute if score #rg_nether_storm_mod switch.data matches 4 in switch:game run kill @e[type=item,x=10055,y=100,z=4037,distance=..1000]
execute if score #rg_nether_storm_mod switch.data matches 4 run scoreboard players add #rg_nether_storm_y switch.data 1
execute if score #rg_nether_storm_mod switch.data matches 4 run scoreboard players set #rg_nether_storm_mod switch.data 0

kill @s

