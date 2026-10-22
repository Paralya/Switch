
#> switch:maps/survival/zonweeb_main/regeneration_on_marker
#
# @within	switch:maps/survival/zonweeb_main/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_zonweeb_main_y switch.data

execute if score #rg_zonweeb_main_mod switch.data matches 0 at @s in switch:game run particle cloud 6010 ~0.5 50 10 0 25 0 250 force
execute if score #rg_zonweeb_main_mod switch.data matches 0 at @s run clone from minecraft:overworld 6000 ~ 0 6020 ~ 100 to switch:game 6000 ~0 0 strict replace force

execute if score #rg_zonweeb_main_mod switch.data matches 1 at @s in switch:game run particle cloud 6030 ~0.5 50 10 0 25 0 250 force
execute if score #rg_zonweeb_main_mod switch.data matches 1 at @s run clone from minecraft:overworld 6020 ~ 0 6040 ~ 100 to switch:game 6020 ~0 0 strict replace force

execute if score #rg_zonweeb_main_mod switch.data matches 2 at @s in switch:game run particle cloud 6050 ~0.5 50 10 0 25 0 250 force
execute if score #rg_zonweeb_main_mod switch.data matches 2 at @s run clone from minecraft:overworld 6040 ~ 0 6060 ~ 100 to switch:game 6040 ~0 0 strict replace force

execute if score #rg_zonweeb_main_mod switch.data matches 3 at @s in switch:game run particle cloud 6070 ~0.5 50 10 0 25 0 250 force
execute if score #rg_zonweeb_main_mod switch.data matches 3 at @s run clone from minecraft:overworld 6060 ~ 0 6080 ~ 100 to switch:game 6060 ~0 0 strict replace force

execute if score #rg_zonweeb_main_mod switch.data matches 4 at @s in switch:game run particle cloud 6090 ~0.5 50 10 0 25 0 250 force
execute if score #rg_zonweeb_main_mod switch.data matches 4 at @s run clone from minecraft:overworld 6080 ~ 0 6100 ~ 100 to switch:game 6080 ~0 0 strict replace force

scoreboard players add #rg_zonweeb_main_mod switch.data 1
execute if score #rg_zonweeb_main_mod switch.data matches 5 in switch:game run kill @e[type=item,x=6050,y=100,z=50,distance=..1000]
execute if score #rg_zonweeb_main_mod switch.data matches 5 run scoreboard players add #rg_zonweeb_main_y switch.data 1
execute if score #rg_zonweeb_main_mod switch.data matches 5 run scoreboard players set #rg_zonweeb_main_mod switch.data 0

kill @s

