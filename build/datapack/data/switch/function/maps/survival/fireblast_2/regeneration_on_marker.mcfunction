
#> switch:maps/survival/fireblast_2/regeneration_on_marker
#
# @within	switch:maps/survival/fireblast_2/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_fireblast_2_y switch.data

execute if score #rg_fireblast_2_mod switch.data matches 0 at @s in switch:game run particle cloud 164012 ~0.5 164037 12 0 18 0 250 force
execute if score #rg_fireblast_2_mod switch.data matches 0 at @s run clone from minecraft:overworld 164000 ~ 164000 164025 ~ 164075 to switch:game 164000 ~0 164000 replace force

execute if score #rg_fireblast_2_mod switch.data matches 1 at @s in switch:game run particle cloud 164037 ~0.5 164037 12 0 18 0 250 force
execute if score #rg_fireblast_2_mod switch.data matches 1 at @s run clone from minecraft:overworld 164025 ~ 164000 164050 ~ 164075 to switch:game 164025 ~0 164000 replace force

execute if score #rg_fireblast_2_mod switch.data matches 2 at @s in switch:game run particle cloud 164062 ~0.5 164037 12 0 18 0 250 force
execute if score #rg_fireblast_2_mod switch.data matches 2 at @s run clone from minecraft:overworld 164050 ~ 164000 164075 ~ 164075 to switch:game 164050 ~0 164000 replace force

scoreboard players add #rg_fireblast_2_mod switch.data 1
execute if score #rg_fireblast_2_mod switch.data matches 3 in switch:game run kill @e[type=item,x=164037,y=100,z=164037,distance=..1000]
execute if score #rg_fireblast_2_mod switch.data matches 3 run scoreboard players add #rg_fireblast_2_y switch.data 1
execute if score #rg_fireblast_2_mod switch.data matches 3 run scoreboard players set #rg_fireblast_2_mod switch.data 0

kill @s

