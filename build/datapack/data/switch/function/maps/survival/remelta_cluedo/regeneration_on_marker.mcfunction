
#> switch:maps/survival/remelta_cluedo/regeneration_on_marker
#
# @within	switch:maps/survival/remelta_cluedo/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_remelta_cluedo_y switch.data

execute if score #rg_remelta_cluedo_mod switch.data matches 0 at @s in switch:game run particle cloud 118015 ~0.5 118033 15 0 16 0 250 force
execute if score #rg_remelta_cluedo_mod switch.data matches 0 at @s run clone from minecraft:overworld 118000 ~ 118000 118030 ~ 118066 to switch:game 118000 ~0 118000 replace force

execute if score #rg_remelta_cluedo_mod switch.data matches 1 at @s in switch:game run particle cloud 118044 ~0.5 118033 14 0 16 0 250 force
execute if score #rg_remelta_cluedo_mod switch.data matches 1 at @s run clone from minecraft:overworld 118030 ~ 118000 118059 ~ 118066 to switch:game 118030 ~0 118000 replace force

execute if score #rg_remelta_cluedo_mod switch.data matches 2 at @s in switch:game run particle cloud 118074 ~0.5 118033 15 0 16 0 250 force
execute if score #rg_remelta_cluedo_mod switch.data matches 2 at @s run clone from minecraft:overworld 118059 ~ 118000 118089 ~ 118066 to switch:game 118059 ~0 118000 replace force

scoreboard players add #rg_remelta_cluedo_mod switch.data 1
execute if score #rg_remelta_cluedo_mod switch.data matches 3 in switch:game run kill @e[type=item,x=118044,y=100,z=118033,distance=..1000]
execute if score #rg_remelta_cluedo_mod switch.data matches 3 run scoreboard players add #rg_remelta_cluedo_y switch.data 1
execute if score #rg_remelta_cluedo_mod switch.data matches 3 run scoreboard players set #rg_remelta_cluedo_mod switch.data 0

kill @s

