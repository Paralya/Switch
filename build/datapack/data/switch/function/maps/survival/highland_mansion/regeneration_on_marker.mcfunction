
#> switch:maps/survival/highland_mansion/regeneration_on_marker
#
# @within	switch:maps/survival/highland_mansion/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_highland_mansion_y switch.data

execute if score #rg_highland_mansion_mod switch.data matches 0 at @s in switch:game run particle cloud 85009 ~100.5 85071 9 0 35 0 250 force
execute if score #rg_highland_mansion_mod switch.data matches 0 at @s run clone from minecraft:overworld 85000 ~ 85000 85019 ~ 85142 to switch:game 85000 ~100 85000 replace force

execute if score #rg_highland_mansion_mod switch.data matches 1 at @s in switch:game run particle cloud 85028 ~100.5 85071 9 0 35 0 250 force
execute if score #rg_highland_mansion_mod switch.data matches 1 at @s run clone from minecraft:overworld 85019 ~ 85000 85038 ~ 85142 to switch:game 85019 ~100 85000 replace force

execute if score #rg_highland_mansion_mod switch.data matches 2 at @s in switch:game run particle cloud 85047 ~100.5 85071 9 0 35 0 250 force
execute if score #rg_highland_mansion_mod switch.data matches 2 at @s run clone from minecraft:overworld 85038 ~ 85000 85056 ~ 85142 to switch:game 85038 ~100 85000 replace force

execute if score #rg_highland_mansion_mod switch.data matches 3 at @s in switch:game run particle cloud 85065 ~100.5 85071 9 0 35 0 250 force
execute if score #rg_highland_mansion_mod switch.data matches 3 at @s run clone from minecraft:overworld 85056 ~ 85000 85075 ~ 85142 to switch:game 85056 ~100 85000 replace force

execute if score #rg_highland_mansion_mod switch.data matches 4 at @s in switch:game run particle cloud 85084 ~100.5 85071 9 0 35 0 250 force
execute if score #rg_highland_mansion_mod switch.data matches 4 at @s run clone from minecraft:overworld 85075 ~ 85000 85094 ~ 85142 to switch:game 85075 ~100 85000 replace force

execute if score #rg_highland_mansion_mod switch.data matches 5 at @s in switch:game run particle cloud 85103 ~100.5 85071 9 0 35 0 250 force
execute if score #rg_highland_mansion_mod switch.data matches 5 at @s run clone from minecraft:overworld 85094 ~ 85000 85112 ~ 85142 to switch:game 85094 ~100 85000 replace force

execute if score #rg_highland_mansion_mod switch.data matches 6 at @s in switch:game run particle cloud 85121 ~100.5 85071 9 0 35 0 250 force
execute if score #rg_highland_mansion_mod switch.data matches 6 at @s run clone from minecraft:overworld 85112 ~ 85000 85131 ~ 85142 to switch:game 85112 ~100 85000 replace force

execute if score #rg_highland_mansion_mod switch.data matches 7 at @s in switch:game run particle cloud 85140 ~100.5 85071 9 0 35 0 250 force
execute if score #rg_highland_mansion_mod switch.data matches 7 at @s run clone from minecraft:overworld 85131 ~ 85000 85150 ~ 85142 to switch:game 85131 ~100 85000 replace force

scoreboard players add #rg_highland_mansion_mod switch.data 1
execute if score #rg_highland_mansion_mod switch.data matches 8 in switch:game run kill @e[type=item,x=85075,y=0,z=85071,distance=..1000]
execute if score #rg_highland_mansion_mod switch.data matches 8 run scoreboard players add #rg_highland_mansion_y switch.data 1
execute if score #rg_highland_mansion_mod switch.data matches 8 run scoreboard players set #rg_highland_mansion_mod switch.data 0

kill @s

