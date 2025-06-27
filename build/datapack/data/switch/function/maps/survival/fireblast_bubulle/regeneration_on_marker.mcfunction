
#> switch:maps/survival/fireblast_bubulle/regeneration_on_marker
#
# @within	switch:maps/survival/fireblast_bubulle/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_fireblast_bubulle_y switch.data

execute if score #rg_fireblast_bubulle_mod switch.data matches 0 at @s in switch:game run particle cloud 163012 ~0.5 163037 12 0 18 0 250 force
execute if score #rg_fireblast_bubulle_mod switch.data matches 0 at @s run clone from minecraft:overworld 163000 ~ 163000 163025 ~ 163075 to switch:game 163000 ~0 163000 replace force

execute if score #rg_fireblast_bubulle_mod switch.data matches 1 at @s in switch:game run particle cloud 163037 ~0.5 163037 12 0 18 0 250 force
execute if score #rg_fireblast_bubulle_mod switch.data matches 1 at @s run clone from minecraft:overworld 163025 ~ 163000 163050 ~ 163075 to switch:game 163025 ~0 163000 replace force

execute if score #rg_fireblast_bubulle_mod switch.data matches 2 at @s in switch:game run particle cloud 163062 ~0.5 163037 12 0 18 0 250 force
execute if score #rg_fireblast_bubulle_mod switch.data matches 2 at @s run clone from minecraft:overworld 163050 ~ 163000 163075 ~ 163075 to switch:game 163050 ~0 163000 replace force

scoreboard players add #rg_fireblast_bubulle_mod switch.data 1
execute if score #rg_fireblast_bubulle_mod switch.data matches 3 in switch:game run kill @e[type=item,x=163037,y=100,z=163037,distance=..1000]
execute if score #rg_fireblast_bubulle_mod switch.data matches 3 run scoreboard players add #rg_fireblast_bubulle_y switch.data 1
execute if score #rg_fireblast_bubulle_mod switch.data matches 3 run scoreboard players set #rg_fireblast_bubulle_mod switch.data 0

kill @s

