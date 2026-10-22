
#> switch:maps/survival/new_grounds/regeneration_on_marker
#
# @within	switch:maps/survival/new_grounds/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_new_grounds_y switch.data

execute if score #rg_new_grounds_mod switch.data matches 0 at @s in switch:game run particle cloud -5989 ~0.5 46 11 0 23 0 250 force
execute if score #rg_new_grounds_mod switch.data matches 0 at @s run clone from minecraft:overworld -6000 ~ 0 -5977 ~ 93 to switch:game -6000 ~0 0 strict replace force

execute if score #rg_new_grounds_mod switch.data matches 1 at @s in switch:game run particle cloud -5966 ~0.5 46 11 0 23 0 250 force
execute if score #rg_new_grounds_mod switch.data matches 1 at @s run clone from minecraft:overworld -5977 ~ 0 -5954 ~ 93 to switch:game -5977 ~0 0 strict replace force

execute if score #rg_new_grounds_mod switch.data matches 2 at @s in switch:game run particle cloud -5942 ~0.5 46 12 0 23 0 250 force
execute if score #rg_new_grounds_mod switch.data matches 2 at @s run clone from minecraft:overworld -5954 ~ 0 -5930 ~ 93 to switch:game -5954 ~0 0 strict replace force

execute if score #rg_new_grounds_mod switch.data matches 3 at @s in switch:game run particle cloud -5919 ~0.5 46 11 0 23 0 250 force
execute if score #rg_new_grounds_mod switch.data matches 3 at @s run clone from minecraft:overworld -5930 ~ 0 -5907 ~ 93 to switch:game -5930 ~0 0 strict replace force

scoreboard players add #rg_new_grounds_mod switch.data 1
execute if score #rg_new_grounds_mod switch.data matches 4 in switch:game run kill @e[type=item,x=-5953,y=100,z=46,distance=..1000]
execute if score #rg_new_grounds_mod switch.data matches 4 run scoreboard players add #rg_new_grounds_y switch.data 1
execute if score #rg_new_grounds_mod switch.data matches 4 run scoreboard players set #rg_new_grounds_mod switch.data 0

kill @s

