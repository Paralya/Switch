
#> switch:maps/survival/fireblast_3/regeneration_on_marker
#
# @within	switch:maps/survival/fireblast_3/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_fireblast_3_y switch.data

execute if score #rg_fireblast_3_mod switch.data matches 0 at @s in switch:game run particle cloud 165012 ~100.5 165037 12 0 18 0 250 force
execute if score #rg_fireblast_3_mod switch.data matches 0 at @s run clone from minecraft:overworld 165000 ~ 165000 165025 ~ 165075 to switch:game 165000 ~100 165000 replace force

execute if score #rg_fireblast_3_mod switch.data matches 1 at @s in switch:game run particle cloud 165037 ~100.5 165037 12 0 18 0 250 force
execute if score #rg_fireblast_3_mod switch.data matches 1 at @s run clone from minecraft:overworld 165025 ~ 165000 165050 ~ 165075 to switch:game 165025 ~100 165000 replace force

execute if score #rg_fireblast_3_mod switch.data matches 2 at @s in switch:game run particle cloud 165062 ~100.5 165037 12 0 18 0 250 force
execute if score #rg_fireblast_3_mod switch.data matches 2 at @s run clone from minecraft:overworld 165050 ~ 165000 165075 ~ 165075 to switch:game 165050 ~100 165000 replace force

scoreboard players add #rg_fireblast_3_mod switch.data 1
execute if score #rg_fireblast_3_mod switch.data matches 3 in switch:game run kill @e[type=item,x=165037,y=0,z=165037,distance=..1000]
execute if score #rg_fireblast_3_mod switch.data matches 3 run scoreboard players add #rg_fireblast_3_y switch.data 1
execute if score #rg_fireblast_3_mod switch.data matches 3 run scoreboard players set #rg_fireblast_3_mod switch.data 0

kill @s

