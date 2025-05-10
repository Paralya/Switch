
#> switch:maps/survival/jayl_dark_forest/regeneration_on_marker
#
# @within	switch:maps/survival/jayl_dark_forest/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_jayl_dark_forest_y switch.data

execute if score #rg_jayl_dark_forest_mod switch.data matches 0 at @s in switch:game run particle cloud 34010 ~0.5 34063 10 0 31 0 250 force
execute if score #rg_jayl_dark_forest_mod switch.data matches 0 at @s run clone from minecraft:overworld 34000 ~ 34000 34021 ~ 34127 to switch:game 34000 ~0 34000 replace force

execute if score #rg_jayl_dark_forest_mod switch.data matches 1 at @s in switch:game run particle cloud 34031 ~0.5 34063 10 0 31 0 250 force
execute if score #rg_jayl_dark_forest_mod switch.data matches 1 at @s run clone from minecraft:overworld 34021 ~ 34000 34042 ~ 34127 to switch:game 34021 ~0 34000 replace force

execute if score #rg_jayl_dark_forest_mod switch.data matches 2 at @s in switch:game run particle cloud 34052 ~0.5 34063 10 0 31 0 250 force
execute if score #rg_jayl_dark_forest_mod switch.data matches 2 at @s run clone from minecraft:overworld 34042 ~ 34000 34062 ~ 34127 to switch:game 34042 ~0 34000 replace force

execute if score #rg_jayl_dark_forest_mod switch.data matches 3 at @s in switch:game run particle cloud 34072 ~0.5 34063 10 0 31 0 250 force
execute if score #rg_jayl_dark_forest_mod switch.data matches 3 at @s run clone from minecraft:overworld 34062 ~ 34000 34083 ~ 34127 to switch:game 34062 ~0 34000 replace force

execute if score #rg_jayl_dark_forest_mod switch.data matches 4 at @s in switch:game run particle cloud 34093 ~0.5 34063 10 0 31 0 250 force
execute if score #rg_jayl_dark_forest_mod switch.data matches 4 at @s run clone from minecraft:overworld 34083 ~ 34000 34104 ~ 34127 to switch:game 34083 ~0 34000 replace force

execute if score #rg_jayl_dark_forest_mod switch.data matches 5 at @s in switch:game run particle cloud 34114 ~0.5 34063 10 0 31 0 250 force
execute if score #rg_jayl_dark_forest_mod switch.data matches 5 at @s run clone from minecraft:overworld 34104 ~ 34000 34125 ~ 34127 to switch:game 34104 ~0 34000 replace force

execute if score #rg_jayl_dark_forest_mod switch.data matches 6 at @s in switch:game run particle cloud 34135 ~0.5 34063 10 0 31 0 250 force
execute if score #rg_jayl_dark_forest_mod switch.data matches 6 at @s run clone from minecraft:overworld 34125 ~ 34000 34145 ~ 34127 to switch:game 34125 ~0 34000 replace force

execute if score #rg_jayl_dark_forest_mod switch.data matches 7 at @s in switch:game run particle cloud 34155 ~0.5 34063 10 0 31 0 250 force
execute if score #rg_jayl_dark_forest_mod switch.data matches 7 at @s run clone from minecraft:overworld 34145 ~ 34000 34166 ~ 34127 to switch:game 34145 ~0 34000 replace force

execute if score #rg_jayl_dark_forest_mod switch.data matches 8 at @s in switch:game run particle cloud 34176 ~0.5 34063 10 0 31 0 250 force
execute if score #rg_jayl_dark_forest_mod switch.data matches 8 at @s run clone from minecraft:overworld 34166 ~ 34000 34187 ~ 34127 to switch:game 34166 ~0 34000 replace force

scoreboard players add #rg_jayl_dark_forest_mod switch.data 1
execute if score #rg_jayl_dark_forest_mod switch.data matches 9 in switch:game run kill @e[type=item,x=34093,y=100,z=34063,distance=..1000]
execute if score #rg_jayl_dark_forest_mod switch.data matches 9 run scoreboard players add #rg_jayl_dark_forest_y switch.data 1
execute if score #rg_jayl_dark_forest_mod switch.data matches 9 run scoreboard players set #rg_jayl_dark_forest_mod switch.data 0

kill @s

