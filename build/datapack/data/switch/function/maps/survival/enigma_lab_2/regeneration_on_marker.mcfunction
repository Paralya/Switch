
#> switch:maps/survival/enigma_lab_2/regeneration_on_marker
#
# @within	switch:maps/survival/enigma_lab_2/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_enigma_lab_2_y switch.data

execute if score #rg_enigma_lab_2_mod switch.data matches 0 at @s in switch:game run particle cloud 73012 ~100.5 73041 12 0 20 0 250 force
execute if score #rg_enigma_lab_2_mod switch.data matches 0 at @s run clone from minecraft:overworld 73000 ~ 73000 73025 ~ 73083 to switch:game 73000 ~100 73000 replace force

execute if score #rg_enigma_lab_2_mod switch.data matches 1 at @s in switch:game run particle cloud 73038 ~100.5 73041 13 0 20 0 250 force
execute if score #rg_enigma_lab_2_mod switch.data matches 1 at @s run clone from minecraft:overworld 73025 ~ 73000 73051 ~ 73083 to switch:game 73025 ~100 73000 replace force

execute if score #rg_enigma_lab_2_mod switch.data matches 2 at @s in switch:game run particle cloud 73063 ~100.5 73041 12 0 20 0 250 force
execute if score #rg_enigma_lab_2_mod switch.data matches 2 at @s run clone from minecraft:overworld 73051 ~ 73000 73076 ~ 73083 to switch:game 73051 ~100 73000 replace force

scoreboard players add #rg_enigma_lab_2_mod switch.data 1
execute if score #rg_enigma_lab_2_mod switch.data matches 3 in switch:game run kill @e[type=item,x=73038,y=0,z=73041,distance=..1000]
execute if score #rg_enigma_lab_2_mod switch.data matches 3 run scoreboard players add #rg_enigma_lab_2_y switch.data 1
execute if score #rg_enigma_lab_2_mod switch.data matches 3 run scoreboard players set #rg_enigma_lab_2_mod switch.data 0

kill @s

