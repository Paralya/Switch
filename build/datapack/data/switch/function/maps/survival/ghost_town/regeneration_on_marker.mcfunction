
#> switch:maps/survival/ghost_town/regeneration_on_marker
#
# @within	switch:maps/survival/ghost_town/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_ghost_town_y switch.data

execute if score #rg_ghost_town_mod switch.data matches 0 at @s in switch:game run particle cloud 42011 ~100.5 42028 11 0 14 0 250 force
execute if score #rg_ghost_town_mod switch.data matches 0 at @s run clone from minecraft:overworld 42000 ~ 42000 42023 ~ 42056 to switch:game 42000 ~100 42000 replace force

execute if score #rg_ghost_town_mod switch.data matches 1 at @s in switch:game run particle cloud 42035 ~100.5 42028 12 0 14 0 250 force
execute if score #rg_ghost_town_mod switch.data matches 1 at @s run clone from minecraft:overworld 42023 ~ 42000 42047 ~ 42056 to switch:game 42023 ~100 42000 replace force

execute if score #rg_ghost_town_mod switch.data matches 2 at @s in switch:game run particle cloud 42058 ~100.5 42028 11 0 14 0 250 force
execute if score #rg_ghost_town_mod switch.data matches 2 at @s run clone from minecraft:overworld 42047 ~ 42000 42070 ~ 42056 to switch:game 42047 ~100 42000 replace force

scoreboard players add #rg_ghost_town_mod switch.data 1
execute if score #rg_ghost_town_mod switch.data matches 3 in switch:game run kill @e[type=item,x=42035,y=0,z=42028,distance=..1000]
execute if score #rg_ghost_town_mod switch.data matches 3 run scoreboard players add #rg_ghost_town_y switch.data 1
execute if score #rg_ghost_town_mod switch.data matches 3 run scoreboard players set #rg_ghost_town_mod switch.data 0

kill @s

