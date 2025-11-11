
#> switch:maps/survival/floating_island/regeneration_on_marker
#
# @within	switch:maps/survival/floating_island/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_floating_island_y switch.data

execute if score #rg_floating_island_mod switch.data matches 0 at @s in switch:game run particle cloud 94012 ~0.5 94038 12 0 19 0 250 force
execute if score #rg_floating_island_mod switch.data matches 0 at @s run clone from minecraft:overworld 94000 ~ 94000 94025 ~ 94076 to switch:game 94000 ~0 94000 strict replace force

execute if score #rg_floating_island_mod switch.data matches 1 at @s in switch:game run particle cloud 94038 ~0.5 94038 13 0 19 0 250 force
execute if score #rg_floating_island_mod switch.data matches 1 at @s run clone from minecraft:overworld 94025 ~ 94000 94051 ~ 94076 to switch:game 94025 ~0 94000 strict replace force

execute if score #rg_floating_island_mod switch.data matches 2 at @s in switch:game run particle cloud 94063 ~0.5 94038 12 0 19 0 250 force
execute if score #rg_floating_island_mod switch.data matches 2 at @s run clone from minecraft:overworld 94051 ~ 94000 94076 ~ 94076 to switch:game 94051 ~0 94000 strict replace force

scoreboard players add #rg_floating_island_mod switch.data 1
execute if score #rg_floating_island_mod switch.data matches 3 in switch:game run kill @e[type=item,x=94038,y=100,z=94038,distance=..1000]
execute if score #rg_floating_island_mod switch.data matches 3 run scoreboard players add #rg_floating_island_y switch.data 1
execute if score #rg_floating_island_mod switch.data matches 3 run scoreboard players set #rg_floating_island_mod switch.data 0

kill @s

