
#> switch:maps/survival/floating_island/regeneration_on_marker
#
# @within	switch:maps/survival/floating_island/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_floating_island_y switch.data

execute if score #rg_floating_island_mod switch.data matches 0 at @s in switch:game run particle cloud -7988 ~0.5 38 12 0 19 0 250 force
execute if score #rg_floating_island_mod switch.data matches 0 at @s run clone from minecraft:overworld -8000 ~ 0 -7975 ~ 76 to switch:game -8000 ~0 0 strict replace force

execute if score #rg_floating_island_mod switch.data matches 1 at @s in switch:game run particle cloud -7962 ~0.5 38 13 0 19 0 250 force
execute if score #rg_floating_island_mod switch.data matches 1 at @s run clone from minecraft:overworld -7975 ~ 0 -7949 ~ 76 to switch:game -7975 ~0 0 strict replace force

execute if score #rg_floating_island_mod switch.data matches 2 at @s in switch:game run particle cloud -7937 ~0.5 38 12 0 19 0 250 force
execute if score #rg_floating_island_mod switch.data matches 2 at @s run clone from minecraft:overworld -7949 ~ 0 -7924 ~ 76 to switch:game -7949 ~0 0 strict replace force

scoreboard players add #rg_floating_island_mod switch.data 1
execute if score #rg_floating_island_mod switch.data matches 3 in switch:game run kill @e[type=item,x=-7962,y=100,z=38,distance=..1000]
execute if score #rg_floating_island_mod switch.data matches 3 run scoreboard players add #rg_floating_island_y switch.data 1
execute if score #rg_floating_island_mod switch.data matches 3 run scoreboard players set #rg_floating_island_mod switch.data 0

kill @s

