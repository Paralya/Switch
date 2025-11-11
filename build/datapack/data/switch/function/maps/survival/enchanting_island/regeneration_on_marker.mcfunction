
#> switch:maps/survival/enchanting_island/regeneration_on_marker
#
# @within	switch:maps/survival/enchanting_island/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_enchanting_island_y switch.data

execute if score #rg_enchanting_island_mod switch.data matches 0 at @s in switch:game run particle cloud 7010 ~0.5 7030 10 0 15 0 250 force
execute if score #rg_enchanting_island_mod switch.data matches 0 at @s run clone from minecraft:overworld 7000 ~ 7000 7020 ~ 7060 to switch:game 7000 ~0 7000 strict replace force

execute if score #rg_enchanting_island_mod switch.data matches 1 at @s in switch:game run particle cloud 7030 ~0.5 7030 10 0 15 0 250 force
execute if score #rg_enchanting_island_mod switch.data matches 1 at @s run clone from minecraft:overworld 7020 ~ 7000 7040 ~ 7060 to switch:game 7020 ~0 7000 strict replace force

execute if score #rg_enchanting_island_mod switch.data matches 2 at @s in switch:game run particle cloud 7050 ~0.5 7030 10 0 15 0 250 force
execute if score #rg_enchanting_island_mod switch.data matches 2 at @s run clone from minecraft:overworld 7040 ~ 7000 7060 ~ 7060 to switch:game 7040 ~0 7000 strict replace force

scoreboard players add #rg_enchanting_island_mod switch.data 1
execute if score #rg_enchanting_island_mod switch.data matches 3 in switch:game run kill @e[type=item,x=7030,y=100,z=7030,distance=..1000]
execute if score #rg_enchanting_island_mod switch.data matches 3 run scoreboard players add #rg_enchanting_island_y switch.data 1
execute if score #rg_enchanting_island_mod switch.data matches 3 run scoreboard players set #rg_enchanting_island_mod switch.data 0

kill @s

