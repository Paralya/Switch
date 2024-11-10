
#> switch:maps/survival/enigma_lab_1/regeneration_on_marker
#
# @within	switch:maps/survival/enigma_lab_1/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_enigma_lab_1_y switch.data

execute if score #rg_enigma_lab_1_mod switch.data matches 0 at @s in switch:game run particle cloud 53982 ~100.5 54047 5 0 26 0 250 force
execute if score #rg_enigma_lab_1_mod switch.data matches 0 at @s run clone from minecraft:overworld 53977 ~ 53994 53987 ~ 54100 to switch:game 53977 ~100 53994 replace force

execute if score #rg_enigma_lab_1_mod switch.data matches 1 at @s in switch:game run particle cloud 53992 ~100.5 54047 5 0 26 0 250 force
execute if score #rg_enigma_lab_1_mod switch.data matches 1 at @s run clone from minecraft:overworld 53987 ~ 53994 53998 ~ 54100 to switch:game 53987 ~100 53994 replace force

execute if score #rg_enigma_lab_1_mod switch.data matches 2 at @s in switch:game run particle cloud 54003 ~100.5 54047 5 0 26 0 250 force
execute if score #rg_enigma_lab_1_mod switch.data matches 2 at @s run clone from minecraft:overworld 53998 ~ 53994 54008 ~ 54100 to switch:game 53998 ~100 53994 replace force

scoreboard players add #rg_enigma_lab_1_mod switch.data 1
execute if score #rg_enigma_lab_1_mod switch.data matches 3 in switch:game run kill @e[type=item,x=53992,y=0,z=54047,distance=..1000]
execute if score #rg_enigma_lab_1_mod switch.data matches 3 run scoreboard players add #rg_enigma_lab_1_y switch.data 1
execute if score #rg_enigma_lab_1_mod switch.data matches 3 run scoreboard players set #rg_enigma_lab_1_mod switch.data 0

kill @s

