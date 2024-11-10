
#> switch:maps/survival/pretty_garden/regeneration_on_marker
#
# @within	switch:maps/survival/pretty_garden/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_pretty_garden_y switch.data

execute if score #rg_pretty_garden_mod switch.data matches 0 at @s in switch:game run particle cloud 140009 ~100.5 140035 9 0 17 0 250 force
execute if score #rg_pretty_garden_mod switch.data matches 0 at @s run clone from minecraft:overworld 140000 ~ 140000 140019 ~ 140070 to switch:game 140000 ~100 140000 replace force

execute if score #rg_pretty_garden_mod switch.data matches 1 at @s in switch:game run particle cloud 140028 ~100.5 140035 9 0 17 0 250 force
execute if score #rg_pretty_garden_mod switch.data matches 1 at @s run clone from minecraft:overworld 140019 ~ 140000 140037 ~ 140070 to switch:game 140019 ~100 140000 replace force

execute if score #rg_pretty_garden_mod switch.data matches 2 at @s in switch:game run particle cloud 140046 ~100.5 140035 9 0 17 0 250 force
execute if score #rg_pretty_garden_mod switch.data matches 2 at @s run clone from minecraft:overworld 140037 ~ 140000 140056 ~ 140070 to switch:game 140037 ~100 140000 replace force

scoreboard players add #rg_pretty_garden_mod switch.data 1
execute if score #rg_pretty_garden_mod switch.data matches 3 in switch:game run kill @e[type=item,x=140028,y=0,z=140035,distance=..1000]
execute if score #rg_pretty_garden_mod switch.data matches 3 run scoreboard players add #rg_pretty_garden_y switch.data 1
execute if score #rg_pretty_garden_mod switch.data matches 3 run scoreboard players set #rg_pretty_garden_mod switch.data 0

kill @s

