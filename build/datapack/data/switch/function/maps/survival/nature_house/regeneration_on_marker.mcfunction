
#> switch:maps/survival/nature_house/regeneration_on_marker
#
# @within	switch:maps/survival/nature_house/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_nature_house_y switch.data

execute if score #rg_nature_house_mod switch.data matches 0 at @s in switch:game run particle cloud 88011 ~0.5 88034 11 0 17 0 250 force
execute if score #rg_nature_house_mod switch.data matches 0 at @s run clone from minecraft:overworld 88000 ~ 88000 88023 ~ 88068 to switch:game 88000 ~0 88000 strict replace force

execute if score #rg_nature_house_mod switch.data matches 1 at @s in switch:game run particle cloud 88034 ~0.5 88034 11 0 17 0 250 force
execute if score #rg_nature_house_mod switch.data matches 1 at @s run clone from minecraft:overworld 88023 ~ 88000 88045 ~ 88068 to switch:game 88023 ~0 88000 strict replace force

execute if score #rg_nature_house_mod switch.data matches 2 at @s in switch:game run particle cloud 88056 ~0.5 88034 11 0 17 0 250 force
execute if score #rg_nature_house_mod switch.data matches 2 at @s run clone from minecraft:overworld 88045 ~ 88000 88068 ~ 88068 to switch:game 88045 ~0 88000 strict replace force

scoreboard players add #rg_nature_house_mod switch.data 1
execute if score #rg_nature_house_mod switch.data matches 3 in switch:game run kill @e[type=item,x=88034,y=100,z=88034,distance=..1000]
execute if score #rg_nature_house_mod switch.data matches 3 run scoreboard players add #rg_nature_house_y switch.data 1
execute if score #rg_nature_house_mod switch.data matches 3 run scoreboard players set #rg_nature_house_mod switch.data 0

kill @s

