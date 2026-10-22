
#> switch:maps/survival/ghost_town/regeneration_on_marker
#
# @within	switch:maps/survival/ghost_town/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_ghost_town_y switch.data

execute if score #rg_ghost_town_mod switch.data matches 0 at @s in switch:game run particle cloud -5989 ~0.5 6028 11 0 14 0 250 force
execute if score #rg_ghost_town_mod switch.data matches 0 at @s run clone from minecraft:overworld -6000 ~ 6000 -5977 ~ 6056 to switch:game -6000 ~0 6000 strict replace force

execute if score #rg_ghost_town_mod switch.data matches 1 at @s in switch:game run particle cloud -5965 ~0.5 6028 12 0 14 0 250 force
execute if score #rg_ghost_town_mod switch.data matches 1 at @s run clone from minecraft:overworld -5977 ~ 6000 -5953 ~ 6056 to switch:game -5977 ~0 6000 strict replace force

execute if score #rg_ghost_town_mod switch.data matches 2 at @s in switch:game run particle cloud -5942 ~0.5 6028 11 0 14 0 250 force
execute if score #rg_ghost_town_mod switch.data matches 2 at @s run clone from minecraft:overworld -5953 ~ 6000 -5930 ~ 6056 to switch:game -5953 ~0 6000 strict replace force

scoreboard players add #rg_ghost_town_mod switch.data 1
execute if score #rg_ghost_town_mod switch.data matches 3 in switch:game run kill @e[type=item,x=-5965,y=100,z=6028,distance=..1000]
execute if score #rg_ghost_town_mod switch.data matches 3 run scoreboard players add #rg_ghost_town_y switch.data 1
execute if score #rg_ghost_town_mod switch.data matches 3 run scoreboard players set #rg_ghost_town_mod switch.data 0

kill @s

