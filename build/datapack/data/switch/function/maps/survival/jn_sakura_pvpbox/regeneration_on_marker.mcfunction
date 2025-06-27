
#> switch:maps/survival/jn_sakura_pvpbox/regeneration_on_marker
#
# @within	switch:maps/survival/jn_sakura_pvpbox/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_jn_sakura_pvpbox_y switch.data

execute if score #rg_jn_sakura_pvpbox_mod switch.data matches 0 at @s in switch:game run particle cloud 135010 ~0.5 135050 10 0 25 0 250 force
execute if score #rg_jn_sakura_pvpbox_mod switch.data matches 0 at @s run clone from minecraft:overworld 135000 ~ 135000 135020 ~ 135100 to switch:game 135000 ~0 135000 replace force

execute if score #rg_jn_sakura_pvpbox_mod switch.data matches 1 at @s in switch:game run particle cloud 135030 ~0.5 135050 10 0 25 0 250 force
execute if score #rg_jn_sakura_pvpbox_mod switch.data matches 1 at @s run clone from minecraft:overworld 135020 ~ 135000 135040 ~ 135100 to switch:game 135020 ~0 135000 replace force

execute if score #rg_jn_sakura_pvpbox_mod switch.data matches 2 at @s in switch:game run particle cloud 135050 ~0.5 135050 10 0 25 0 250 force
execute if score #rg_jn_sakura_pvpbox_mod switch.data matches 2 at @s run clone from minecraft:overworld 135040 ~ 135000 135060 ~ 135100 to switch:game 135040 ~0 135000 replace force

execute if score #rg_jn_sakura_pvpbox_mod switch.data matches 3 at @s in switch:game run particle cloud 135070 ~0.5 135050 10 0 25 0 250 force
execute if score #rg_jn_sakura_pvpbox_mod switch.data matches 3 at @s run clone from minecraft:overworld 135060 ~ 135000 135080 ~ 135100 to switch:game 135060 ~0 135000 replace force

execute if score #rg_jn_sakura_pvpbox_mod switch.data matches 4 at @s in switch:game run particle cloud 135090 ~0.5 135050 10 0 25 0 250 force
execute if score #rg_jn_sakura_pvpbox_mod switch.data matches 4 at @s run clone from minecraft:overworld 135080 ~ 135000 135100 ~ 135100 to switch:game 135080 ~0 135000 replace force

scoreboard players add #rg_jn_sakura_pvpbox_mod switch.data 1
execute if score #rg_jn_sakura_pvpbox_mod switch.data matches 5 in switch:game run kill @e[type=item,x=135050,y=100,z=135050,distance=..1000]
execute if score #rg_jn_sakura_pvpbox_mod switch.data matches 5 run scoreboard players add #rg_jn_sakura_pvpbox_y switch.data 1
execute if score #rg_jn_sakura_pvpbox_mod switch.data matches 5 run scoreboard players set #rg_jn_sakura_pvpbox_mod switch.data 0

kill @s

