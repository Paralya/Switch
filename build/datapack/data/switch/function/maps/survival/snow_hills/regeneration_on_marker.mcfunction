
#> switch:maps/survival/snow_hills/regeneration_on_marker
#
# @within	switch:maps/survival/snow_hills/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_snow_hills_y switch.data

execute if score #rg_snow_hills_mod switch.data matches 0 at @s in switch:game run particle cloud 49914 ~100.5 50010 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 0 at @s run clone from minecraft:overworld 49906 ~ 49918 49922 ~ 50103 to switch:game 49906 ~100 49918 replace force

execute if score #rg_snow_hills_mod switch.data matches 1 at @s in switch:game run particle cloud 49930 ~100.5 50010 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 1 at @s run clone from minecraft:overworld 49922 ~ 49918 49938 ~ 50103 to switch:game 49922 ~100 49918 replace force

execute if score #rg_snow_hills_mod switch.data matches 2 at @s in switch:game run particle cloud 49946 ~100.5 50010 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 2 at @s run clone from minecraft:overworld 49938 ~ 49918 49954 ~ 50103 to switch:game 49938 ~100 49918 replace force

execute if score #rg_snow_hills_mod switch.data matches 3 at @s in switch:game run particle cloud 49962 ~100.5 50010 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 3 at @s run clone from minecraft:overworld 49954 ~ 49918 49970 ~ 50103 to switch:game 49954 ~100 49918 replace force

execute if score #rg_snow_hills_mod switch.data matches 4 at @s in switch:game run particle cloud 49978 ~100.5 50010 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 4 at @s run clone from minecraft:overworld 49970 ~ 49918 49986 ~ 50103 to switch:game 49970 ~100 49918 replace force

execute if score #rg_snow_hills_mod switch.data matches 5 at @s in switch:game run particle cloud 49994 ~100.5 50010 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 5 at @s run clone from minecraft:overworld 49986 ~ 49918 50002 ~ 50103 to switch:game 49986 ~100 49918 replace force

execute if score #rg_snow_hills_mod switch.data matches 6 at @s in switch:game run particle cloud 50010 ~100.5 50010 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 6 at @s run clone from minecraft:overworld 50002 ~ 49918 50018 ~ 50103 to switch:game 50002 ~100 49918 replace force

execute if score #rg_snow_hills_mod switch.data matches 7 at @s in switch:game run particle cloud 50025 ~100.5 50010 7 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 7 at @s run clone from minecraft:overworld 50018 ~ 49918 50033 ~ 50103 to switch:game 50018 ~100 49918 replace force

execute if score #rg_snow_hills_mod switch.data matches 8 at @s in switch:game run particle cloud 50041 ~100.5 50010 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 8 at @s run clone from minecraft:overworld 50033 ~ 49918 50049 ~ 50103 to switch:game 50033 ~100 49918 replace force

execute if score #rg_snow_hills_mod switch.data matches 9 at @s in switch:game run particle cloud 50057 ~100.5 50010 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 9 at @s run clone from minecraft:overworld 50049 ~ 49918 50065 ~ 50103 to switch:game 50049 ~100 49918 replace force

execute if score #rg_snow_hills_mod switch.data matches 10 at @s in switch:game run particle cloud 50073 ~100.5 50010 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 10 at @s run clone from minecraft:overworld 50065 ~ 49918 50081 ~ 50103 to switch:game 50065 ~100 49918 replace force

execute if score #rg_snow_hills_mod switch.data matches 11 at @s in switch:game run particle cloud 50089 ~100.5 50010 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 11 at @s run clone from minecraft:overworld 50081 ~ 49918 50097 ~ 50103 to switch:game 50081 ~100 49918 replace force

execute if score #rg_snow_hills_mod switch.data matches 12 at @s in switch:game run particle cloud 50105 ~100.5 50010 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 12 at @s run clone from minecraft:overworld 50097 ~ 49918 50113 ~ 50103 to switch:game 50097 ~100 49918 replace force

execute if score #rg_snow_hills_mod switch.data matches 13 at @s in switch:game run particle cloud 50121 ~100.5 50010 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 13 at @s run clone from minecraft:overworld 50113 ~ 49918 50129 ~ 50103 to switch:game 50113 ~100 49918 replace force

execute if score #rg_snow_hills_mod switch.data matches 14 at @s in switch:game run particle cloud 50137 ~100.5 50010 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 14 at @s run clone from minecraft:overworld 50129 ~ 49918 50145 ~ 50103 to switch:game 50129 ~100 49918 replace force

scoreboard players add #rg_snow_hills_mod switch.data 1
execute if score #rg_snow_hills_mod switch.data matches 15 in switch:game run kill @e[type=item,x=50025,y=0,z=50010,distance=..1000]
execute if score #rg_snow_hills_mod switch.data matches 15 run scoreboard players add #rg_snow_hills_y switch.data 1
execute if score #rg_snow_hills_mod switch.data matches 15 run scoreboard players set #rg_snow_hills_mod switch.data 0

kill @s

