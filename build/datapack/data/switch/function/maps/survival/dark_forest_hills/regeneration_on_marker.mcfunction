
#> switch:maps/survival/dark_forest_hills/regeneration_on_marker
#
# @within	switch:maps/survival/dark_forest_hills/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_dark_forest_hills_y switch.data

execute if score #rg_dark_forest_hills_mod switch.data matches 0 at @s in switch:game run particle cloud 39006 ~0.5 39110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 0 at @s run clone from minecraft:overworld 39000 ~ 39000 39013 ~ 39221 to switch:game 39000 ~0 39000 replace force

execute if score #rg_dark_forest_hills_mod switch.data matches 1 at @s in switch:game run particle cloud 39019 ~0.5 39110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 1 at @s run clone from minecraft:overworld 39013 ~ 39000 39026 ~ 39221 to switch:game 39013 ~0 39000 replace force

execute if score #rg_dark_forest_hills_mod switch.data matches 2 at @s in switch:game run particle cloud 39032 ~0.5 39110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 2 at @s run clone from minecraft:overworld 39026 ~ 39000 39039 ~ 39221 to switch:game 39026 ~0 39000 replace force

execute if score #rg_dark_forest_hills_mod switch.data matches 3 at @s in switch:game run particle cloud 39045 ~0.5 39110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 3 at @s run clone from minecraft:overworld 39039 ~ 39000 39052 ~ 39221 to switch:game 39039 ~0 39000 replace force

execute if score #rg_dark_forest_hills_mod switch.data matches 4 at @s in switch:game run particle cloud 39058 ~0.5 39110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 4 at @s run clone from minecraft:overworld 39052 ~ 39000 39065 ~ 39221 to switch:game 39052 ~0 39000 replace force

execute if score #rg_dark_forest_hills_mod switch.data matches 5 at @s in switch:game run particle cloud 39071 ~0.5 39110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 5 at @s run clone from minecraft:overworld 39065 ~ 39000 39078 ~ 39221 to switch:game 39065 ~0 39000 replace force

execute if score #rg_dark_forest_hills_mod switch.data matches 6 at @s in switch:game run particle cloud 39084 ~0.5 39110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 6 at @s run clone from minecraft:overworld 39078 ~ 39000 39091 ~ 39221 to switch:game 39078 ~0 39000 replace force

execute if score #rg_dark_forest_hills_mod switch.data matches 7 at @s in switch:game run particle cloud 39097 ~0.5 39110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 7 at @s run clone from minecraft:overworld 39091 ~ 39000 39104 ~ 39221 to switch:game 39091 ~0 39000 replace force

execute if score #rg_dark_forest_hills_mod switch.data matches 8 at @s in switch:game run particle cloud 39110 ~0.5 39110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 8 at @s run clone from minecraft:overworld 39104 ~ 39000 39117 ~ 39221 to switch:game 39104 ~0 39000 replace force

execute if score #rg_dark_forest_hills_mod switch.data matches 9 at @s in switch:game run particle cloud 39123 ~0.5 39110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 9 at @s run clone from minecraft:overworld 39117 ~ 39000 39130 ~ 39221 to switch:game 39117 ~0 39000 replace force

execute if score #rg_dark_forest_hills_mod switch.data matches 10 at @s in switch:game run particle cloud 39136 ~0.5 39110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 10 at @s run clone from minecraft:overworld 39130 ~ 39000 39143 ~ 39221 to switch:game 39130 ~0 39000 replace force

scoreboard players add #rg_dark_forest_hills_mod switch.data 1
execute if score #rg_dark_forest_hills_mod switch.data matches 11 in switch:game run kill @e[type=item,x=39071,y=100,z=39110,distance=..1000]
execute if score #rg_dark_forest_hills_mod switch.data matches 11 run scoreboard players add #rg_dark_forest_hills_y switch.data 1
execute if score #rg_dark_forest_hills_mod switch.data matches 11 run scoreboard players set #rg_dark_forest_hills_mod switch.data 0

kill @s

