
#> switch:maps/survival/enchanting_island/regeneration_on_marker
#
# @within	switch:maps/survival/enchanting_island/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_enchanting_island_y switch.data

execute if score #rg_enchanting_island_mod switch.data matches 0 at @s in switch:game run particle cloud 6980 ~100.5 7000 10 0 15 0 250 force
execute if score #rg_enchanting_island_mod switch.data matches 0 at @s run clone from minecraft:overworld 6970 ~ 6970 6990 ~ 7030 to switch:game 6970 ~100 6970 replace force

execute if score #rg_enchanting_island_mod switch.data matches 1 at @s in switch:game run particle cloud 7000 ~100.5 7000 10 0 15 0 250 force
execute if score #rg_enchanting_island_mod switch.data matches 1 at @s run clone from minecraft:overworld 6990 ~ 6970 7010 ~ 7030 to switch:game 6990 ~100 6970 replace force

execute if score #rg_enchanting_island_mod switch.data matches 2 at @s in switch:game run particle cloud 7020 ~100.5 7000 10 0 15 0 250 force
execute if score #rg_enchanting_island_mod switch.data matches 2 at @s run clone from minecraft:overworld 7010 ~ 6970 7030 ~ 7030 to switch:game 7010 ~100 6970 replace force

scoreboard players add #rg_enchanting_island_mod switch.data 1
execute if score #rg_enchanting_island_mod switch.data matches 3 in switch:game run kill @e[type=item,x=7000,y=0,z=7000,distance=..1000]
execute if score #rg_enchanting_island_mod switch.data matches 3 run scoreboard players add #rg_enchanting_island_y switch.data 1
execute if score #rg_enchanting_island_mod switch.data matches 3 run scoreboard players set #rg_enchanting_island_mod switch.data 0

kill @s

