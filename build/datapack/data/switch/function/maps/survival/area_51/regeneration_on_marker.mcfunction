
#> switch:maps/survival/area_51/regeneration_on_marker
#
# @within	switch:maps/survival/area_51/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_area_51_y switch.data

execute if score #rg_area_51_mod switch.data matches 0 at @s in switch:game run particle cloud 9 ~0.5 2063 9 0 31 0 250 force
execute if score #rg_area_51_mod switch.data matches 0 at @s run clone from minecraft:overworld 0 ~ 2000 18 ~ 2126 to switch:game 0 ~0 2000 strict replace force

execute if score #rg_area_51_mod switch.data matches 1 at @s in switch:game run particle cloud 27 ~0.5 2063 9 0 31 0 250 force
execute if score #rg_area_51_mod switch.data matches 1 at @s run clone from minecraft:overworld 18 ~ 2000 36 ~ 2126 to switch:game 18 ~0 2000 strict replace force

execute if score #rg_area_51_mod switch.data matches 2 at @s in switch:game run particle cloud 45 ~0.5 2063 9 0 31 0 250 force
execute if score #rg_area_51_mod switch.data matches 2 at @s run clone from minecraft:overworld 36 ~ 2000 54 ~ 2126 to switch:game 36 ~0 2000 strict replace force

execute if score #rg_area_51_mod switch.data matches 3 at @s in switch:game run particle cloud 63 ~0.5 2063 9 0 31 0 250 force
execute if score #rg_area_51_mod switch.data matches 3 at @s run clone from minecraft:overworld 54 ~ 2000 72 ~ 2126 to switch:game 54 ~0 2000 strict replace force

execute if score #rg_area_51_mod switch.data matches 4 at @s in switch:game run particle cloud 81 ~0.5 2063 9 0 31 0 250 force
execute if score #rg_area_51_mod switch.data matches 4 at @s run clone from minecraft:overworld 72 ~ 2000 90 ~ 2126 to switch:game 72 ~0 2000 strict replace force

execute if score #rg_area_51_mod switch.data matches 5 at @s in switch:game run particle cloud 99 ~0.5 2063 9 0 31 0 250 force
execute if score #rg_area_51_mod switch.data matches 5 at @s run clone from minecraft:overworld 90 ~ 2000 108 ~ 2126 to switch:game 90 ~0 2000 strict replace force

scoreboard players add #rg_area_51_mod switch.data 1
execute if score #rg_area_51_mod switch.data matches 6 in switch:game run kill @e[type=item,x=54,y=100,z=2063,distance=..1000]
execute if score #rg_area_51_mod switch.data matches 6 run scoreboard players add #rg_area_51_y switch.data 1
execute if score #rg_area_51_mod switch.data matches 6 run scoreboard players set #rg_area_51_mod switch.data 0

kill @s

