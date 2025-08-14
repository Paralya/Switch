
#> switch:maps/survival/void_desert/regeneration_on_marker
#
# @within	switch:maps/survival/void_desert/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_void_desert_y switch.data

execute if score #rg_void_desert_mod switch.data matches 0 at @s in switch:game run particle cloud 68010 ~0.5 68050 10 0 25 0 250 force
execute if score #rg_void_desert_mod switch.data matches 0 at @s run clone from minecraft:overworld 68000 ~ 68000 68020 ~ 68100 to switch:game 68000 ~0 68000 replace force

execute if score #rg_void_desert_mod switch.data matches 1 at @s in switch:game run particle cloud 68030 ~0.5 68050 10 0 25 0 250 force
execute if score #rg_void_desert_mod switch.data matches 1 at @s run clone from minecraft:overworld 68020 ~ 68000 68040 ~ 68100 to switch:game 68020 ~0 68000 replace force

execute if score #rg_void_desert_mod switch.data matches 2 at @s in switch:game run particle cloud 68050 ~0.5 68050 10 0 25 0 250 force
execute if score #rg_void_desert_mod switch.data matches 2 at @s run clone from minecraft:overworld 68040 ~ 68000 68060 ~ 68100 to switch:game 68040 ~0 68000 replace force

execute if score #rg_void_desert_mod switch.data matches 3 at @s in switch:game run particle cloud 68070 ~0.5 68050 10 0 25 0 250 force
execute if score #rg_void_desert_mod switch.data matches 3 at @s run clone from minecraft:overworld 68060 ~ 68000 68080 ~ 68100 to switch:game 68060 ~0 68000 replace force

execute if score #rg_void_desert_mod switch.data matches 4 at @s in switch:game run particle cloud 68090 ~0.5 68050 10 0 25 0 250 force
execute if score #rg_void_desert_mod switch.data matches 4 at @s run clone from minecraft:overworld 68080 ~ 68000 68100 ~ 68100 to switch:game 68080 ~0 68000 replace force

scoreboard players add #rg_void_desert_mod switch.data 1
execute if score #rg_void_desert_mod switch.data matches 5 in switch:game run kill @e[type=item,x=68050,y=100,z=68050,distance=..1000]
execute if score #rg_void_desert_mod switch.data matches 5 run scoreboard players add #rg_void_desert_y switch.data 1
execute if score #rg_void_desert_mod switch.data matches 5 run scoreboard players set #rg_void_desert_mod switch.data 0

kill @s

