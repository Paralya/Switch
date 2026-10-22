
#> switch:maps/survival/ocean_waste/regeneration_on_marker
#
# @within	switch:maps/survival/ocean_waste/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_ocean_waste_y switch.data

execute if score #rg_ocean_waste_mod switch.data matches 0 at @s in switch:game run particle cloud 8010 ~0.5 6050 10 0 25 0 250 force
execute if score #rg_ocean_waste_mod switch.data matches 0 at @s run clone from minecraft:overworld 8000 ~ 6000 8020 ~ 6100 to switch:game 8000 ~0 6000 strict replace force

execute if score #rg_ocean_waste_mod switch.data matches 1 at @s in switch:game run particle cloud 8030 ~0.5 6050 10 0 25 0 250 force
execute if score #rg_ocean_waste_mod switch.data matches 1 at @s run clone from minecraft:overworld 8020 ~ 6000 8040 ~ 6100 to switch:game 8020 ~0 6000 strict replace force

execute if score #rg_ocean_waste_mod switch.data matches 2 at @s in switch:game run particle cloud 8050 ~0.5 6050 10 0 25 0 250 force
execute if score #rg_ocean_waste_mod switch.data matches 2 at @s run clone from minecraft:overworld 8040 ~ 6000 8060 ~ 6100 to switch:game 8040 ~0 6000 strict replace force

execute if score #rg_ocean_waste_mod switch.data matches 3 at @s in switch:game run particle cloud 8070 ~0.5 6050 10 0 25 0 250 force
execute if score #rg_ocean_waste_mod switch.data matches 3 at @s run clone from minecraft:overworld 8060 ~ 6000 8080 ~ 6100 to switch:game 8060 ~0 6000 strict replace force

execute if score #rg_ocean_waste_mod switch.data matches 4 at @s in switch:game run particle cloud 8090 ~0.5 6050 10 0 25 0 250 force
execute if score #rg_ocean_waste_mod switch.data matches 4 at @s run clone from minecraft:overworld 8080 ~ 6000 8100 ~ 6100 to switch:game 8080 ~0 6000 strict replace force

scoreboard players add #rg_ocean_waste_mod switch.data 1
execute if score #rg_ocean_waste_mod switch.data matches 5 in switch:game run kill @e[type=item,x=8050,y=100,z=6050,distance=..1000]
execute if score #rg_ocean_waste_mod switch.data matches 5 run scoreboard players add #rg_ocean_waste_y switch.data 1
execute if score #rg_ocean_waste_mod switch.data matches 5 run scoreboard players set #rg_ocean_waste_mod switch.data 0

kill @s

