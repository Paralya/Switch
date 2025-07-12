
#> switch:maps/survival/torg_arena/regeneration_on_marker
#
# @within	switch:maps/survival/torg_arena/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_torg_arena_y switch.data

execute if score #rg_torg_arena_mod switch.data matches 0 at @s in switch:game run particle cloud 65010 ~0.5 65050 10 0 25 0 250 force
execute if score #rg_torg_arena_mod switch.data matches 0 at @s run clone from minecraft:overworld 65000 ~ 65000 65020 ~ 65100 to switch:game 65000 ~0 65000 replace force

execute if score #rg_torg_arena_mod switch.data matches 1 at @s in switch:game run particle cloud 65030 ~0.5 65050 10 0 25 0 250 force
execute if score #rg_torg_arena_mod switch.data matches 1 at @s run clone from minecraft:overworld 65020 ~ 65000 65040 ~ 65100 to switch:game 65020 ~0 65000 replace force

execute if score #rg_torg_arena_mod switch.data matches 2 at @s in switch:game run particle cloud 65050 ~0.5 65050 10 0 25 0 250 force
execute if score #rg_torg_arena_mod switch.data matches 2 at @s run clone from minecraft:overworld 65040 ~ 65000 65060 ~ 65100 to switch:game 65040 ~0 65000 replace force

execute if score #rg_torg_arena_mod switch.data matches 3 at @s in switch:game run particle cloud 65070 ~0.5 65050 10 0 25 0 250 force
execute if score #rg_torg_arena_mod switch.data matches 3 at @s run clone from minecraft:overworld 65060 ~ 65000 65080 ~ 65100 to switch:game 65060 ~0 65000 replace force

execute if score #rg_torg_arena_mod switch.data matches 4 at @s in switch:game run particle cloud 65090 ~0.5 65050 10 0 25 0 250 force
execute if score #rg_torg_arena_mod switch.data matches 4 at @s run clone from minecraft:overworld 65080 ~ 65000 65100 ~ 65100 to switch:game 65080 ~0 65000 replace force

scoreboard players add #rg_torg_arena_mod switch.data 1
execute if score #rg_torg_arena_mod switch.data matches 5 in switch:game run kill @e[type=item,x=65050,y=100,z=65050,distance=..1000]
execute if score #rg_torg_arena_mod switch.data matches 5 run scoreboard players add #rg_torg_arena_y switch.data 1
execute if score #rg_torg_arena_mod switch.data matches 5 run scoreboard players set #rg_torg_arena_mod switch.data 0

kill @s

