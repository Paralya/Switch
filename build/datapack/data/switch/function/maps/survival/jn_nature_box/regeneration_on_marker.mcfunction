
#> switch:maps/survival/jn_nature_box/regeneration_on_marker
#
# @within	switch:maps/survival/jn_nature_box/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_jn_nature_box_y switch.data

execute if score #rg_jn_nature_box_mod switch.data matches 0 at @s in switch:game run particle cloud 9 ~0.5 10067 9 0 33 0 250 force
execute if score #rg_jn_nature_box_mod switch.data matches 0 at @s run clone from minecraft:overworld 0 ~ 10000 19 ~ 10134 to switch:game 0 ~0 10000 strict replace force

execute if score #rg_jn_nature_box_mod switch.data matches 1 at @s in switch:game run particle cloud 28 ~0.5 10067 9 0 33 0 250 force
execute if score #rg_jn_nature_box_mod switch.data matches 1 at @s run clone from minecraft:overworld 19 ~ 10000 38 ~ 10134 to switch:game 19 ~0 10000 strict replace force

execute if score #rg_jn_nature_box_mod switch.data matches 2 at @s in switch:game run particle cloud 48 ~0.5 10067 10 0 33 0 250 force
execute if score #rg_jn_nature_box_mod switch.data matches 2 at @s run clone from minecraft:overworld 38 ~ 10000 58 ~ 10134 to switch:game 38 ~0 10000 strict replace force

execute if score #rg_jn_nature_box_mod switch.data matches 3 at @s in switch:game run particle cloud 67 ~0.5 10067 9 0 33 0 250 force
execute if score #rg_jn_nature_box_mod switch.data matches 3 at @s run clone from minecraft:overworld 58 ~ 10000 77 ~ 10134 to switch:game 58 ~0 10000 strict replace force

execute if score #rg_jn_nature_box_mod switch.data matches 4 at @s in switch:game run particle cloud 86 ~0.5 10067 9 0 33 0 250 force
execute if score #rg_jn_nature_box_mod switch.data matches 4 at @s run clone from minecraft:overworld 77 ~ 10000 96 ~ 10134 to switch:game 77 ~0 10000 strict replace force

execute if score #rg_jn_nature_box_mod switch.data matches 5 at @s in switch:game run particle cloud 105 ~0.5 10067 9 0 33 0 250 force
execute if score #rg_jn_nature_box_mod switch.data matches 5 at @s run clone from minecraft:overworld 96 ~ 10000 115 ~ 10134 to switch:game 96 ~0 10000 strict replace force

execute if score #rg_jn_nature_box_mod switch.data matches 6 at @s in switch:game run particle cloud 124 ~0.5 10067 9 0 33 0 250 force
execute if score #rg_jn_nature_box_mod switch.data matches 6 at @s run clone from minecraft:overworld 115 ~ 10000 134 ~ 10134 to switch:game 115 ~0 10000 strict replace force

execute if score #rg_jn_nature_box_mod switch.data matches 7 at @s in switch:game run particle cloud 144 ~0.5 10067 10 0 33 0 250 force
execute if score #rg_jn_nature_box_mod switch.data matches 7 at @s run clone from minecraft:overworld 134 ~ 10000 154 ~ 10134 to switch:game 134 ~0 10000 strict replace force

execute if score #rg_jn_nature_box_mod switch.data matches 8 at @s in switch:game run particle cloud 163 ~0.5 10067 9 0 33 0 250 force
execute if score #rg_jn_nature_box_mod switch.data matches 8 at @s run clone from minecraft:overworld 154 ~ 10000 173 ~ 10134 to switch:game 154 ~0 10000 strict replace force

execute if score #rg_jn_nature_box_mod switch.data matches 9 at @s in switch:game run particle cloud 182 ~0.5 10067 9 0 33 0 250 force
execute if score #rg_jn_nature_box_mod switch.data matches 9 at @s run clone from minecraft:overworld 173 ~ 10000 192 ~ 10134 to switch:game 173 ~0 10000 strict replace force

scoreboard players add #rg_jn_nature_box_mod switch.data 1
execute if score #rg_jn_nature_box_mod switch.data matches 10 in switch:game run kill @e[type=item,x=96,y=100,z=10067,distance=..1000]
execute if score #rg_jn_nature_box_mod switch.data matches 10 run scoreboard players add #rg_jn_nature_box_y switch.data 1
execute if score #rg_jn_nature_box_mod switch.data matches 10 run scoreboard players set #rg_jn_nature_box_mod switch.data 0

kill @s

