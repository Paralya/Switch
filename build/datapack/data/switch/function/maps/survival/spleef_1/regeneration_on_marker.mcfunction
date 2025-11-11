
#> switch:maps/survival/spleef_1/regeneration_on_marker
#
# @within	switch:maps/survival/spleef_1/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_spleef_1_y switch.data

execute if score #rg_spleef_1_mod switch.data matches 0 at @s in switch:game run particle cloud 27970 ~24.5 28000 10 0 20 0 250 force
execute if score #rg_spleef_1_mod switch.data matches 0 at @s run clone from minecraft:overworld 27960 ~ 27960 27980 ~ 28040 to switch:game 27960 ~24 27960 strict replace force

execute if score #rg_spleef_1_mod switch.data matches 1 at @s in switch:game run particle cloud 27990 ~24.5 28000 10 0 20 0 250 force
execute if score #rg_spleef_1_mod switch.data matches 1 at @s run clone from minecraft:overworld 27980 ~ 27960 28000 ~ 28040 to switch:game 27980 ~24 27960 strict replace force

execute if score #rg_spleef_1_mod switch.data matches 2 at @s in switch:game run particle cloud 28010 ~24.5 28000 10 0 20 0 250 force
execute if score #rg_spleef_1_mod switch.data matches 2 at @s run clone from minecraft:overworld 28000 ~ 27960 28020 ~ 28040 to switch:game 28000 ~24 27960 strict replace force

execute if score #rg_spleef_1_mod switch.data matches 3 at @s in switch:game run particle cloud 28030 ~24.5 28000 10 0 20 0 250 force
execute if score #rg_spleef_1_mod switch.data matches 3 at @s run clone from minecraft:overworld 28020 ~ 27960 28040 ~ 28040 to switch:game 28020 ~24 27960 strict replace force

scoreboard players add #rg_spleef_1_mod switch.data 1
execute if score #rg_spleef_1_mod switch.data matches 4 in switch:game run kill @e[type=item,x=28000,y=61,z=28000,distance=..1000]
execute if score #rg_spleef_1_mod switch.data matches 4 run scoreboard players add #rg_spleef_1_y switch.data 1
execute if score #rg_spleef_1_mod switch.data matches 4 run scoreboard players set #rg_spleef_1_mod switch.data 0

kill @s

