
#> switch:maps/survival/cluedo_casino/regeneration_on_marker
#
# @within	switch:maps/survival/cluedo_casino/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_cluedo_casino_y switch.data

execute if score #rg_cluedo_casino_mod switch.data matches 0 at @s in switch:game run particle cloud 159012 ~100.5 159034 12 0 17 0 250 force
execute if score #rg_cluedo_casino_mod switch.data matches 0 at @s run clone from minecraft:overworld 159000 ~ 159000 159025 ~ 159069 to switch:game 159000 ~100 159000 replace force

execute if score #rg_cluedo_casino_mod switch.data matches 1 at @s in switch:game run particle cloud 159037 ~100.5 159034 12 0 17 0 250 force
execute if score #rg_cluedo_casino_mod switch.data matches 1 at @s run clone from minecraft:overworld 159025 ~ 159000 159050 ~ 159069 to switch:game 159025 ~100 159000 replace force

execute if score #rg_cluedo_casino_mod switch.data matches 2 at @s in switch:game run particle cloud 159062 ~100.5 159034 12 0 17 0 250 force
execute if score #rg_cluedo_casino_mod switch.data matches 2 at @s run clone from minecraft:overworld 159050 ~ 159000 159075 ~ 159069 to switch:game 159050 ~100 159000 replace force

scoreboard players add #rg_cluedo_casino_mod switch.data 1
execute if score #rg_cluedo_casino_mod switch.data matches 3 in switch:game run kill @e[type=item,x=159037,y=0,z=159034,distance=..1000]
execute if score #rg_cluedo_casino_mod switch.data matches 3 run scoreboard players add #rg_cluedo_casino_y switch.data 1
execute if score #rg_cluedo_casino_mod switch.data matches 3 run scoreboard players set #rg_cluedo_casino_mod switch.data 0

kill @s

