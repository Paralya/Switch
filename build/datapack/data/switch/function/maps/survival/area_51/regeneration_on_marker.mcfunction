
#> switch:maps/survival/area_51/regeneration_on_marker
#
# @within	switch:maps/survival/area_51/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_area_51_y switch.data

execute if score #rg_area_51_mod switch.data matches 0 at @s in switch:game run particle cloud 2009 ~0.5 2063 9 0 31 0 250 force
execute if score #rg_area_51_mod switch.data matches 0 at @s run clone from minecraft:overworld 2000 ~ 2000 2018 ~ 2126 to switch:game 2000 ~0 2000 strict replace force

execute if score #rg_area_51_mod switch.data matches 1 at @s in switch:game run particle cloud 2027 ~0.5 2063 9 0 31 0 250 force
execute if score #rg_area_51_mod switch.data matches 1 at @s run clone from minecraft:overworld 2018 ~ 2000 2036 ~ 2126 to switch:game 2018 ~0 2000 strict replace force

execute if score #rg_area_51_mod switch.data matches 2 at @s in switch:game run particle cloud 2045 ~0.5 2063 9 0 31 0 250 force
execute if score #rg_area_51_mod switch.data matches 2 at @s run clone from minecraft:overworld 2036 ~ 2000 2054 ~ 2126 to switch:game 2036 ~0 2000 strict replace force

execute if score #rg_area_51_mod switch.data matches 3 at @s in switch:game run particle cloud 2063 ~0.5 2063 9 0 31 0 250 force
execute if score #rg_area_51_mod switch.data matches 3 at @s run clone from minecraft:overworld 2054 ~ 2000 2072 ~ 2126 to switch:game 2054 ~0 2000 strict replace force

execute if score #rg_area_51_mod switch.data matches 4 at @s in switch:game run particle cloud 2081 ~0.5 2063 9 0 31 0 250 force
execute if score #rg_area_51_mod switch.data matches 4 at @s run clone from minecraft:overworld 2072 ~ 2000 2090 ~ 2126 to switch:game 2072 ~0 2000 strict replace force

execute if score #rg_area_51_mod switch.data matches 5 at @s in switch:game run particle cloud 2099 ~0.5 2063 9 0 31 0 250 force
execute if score #rg_area_51_mod switch.data matches 5 at @s run clone from minecraft:overworld 2090 ~ 2000 2108 ~ 2126 to switch:game 2090 ~0 2000 strict replace force

scoreboard players add #rg_area_51_mod switch.data 1
execute if score #rg_area_51_mod switch.data matches 6 in switch:game run kill @e[type=item,x=2054,y=100,z=2063,distance=..1000]
execute if score #rg_area_51_mod switch.data matches 6 run scoreboard players add #rg_area_51_y switch.data 1
execute if score #rg_area_51_mod switch.data matches 6 run scoreboard players set #rg_area_51_mod switch.data 0

kill @s

