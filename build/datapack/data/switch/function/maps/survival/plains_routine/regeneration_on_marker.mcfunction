
#> switch:maps/survival/plains_routine/regeneration_on_marker
#
# @within	switch:maps/survival/plains_routine/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_plains_routine_y switch.data

execute if score #rg_plains_routine_mod switch.data matches 0 at @s in switch:game run particle cloud 20133 ~0.5 19819 7 0 46 0 250 force
execute if score #rg_plains_routine_mod switch.data matches 0 at @s run clone from minecraft:overworld 20126 ~ 19727 20141 ~ 19911 to switch:game 20126 ~0 19727 replace force

execute if score #rg_plains_routine_mod switch.data matches 1 at @s in switch:game run particle cloud 20149 ~0.5 19819 8 0 46 0 250 force
execute if score #rg_plains_routine_mod switch.data matches 1 at @s run clone from minecraft:overworld 20141 ~ 19727 20157 ~ 19911 to switch:game 20141 ~0 19727 replace force

execute if score #rg_plains_routine_mod switch.data matches 2 at @s in switch:game run particle cloud 20164 ~0.5 19819 7 0 46 0 250 force
execute if score #rg_plains_routine_mod switch.data matches 2 at @s run clone from minecraft:overworld 20157 ~ 19727 20172 ~ 19911 to switch:game 20157 ~0 19727 replace force

execute if score #rg_plains_routine_mod switch.data matches 3 at @s in switch:game run particle cloud 20179 ~0.5 19819 7 0 46 0 250 force
execute if score #rg_plains_routine_mod switch.data matches 3 at @s run clone from minecraft:overworld 20172 ~ 19727 20187 ~ 19911 to switch:game 20172 ~0 19727 replace force

execute if score #rg_plains_routine_mod switch.data matches 4 at @s in switch:game run particle cloud 20194 ~0.5 19819 7 0 46 0 250 force
execute if score #rg_plains_routine_mod switch.data matches 4 at @s run clone from minecraft:overworld 20187 ~ 19727 20202 ~ 19911 to switch:game 20187 ~0 19727 replace force

execute if score #rg_plains_routine_mod switch.data matches 5 at @s in switch:game run particle cloud 20210 ~0.5 19819 8 0 46 0 250 force
execute if score #rg_plains_routine_mod switch.data matches 5 at @s run clone from minecraft:overworld 20202 ~ 19727 20218 ~ 19911 to switch:game 20202 ~0 19727 replace force

execute if score #rg_plains_routine_mod switch.data matches 6 at @s in switch:game run particle cloud 20225 ~0.5 19819 7 0 46 0 250 force
execute if score #rg_plains_routine_mod switch.data matches 6 at @s run clone from minecraft:overworld 20218 ~ 19727 20233 ~ 19911 to switch:game 20218 ~0 19727 replace force

execute if score #rg_plains_routine_mod switch.data matches 7 at @s in switch:game run particle cloud 20240 ~0.5 19819 7 0 46 0 250 force
execute if score #rg_plains_routine_mod switch.data matches 7 at @s run clone from minecraft:overworld 20233 ~ 19727 20248 ~ 19911 to switch:game 20233 ~0 19727 replace force

execute if score #rg_plains_routine_mod switch.data matches 8 at @s in switch:game run particle cloud 20255 ~0.5 19819 7 0 46 0 250 force
execute if score #rg_plains_routine_mod switch.data matches 8 at @s run clone from minecraft:overworld 20248 ~ 19727 20263 ~ 19911 to switch:game 20248 ~0 19727 replace force

execute if score #rg_plains_routine_mod switch.data matches 9 at @s in switch:game run particle cloud 20271 ~0.5 19819 8 0 46 0 250 force
execute if score #rg_plains_routine_mod switch.data matches 9 at @s run clone from minecraft:overworld 20263 ~ 19727 20279 ~ 19911 to switch:game 20263 ~0 19727 replace force

execute if score #rg_plains_routine_mod switch.data matches 10 at @s in switch:game run particle cloud 20286 ~0.5 19819 7 0 46 0 250 force
execute if score #rg_plains_routine_mod switch.data matches 10 at @s run clone from minecraft:overworld 20279 ~ 19727 20294 ~ 19911 to switch:game 20279 ~0 19727 replace force

scoreboard players add #rg_plains_routine_mod switch.data 1
execute if score #rg_plains_routine_mod switch.data matches 11 in switch:game run kill @e[type=item,x=20210,y=85,z=19819,distance=..1000]
execute if score #rg_plains_routine_mod switch.data matches 11 run scoreboard players add #rg_plains_routine_y switch.data 1
execute if score #rg_plains_routine_mod switch.data matches 11 run scoreboard players set #rg_plains_routine_mod switch.data 0

kill @s

