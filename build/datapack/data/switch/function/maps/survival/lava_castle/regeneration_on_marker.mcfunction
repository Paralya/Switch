
#> switch:maps/survival/lava_castle/regeneration_on_marker
#
# @within	switch:maps/survival/lava_castle/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_lava_castle_y switch.data

execute if score #rg_lava_castle_mod switch.data matches 0 at @s in switch:game run particle cloud 83010 ~100.5 83031 10 0 15 0 250 force
execute if score #rg_lava_castle_mod switch.data matches 0 at @s run clone from minecraft:overworld 83000 ~ 83000 83021 ~ 83063 to switch:game 83000 ~100 83000 replace force

execute if score #rg_lava_castle_mod switch.data matches 1 at @s in switch:game run particle cloud 83031 ~100.5 83031 10 0 15 0 250 force
execute if score #rg_lava_castle_mod switch.data matches 1 at @s run clone from minecraft:overworld 83021 ~ 83000 83042 ~ 83063 to switch:game 83021 ~100 83000 replace force

execute if score #rg_lava_castle_mod switch.data matches 2 at @s in switch:game run particle cloud 83052 ~100.5 83031 10 0 15 0 250 force
execute if score #rg_lava_castle_mod switch.data matches 2 at @s run clone from minecraft:overworld 83042 ~ 83000 83063 ~ 83063 to switch:game 83042 ~100 83000 replace force

scoreboard players add #rg_lava_castle_mod switch.data 1
execute if score #rg_lava_castle_mod switch.data matches 3 in switch:game run kill @e[type=item,x=83031,y=0,z=83031,distance=..1000]
execute if score #rg_lava_castle_mod switch.data matches 3 run scoreboard players add #rg_lava_castle_y switch.data 1
execute if score #rg_lava_castle_mod switch.data matches 3 run scoreboard players set #rg_lava_castle_mod switch.data 0

kill @s

