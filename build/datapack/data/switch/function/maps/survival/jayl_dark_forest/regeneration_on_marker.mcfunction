
#> switch:maps/survival/jayl_dark_forest/regeneration_on_marker
#
# @within	switch:maps/survival/jayl_dark_forest/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_jayl_dark_forest_y switch.data

execute if score #rg_jayl_dark_forest_mod switch.data matches 0 at @s in switch:game run particle cloud 6010 ~0.5 4063 10 0 31 0 250 force
execute if score #rg_jayl_dark_forest_mod switch.data matches 0 at @s run clone from minecraft:overworld 6000 ~ 4000 6021 ~ 4127 to switch:game 6000 ~0 4000 strict replace force

execute if score #rg_jayl_dark_forest_mod switch.data matches 1 at @s in switch:game run particle cloud 6031 ~0.5 4063 10 0 31 0 250 force
execute if score #rg_jayl_dark_forest_mod switch.data matches 1 at @s run clone from minecraft:overworld 6021 ~ 4000 6042 ~ 4127 to switch:game 6021 ~0 4000 strict replace force

execute if score #rg_jayl_dark_forest_mod switch.data matches 2 at @s in switch:game run particle cloud 6052 ~0.5 4063 10 0 31 0 250 force
execute if score #rg_jayl_dark_forest_mod switch.data matches 2 at @s run clone from minecraft:overworld 6042 ~ 4000 6062 ~ 4127 to switch:game 6042 ~0 4000 strict replace force

execute if score #rg_jayl_dark_forest_mod switch.data matches 3 at @s in switch:game run particle cloud 6072 ~0.5 4063 10 0 31 0 250 force
execute if score #rg_jayl_dark_forest_mod switch.data matches 3 at @s run clone from minecraft:overworld 6062 ~ 4000 6083 ~ 4127 to switch:game 6062 ~0 4000 strict replace force

execute if score #rg_jayl_dark_forest_mod switch.data matches 4 at @s in switch:game run particle cloud 6093 ~0.5 4063 10 0 31 0 250 force
execute if score #rg_jayl_dark_forest_mod switch.data matches 4 at @s run clone from minecraft:overworld 6083 ~ 4000 6104 ~ 4127 to switch:game 6083 ~0 4000 strict replace force

execute if score #rg_jayl_dark_forest_mod switch.data matches 5 at @s in switch:game run particle cloud 6114 ~0.5 4063 10 0 31 0 250 force
execute if score #rg_jayl_dark_forest_mod switch.data matches 5 at @s run clone from minecraft:overworld 6104 ~ 4000 6125 ~ 4127 to switch:game 6104 ~0 4000 strict replace force

execute if score #rg_jayl_dark_forest_mod switch.data matches 6 at @s in switch:game run particle cloud 6135 ~0.5 4063 10 0 31 0 250 force
execute if score #rg_jayl_dark_forest_mod switch.data matches 6 at @s run clone from minecraft:overworld 6125 ~ 4000 6145 ~ 4127 to switch:game 6125 ~0 4000 strict replace force

execute if score #rg_jayl_dark_forest_mod switch.data matches 7 at @s in switch:game run particle cloud 6155 ~0.5 4063 10 0 31 0 250 force
execute if score #rg_jayl_dark_forest_mod switch.data matches 7 at @s run clone from minecraft:overworld 6145 ~ 4000 6166 ~ 4127 to switch:game 6145 ~0 4000 strict replace force

execute if score #rg_jayl_dark_forest_mod switch.data matches 8 at @s in switch:game run particle cloud 6176 ~0.5 4063 10 0 31 0 250 force
execute if score #rg_jayl_dark_forest_mod switch.data matches 8 at @s run clone from minecraft:overworld 6166 ~ 4000 6187 ~ 4127 to switch:game 6166 ~0 4000 strict replace force

scoreboard players add #rg_jayl_dark_forest_mod switch.data 1
execute if score #rg_jayl_dark_forest_mod switch.data matches 9 in switch:game run kill @e[type=item,x=6093,y=100,z=4063,distance=..1000]
execute if score #rg_jayl_dark_forest_mod switch.data matches 9 run scoreboard players add #rg_jayl_dark_forest_y switch.data 1
execute if score #rg_jayl_dark_forest_mod switch.data matches 9 run scoreboard players set #rg_jayl_dark_forest_mod switch.data 0

kill @s

