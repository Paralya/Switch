
#> switch:maps/survival/ctf_flowers/regeneration_on_marker
#
# @within	switch:maps/survival/ctf_flowers/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_ctf_flowers_y switch.data

execute if score #rg_ctf_flowers_mod switch.data matches 0 at @s in switch:game run particle cloud 148012 ~100.5 148052 12 0 26 0 250 force
execute if score #rg_ctf_flowers_mod switch.data matches 0 at @s run clone from minecraft:overworld 148000 ~ 148000 148025 ~ 148105 to switch:game 148000 ~100 148000 replace force

execute if score #rg_ctf_flowers_mod switch.data matches 1 at @s in switch:game run particle cloud 148037 ~100.5 148052 12 0 26 0 250 force
execute if score #rg_ctf_flowers_mod switch.data matches 1 at @s run clone from minecraft:overworld 148025 ~ 148000 148050 ~ 148105 to switch:game 148025 ~100 148000 replace force

execute if score #rg_ctf_flowers_mod switch.data matches 2 at @s in switch:game run particle cloud 148063 ~100.5 148052 13 0 26 0 250 force
execute if score #rg_ctf_flowers_mod switch.data matches 2 at @s run clone from minecraft:overworld 148050 ~ 148000 148076 ~ 148105 to switch:game 148050 ~100 148000 replace force

execute if score #rg_ctf_flowers_mod switch.data matches 3 at @s in switch:game run particle cloud 148088 ~100.5 148052 12 0 26 0 250 force
execute if score #rg_ctf_flowers_mod switch.data matches 3 at @s run clone from minecraft:overworld 148076 ~ 148000 148101 ~ 148105 to switch:game 148076 ~100 148000 replace force

execute if score #rg_ctf_flowers_mod switch.data matches 4 at @s in switch:game run particle cloud 148113 ~100.5 148052 12 0 26 0 250 force
execute if score #rg_ctf_flowers_mod switch.data matches 4 at @s run clone from minecraft:overworld 148101 ~ 148000 148126 ~ 148105 to switch:game 148101 ~100 148000 replace force

execute if score #rg_ctf_flowers_mod switch.data matches 5 at @s in switch:game run particle cloud 148139 ~100.5 148052 13 0 26 0 250 force
execute if score #rg_ctf_flowers_mod switch.data matches 5 at @s run clone from minecraft:overworld 148126 ~ 148000 148152 ~ 148105 to switch:game 148126 ~100 148000 replace force

execute if score #rg_ctf_flowers_mod switch.data matches 6 at @s in switch:game run particle cloud 148164 ~100.5 148052 12 0 26 0 250 force
execute if score #rg_ctf_flowers_mod switch.data matches 6 at @s run clone from minecraft:overworld 148152 ~ 148000 148177 ~ 148105 to switch:game 148152 ~100 148000 replace force

execute if score #rg_ctf_flowers_mod switch.data matches 7 at @s in switch:game run particle cloud 148189 ~100.5 148052 12 0 26 0 250 force
execute if score #rg_ctf_flowers_mod switch.data matches 7 at @s run clone from minecraft:overworld 148177 ~ 148000 148202 ~ 148105 to switch:game 148177 ~100 148000 replace force

scoreboard players add #rg_ctf_flowers_mod switch.data 1
execute if score #rg_ctf_flowers_mod switch.data matches 8 in switch:game run kill @e[type=item,x=148101,y=0,z=148052,distance=..1000]
execute if score #rg_ctf_flowers_mod switch.data matches 8 run scoreboard players add #rg_ctf_flowers_y switch.data 1
execute if score #rg_ctf_flowers_mod switch.data matches 8 run scoreboard players set #rg_ctf_flowers_mod switch.data 0

kill @s

