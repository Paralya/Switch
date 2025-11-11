
#> switch:maps/survival/ocean_waste/regeneration_on_marker
#
# @within	switch:maps/survival/ocean_waste/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_ocean_waste_y switch.data

execute if score #rg_ocean_waste_mod switch.data matches 0 at @s in switch:game run particle cloud 64010 ~0.5 64050 10 0 25 0 250 force
execute if score #rg_ocean_waste_mod switch.data matches 0 at @s run clone from minecraft:overworld 64000 ~ 64000 64020 ~ 64100 to switch:game 64000 ~0 64000 strict replace force

execute if score #rg_ocean_waste_mod switch.data matches 1 at @s in switch:game run particle cloud 64030 ~0.5 64050 10 0 25 0 250 force
execute if score #rg_ocean_waste_mod switch.data matches 1 at @s run clone from minecraft:overworld 64020 ~ 64000 64040 ~ 64100 to switch:game 64020 ~0 64000 strict replace force

execute if score #rg_ocean_waste_mod switch.data matches 2 at @s in switch:game run particle cloud 64050 ~0.5 64050 10 0 25 0 250 force
execute if score #rg_ocean_waste_mod switch.data matches 2 at @s run clone from minecraft:overworld 64040 ~ 64000 64060 ~ 64100 to switch:game 64040 ~0 64000 strict replace force

execute if score #rg_ocean_waste_mod switch.data matches 3 at @s in switch:game run particle cloud 64070 ~0.5 64050 10 0 25 0 250 force
execute if score #rg_ocean_waste_mod switch.data matches 3 at @s run clone from minecraft:overworld 64060 ~ 64000 64080 ~ 64100 to switch:game 64060 ~0 64000 strict replace force

execute if score #rg_ocean_waste_mod switch.data matches 4 at @s in switch:game run particle cloud 64090 ~0.5 64050 10 0 25 0 250 force
execute if score #rg_ocean_waste_mod switch.data matches 4 at @s run clone from minecraft:overworld 64080 ~ 64000 64100 ~ 64100 to switch:game 64080 ~0 64000 strict replace force

scoreboard players add #rg_ocean_waste_mod switch.data 1
execute if score #rg_ocean_waste_mod switch.data matches 5 in switch:game run kill @e[type=item,x=64050,y=100,z=64050,distance=..1000]
execute if score #rg_ocean_waste_mod switch.data matches 5 run scoreboard players add #rg_ocean_waste_y switch.data 1
execute if score #rg_ocean_waste_mod switch.data matches 5 run scoreboard players set #rg_ocean_waste_mod switch.data 0

kill @s

