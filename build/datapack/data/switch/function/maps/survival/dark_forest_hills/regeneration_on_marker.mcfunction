
#> switch:maps/survival/dark_forest_hills/regeneration_on_marker
#
# @within	switch:maps/survival/dark_forest_hills/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_dark_forest_hills_y switch.data

execute if score #rg_dark_forest_hills_mod switch.data matches 0 at @s in switch:game run particle cloud 6 ~0.5 6110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 0 at @s run clone from minecraft:overworld 0 ~ 6000 13 ~ 6221 to switch:game 0 ~0 6000 strict replace force

execute if score #rg_dark_forest_hills_mod switch.data matches 1 at @s in switch:game run particle cloud 19 ~0.5 6110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 1 at @s run clone from minecraft:overworld 13 ~ 6000 26 ~ 6221 to switch:game 13 ~0 6000 strict replace force

execute if score #rg_dark_forest_hills_mod switch.data matches 2 at @s in switch:game run particle cloud 32 ~0.5 6110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 2 at @s run clone from minecraft:overworld 26 ~ 6000 39 ~ 6221 to switch:game 26 ~0 6000 strict replace force

execute if score #rg_dark_forest_hills_mod switch.data matches 3 at @s in switch:game run particle cloud 45 ~0.5 6110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 3 at @s run clone from minecraft:overworld 39 ~ 6000 52 ~ 6221 to switch:game 39 ~0 6000 strict replace force

execute if score #rg_dark_forest_hills_mod switch.data matches 4 at @s in switch:game run particle cloud 58 ~0.5 6110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 4 at @s run clone from minecraft:overworld 52 ~ 6000 65 ~ 6221 to switch:game 52 ~0 6000 strict replace force

execute if score #rg_dark_forest_hills_mod switch.data matches 5 at @s in switch:game run particle cloud 71 ~0.5 6110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 5 at @s run clone from minecraft:overworld 65 ~ 6000 78 ~ 6221 to switch:game 65 ~0 6000 strict replace force

execute if score #rg_dark_forest_hills_mod switch.data matches 6 at @s in switch:game run particle cloud 84 ~0.5 6110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 6 at @s run clone from minecraft:overworld 78 ~ 6000 91 ~ 6221 to switch:game 78 ~0 6000 strict replace force

execute if score #rg_dark_forest_hills_mod switch.data matches 7 at @s in switch:game run particle cloud 97 ~0.5 6110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 7 at @s run clone from minecraft:overworld 91 ~ 6000 104 ~ 6221 to switch:game 91 ~0 6000 strict replace force

execute if score #rg_dark_forest_hills_mod switch.data matches 8 at @s in switch:game run particle cloud 110 ~0.5 6110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 8 at @s run clone from minecraft:overworld 104 ~ 6000 117 ~ 6221 to switch:game 104 ~0 6000 strict replace force

execute if score #rg_dark_forest_hills_mod switch.data matches 9 at @s in switch:game run particle cloud 123 ~0.5 6110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 9 at @s run clone from minecraft:overworld 117 ~ 6000 130 ~ 6221 to switch:game 117 ~0 6000 strict replace force

execute if score #rg_dark_forest_hills_mod switch.data matches 10 at @s in switch:game run particle cloud 136 ~0.5 6110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 10 at @s run clone from minecraft:overworld 130 ~ 6000 143 ~ 6221 to switch:game 130 ~0 6000 strict replace force

scoreboard players add #rg_dark_forest_hills_mod switch.data 1
execute if score #rg_dark_forest_hills_mod switch.data matches 11 in switch:game run kill @e[type=item,x=71,y=100,z=6110,distance=..1000]
execute if score #rg_dark_forest_hills_mod switch.data matches 11 run scoreboard players add #rg_dark_forest_hills_y switch.data 1
execute if score #rg_dark_forest_hills_mod switch.data matches 11 run scoreboard players set #rg_dark_forest_hills_mod switch.data 0

kill @s

