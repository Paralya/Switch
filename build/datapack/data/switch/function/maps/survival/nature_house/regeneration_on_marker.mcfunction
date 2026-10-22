
#> switch:maps/survival/nature_house/regeneration_on_marker
#
# @within	switch:maps/survival/nature_house/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_nature_house_y switch.data

execute if score #rg_nature_house_mod switch.data matches 0 at @s in switch:game run particle cloud -7989 ~0.5 4034 11 0 17 0 250 force
execute if score #rg_nature_house_mod switch.data matches 0 at @s run clone from minecraft:overworld -8000 ~ 4000 -7977 ~ 4068 to switch:game -8000 ~0 4000 strict replace force

execute if score #rg_nature_house_mod switch.data matches 1 at @s in switch:game run particle cloud -7966 ~0.5 4034 11 0 17 0 250 force
execute if score #rg_nature_house_mod switch.data matches 1 at @s run clone from minecraft:overworld -7977 ~ 4000 -7955 ~ 4068 to switch:game -7977 ~0 4000 strict replace force

execute if score #rg_nature_house_mod switch.data matches 2 at @s in switch:game run particle cloud -7944 ~0.5 4034 11 0 17 0 250 force
execute if score #rg_nature_house_mod switch.data matches 2 at @s run clone from minecraft:overworld -7955 ~ 4000 -7932 ~ 4068 to switch:game -7955 ~0 4000 strict replace force

scoreboard players add #rg_nature_house_mod switch.data 1
execute if score #rg_nature_house_mod switch.data matches 3 in switch:game run kill @e[type=item,x=-7966,y=100,z=4034,distance=..1000]
execute if score #rg_nature_house_mod switch.data matches 3 run scoreboard players add #rg_nature_house_y switch.data 1
execute if score #rg_nature_house_mod switch.data matches 3 run scoreboard players set #rg_nature_house_mod switch.data 0

kill @s

