
#> switch:maps/survival/orange_rings/regeneration_on_marker
#
# @within	switch:maps/survival/orange_rings/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_orange_rings_y switch.data

execute if score #rg_orange_rings_mod switch.data matches 0 at @s in switch:game run particle cloud 65010 ~100.5 65051 10 0 25 0 250 force
execute if score #rg_orange_rings_mod switch.data matches 0 at @s run clone from minecraft:overworld 65000 ~ 65000 65020 ~ 65103 to switch:game 65000 ~100 65000 replace force

execute if score #rg_orange_rings_mod switch.data matches 1 at @s in switch:game run particle cloud 65030 ~100.5 65051 10 0 25 0 250 force
execute if score #rg_orange_rings_mod switch.data matches 1 at @s run clone from minecraft:overworld 65020 ~ 65000 65040 ~ 65103 to switch:game 65020 ~100 65000 replace force

execute if score #rg_orange_rings_mod switch.data matches 2 at @s in switch:game run particle cloud 65049 ~100.5 65051 9 0 25 0 250 force
execute if score #rg_orange_rings_mod switch.data matches 2 at @s run clone from minecraft:overworld 65040 ~ 65000 65059 ~ 65103 to switch:game 65040 ~100 65000 replace force

execute if score #rg_orange_rings_mod switch.data matches 3 at @s in switch:game run particle cloud 65069 ~100.5 65051 10 0 25 0 250 force
execute if score #rg_orange_rings_mod switch.data matches 3 at @s run clone from minecraft:overworld 65059 ~ 65000 65079 ~ 65103 to switch:game 65059 ~100 65000 replace force

execute if score #rg_orange_rings_mod switch.data matches 4 at @s in switch:game run particle cloud 65089 ~100.5 65051 10 0 25 0 250 force
execute if score #rg_orange_rings_mod switch.data matches 4 at @s run clone from minecraft:overworld 65079 ~ 65000 65099 ~ 65103 to switch:game 65079 ~100 65000 replace force

scoreboard players add #rg_orange_rings_mod switch.data 1
execute if score #rg_orange_rings_mod switch.data matches 5 in switch:game run kill @e[type=item,x=65049,y=0,z=65051,distance=..1000]
execute if score #rg_orange_rings_mod switch.data matches 5 run scoreboard players add #rg_orange_rings_y switch.data 1
execute if score #rg_orange_rings_mod switch.data matches 5 run scoreboard players set #rg_orange_rings_mod switch.data 0

kill @s

