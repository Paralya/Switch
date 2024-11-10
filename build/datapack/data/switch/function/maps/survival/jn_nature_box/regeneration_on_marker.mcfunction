
#> switch:maps/survival/jn_nature_box/regeneration_on_marker
#
# @within	switch:maps/survival/jn_nature_box/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_jn_nature_box_y switch.data

execute if score #rg_jn_nature_box_mod switch.data matches 0 at @s in switch:game run particle cloud 130009 ~100.5 130067 9 0 33 0 250 force
execute if score #rg_jn_nature_box_mod switch.data matches 0 at @s run clone from minecraft:overworld 130000 ~ 130000 130019 ~ 130134 to switch:game 130000 ~100 130000 replace force

execute if score #rg_jn_nature_box_mod switch.data matches 1 at @s in switch:game run particle cloud 130028 ~100.5 130067 9 0 33 0 250 force
execute if score #rg_jn_nature_box_mod switch.data matches 1 at @s run clone from minecraft:overworld 130019 ~ 130000 130038 ~ 130134 to switch:game 130019 ~100 130000 replace force

execute if score #rg_jn_nature_box_mod switch.data matches 2 at @s in switch:game run particle cloud 130048 ~100.5 130067 10 0 33 0 250 force
execute if score #rg_jn_nature_box_mod switch.data matches 2 at @s run clone from minecraft:overworld 130038 ~ 130000 130058 ~ 130134 to switch:game 130038 ~100 130000 replace force

execute if score #rg_jn_nature_box_mod switch.data matches 3 at @s in switch:game run particle cloud 130067 ~100.5 130067 9 0 33 0 250 force
execute if score #rg_jn_nature_box_mod switch.data matches 3 at @s run clone from minecraft:overworld 130058 ~ 130000 130077 ~ 130134 to switch:game 130058 ~100 130000 replace force

execute if score #rg_jn_nature_box_mod switch.data matches 4 at @s in switch:game run particle cloud 130086 ~100.5 130067 9 0 33 0 250 force
execute if score #rg_jn_nature_box_mod switch.data matches 4 at @s run clone from minecraft:overworld 130077 ~ 130000 130096 ~ 130134 to switch:game 130077 ~100 130000 replace force

execute if score #rg_jn_nature_box_mod switch.data matches 5 at @s in switch:game run particle cloud 130105 ~100.5 130067 9 0 33 0 250 force
execute if score #rg_jn_nature_box_mod switch.data matches 5 at @s run clone from minecraft:overworld 130096 ~ 130000 130115 ~ 130134 to switch:game 130096 ~100 130000 replace force

execute if score #rg_jn_nature_box_mod switch.data matches 6 at @s in switch:game run particle cloud 130124 ~100.5 130067 9 0 33 0 250 force
execute if score #rg_jn_nature_box_mod switch.data matches 6 at @s run clone from minecraft:overworld 130115 ~ 130000 130134 ~ 130134 to switch:game 130115 ~100 130000 replace force

execute if score #rg_jn_nature_box_mod switch.data matches 7 at @s in switch:game run particle cloud 130144 ~100.5 130067 10 0 33 0 250 force
execute if score #rg_jn_nature_box_mod switch.data matches 7 at @s run clone from minecraft:overworld 130134 ~ 130000 130154 ~ 130134 to switch:game 130134 ~100 130000 replace force

execute if score #rg_jn_nature_box_mod switch.data matches 8 at @s in switch:game run particle cloud 130163 ~100.5 130067 9 0 33 0 250 force
execute if score #rg_jn_nature_box_mod switch.data matches 8 at @s run clone from minecraft:overworld 130154 ~ 130000 130173 ~ 130134 to switch:game 130154 ~100 130000 replace force

execute if score #rg_jn_nature_box_mod switch.data matches 9 at @s in switch:game run particle cloud 130182 ~100.5 130067 9 0 33 0 250 force
execute if score #rg_jn_nature_box_mod switch.data matches 9 at @s run clone from minecraft:overworld 130173 ~ 130000 130192 ~ 130134 to switch:game 130173 ~100 130000 replace force

scoreboard players add #rg_jn_nature_box_mod switch.data 1
execute if score #rg_jn_nature_box_mod switch.data matches 10 in switch:game run kill @e[type=item,x=130096,y=0,z=130067,distance=..1000]
execute if score #rg_jn_nature_box_mod switch.data matches 10 run scoreboard players add #rg_jn_nature_box_y switch.data 1
execute if score #rg_jn_nature_box_mod switch.data matches 10 run scoreboard players set #rg_jn_nature_box_mod switch.data 0

kill @s

