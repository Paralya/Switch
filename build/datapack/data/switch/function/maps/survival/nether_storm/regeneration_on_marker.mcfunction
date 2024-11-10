
#> switch:maps/survival/nether_storm/regeneration_on_marker
#
# @within	switch:maps/survival/nether_storm/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_nether_storm_y switch.data

execute if score #rg_nether_storm_mod switch.data matches 0 at @s in switch:game run particle cloud 122014 ~100.5 122037 14 0 18 0 250 force
execute if score #rg_nether_storm_mod switch.data matches 0 at @s run clone from minecraft:overworld 122000 ~ 122000 122028 ~ 122074 to switch:game 122000 ~100 122000 replace force

execute if score #rg_nether_storm_mod switch.data matches 1 at @s in switch:game run particle cloud 122042 ~100.5 122037 14 0 18 0 250 force
execute if score #rg_nether_storm_mod switch.data matches 1 at @s run clone from minecraft:overworld 122028 ~ 122000 122056 ~ 122074 to switch:game 122028 ~100 122000 replace force

execute if score #rg_nether_storm_mod switch.data matches 2 at @s in switch:game run particle cloud 122069 ~100.5 122037 13 0 18 0 250 force
execute if score #rg_nether_storm_mod switch.data matches 2 at @s run clone from minecraft:overworld 122056 ~ 122000 122083 ~ 122074 to switch:game 122056 ~100 122000 replace force

execute if score #rg_nether_storm_mod switch.data matches 3 at @s in switch:game run particle cloud 122097 ~100.5 122037 14 0 18 0 250 force
execute if score #rg_nether_storm_mod switch.data matches 3 at @s run clone from minecraft:overworld 122083 ~ 122000 122111 ~ 122074 to switch:game 122083 ~100 122000 replace force

scoreboard players add #rg_nether_storm_mod switch.data 1
execute if score #rg_nether_storm_mod switch.data matches 4 in switch:game run kill @e[type=item,x=122055,y=0,z=122037,distance=..1000]
execute if score #rg_nether_storm_mod switch.data matches 4 run scoreboard players add #rg_nether_storm_y switch.data 1
execute if score #rg_nether_storm_mod switch.data matches 4 run scoreboard players set #rg_nether_storm_mod switch.data 0

kill @s

