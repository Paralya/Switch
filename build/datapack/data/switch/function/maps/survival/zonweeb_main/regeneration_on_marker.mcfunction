
#> switch:maps/survival/zonweeb_main/regeneration_on_marker
#
# @within	switch:maps/survival/zonweeb_main/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_zonweeb_main_y switch.data

execute if score #rg_zonweeb_main_mod switch.data matches 0 at @s in switch:game run particle cloud 32010 ~0.5 32050 10 0 25 0 250 force
execute if score #rg_zonweeb_main_mod switch.data matches 0 at @s run clone from minecraft:overworld 32000 ~ 32000 32020 ~ 32100 to switch:game 32000 ~0 32000 replace force

execute if score #rg_zonweeb_main_mod switch.data matches 1 at @s in switch:game run particle cloud 32030 ~0.5 32050 10 0 25 0 250 force
execute if score #rg_zonweeb_main_mod switch.data matches 1 at @s run clone from minecraft:overworld 32020 ~ 32000 32040 ~ 32100 to switch:game 32020 ~0 32000 replace force

execute if score #rg_zonweeb_main_mod switch.data matches 2 at @s in switch:game run particle cloud 32050 ~0.5 32050 10 0 25 0 250 force
execute if score #rg_zonweeb_main_mod switch.data matches 2 at @s run clone from minecraft:overworld 32040 ~ 32000 32060 ~ 32100 to switch:game 32040 ~0 32000 replace force

execute if score #rg_zonweeb_main_mod switch.data matches 3 at @s in switch:game run particle cloud 32070 ~0.5 32050 10 0 25 0 250 force
execute if score #rg_zonweeb_main_mod switch.data matches 3 at @s run clone from minecraft:overworld 32060 ~ 32000 32080 ~ 32100 to switch:game 32060 ~0 32000 replace force

execute if score #rg_zonweeb_main_mod switch.data matches 4 at @s in switch:game run particle cloud 32090 ~0.5 32050 10 0 25 0 250 force
execute if score #rg_zonweeb_main_mod switch.data matches 4 at @s run clone from minecraft:overworld 32080 ~ 32000 32100 ~ 32100 to switch:game 32080 ~0 32000 replace force

scoreboard players add #rg_zonweeb_main_mod switch.data 1
execute if score #rg_zonweeb_main_mod switch.data matches 5 in switch:game run kill @e[type=item,x=32050,y=100,z=32050,distance=..1000]
execute if score #rg_zonweeb_main_mod switch.data matches 5 run scoreboard players add #rg_zonweeb_main_y switch.data 1
execute if score #rg_zonweeb_main_mod switch.data matches 5 run scoreboard players set #rg_zonweeb_main_mod switch.data 0

kill @s

