
#> switch:maps/survival/zonweeb_main/regeneration_on_marker
#
# @within	switch:maps/survival/zonweeb_main/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_zonweeb_main_y switch.data

execute if score #rg_zonweeb_main_mod switch.data matches 0 at @s in switch:game run particle cloud 31960 ~100.5 32000 10 0 25 0 250 force
execute if score #rg_zonweeb_main_mod switch.data matches 0 at @s run clone from minecraft:overworld 31950 ~ 31950 31970 ~ 32050 to switch:game 31950 ~100 31950 replace force

execute if score #rg_zonweeb_main_mod switch.data matches 1 at @s in switch:game run particle cloud 31980 ~100.5 32000 10 0 25 0 250 force
execute if score #rg_zonweeb_main_mod switch.data matches 1 at @s run clone from minecraft:overworld 31970 ~ 31950 31990 ~ 32050 to switch:game 31970 ~100 31950 replace force

execute if score #rg_zonweeb_main_mod switch.data matches 2 at @s in switch:game run particle cloud 32000 ~100.5 32000 10 0 25 0 250 force
execute if score #rg_zonweeb_main_mod switch.data matches 2 at @s run clone from minecraft:overworld 31990 ~ 31950 32010 ~ 32050 to switch:game 31990 ~100 31950 replace force

execute if score #rg_zonweeb_main_mod switch.data matches 3 at @s in switch:game run particle cloud 32020 ~100.5 32000 10 0 25 0 250 force
execute if score #rg_zonweeb_main_mod switch.data matches 3 at @s run clone from minecraft:overworld 32010 ~ 31950 32030 ~ 32050 to switch:game 32010 ~100 31950 replace force

execute if score #rg_zonweeb_main_mod switch.data matches 4 at @s in switch:game run particle cloud 32040 ~100.5 32000 10 0 25 0 250 force
execute if score #rg_zonweeb_main_mod switch.data matches 4 at @s run clone from minecraft:overworld 32030 ~ 31950 32050 ~ 32050 to switch:game 32030 ~100 31950 replace force

scoreboard players add #rg_zonweeb_main_mod switch.data 1
execute if score #rg_zonweeb_main_mod switch.data matches 5 in switch:game run kill @e[type=item,x=32000,y=0,z=32000,distance=..1000]
execute if score #rg_zonweeb_main_mod switch.data matches 5 run scoreboard players add #rg_zonweeb_main_y switch.data 1
execute if score #rg_zonweeb_main_mod switch.data matches 5 run scoreboard players set #rg_zonweeb_main_mod switch.data 0

kill @s

