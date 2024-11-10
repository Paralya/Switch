
#> switch:maps/survival/hider_mansion/regeneration_on_marker
#
# @within	switch:maps/survival/hider_mansion/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_hider_mansion_y switch.data

execute if score #rg_hider_mansion_mod switch.data matches 0 at @s in switch:game run particle cloud 71008 ~100.5 71080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 0 at @s run clone from minecraft:overworld 71000 ~ 71000 71017 ~ 71160 to switch:game 71000 ~100 71000 replace force

execute if score #rg_hider_mansion_mod switch.data matches 1 at @s in switch:game run particle cloud 71025 ~100.5 71080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 1 at @s run clone from minecraft:overworld 71017 ~ 71000 71034 ~ 71160 to switch:game 71017 ~100 71000 replace force

execute if score #rg_hider_mansion_mod switch.data matches 2 at @s in switch:game run particle cloud 71042 ~100.5 71080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 2 at @s run clone from minecraft:overworld 71034 ~ 71000 71051 ~ 71160 to switch:game 71034 ~100 71000 replace force

execute if score #rg_hider_mansion_mod switch.data matches 3 at @s in switch:game run particle cloud 71059 ~100.5 71080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 3 at @s run clone from minecraft:overworld 71051 ~ 71000 71068 ~ 71160 to switch:game 71051 ~100 71000 replace force

execute if score #rg_hider_mansion_mod switch.data matches 4 at @s in switch:game run particle cloud 71076 ~100.5 71080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 4 at @s run clone from minecraft:overworld 71068 ~ 71000 71085 ~ 71160 to switch:game 71068 ~100 71000 replace force

execute if score #rg_hider_mansion_mod switch.data matches 5 at @s in switch:game run particle cloud 71093 ~100.5 71080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 5 at @s run clone from minecraft:overworld 71085 ~ 71000 71102 ~ 71160 to switch:game 71085 ~100 71000 replace force

execute if score #rg_hider_mansion_mod switch.data matches 6 at @s in switch:game run particle cloud 71110 ~100.5 71080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 6 at @s run clone from minecraft:overworld 71102 ~ 71000 71119 ~ 71160 to switch:game 71102 ~100 71000 replace force

execute if score #rg_hider_mansion_mod switch.data matches 7 at @s in switch:game run particle cloud 71127 ~100.5 71080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 7 at @s run clone from minecraft:overworld 71119 ~ 71000 71136 ~ 71160 to switch:game 71119 ~100 71000 replace force

execute if score #rg_hider_mansion_mod switch.data matches 8 at @s in switch:game run particle cloud 71144 ~100.5 71080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 8 at @s run clone from minecraft:overworld 71136 ~ 71000 71153 ~ 71160 to switch:game 71136 ~100 71000 replace force

execute if score #rg_hider_mansion_mod switch.data matches 9 at @s in switch:game run particle cloud 71161 ~100.5 71080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 9 at @s run clone from minecraft:overworld 71153 ~ 71000 71170 ~ 71160 to switch:game 71153 ~100 71000 replace force

scoreboard players add #rg_hider_mansion_mod switch.data 1
execute if score #rg_hider_mansion_mod switch.data matches 10 in switch:game run kill @e[type=item,x=71085,y=0,z=71080,distance=..1000]
execute if score #rg_hider_mansion_mod switch.data matches 10 run scoreboard players add #rg_hider_mansion_y switch.data 1
execute if score #rg_hider_mansion_mod switch.data matches 10 run scoreboard players set #rg_hider_mansion_mod switch.data 0

kill @s

