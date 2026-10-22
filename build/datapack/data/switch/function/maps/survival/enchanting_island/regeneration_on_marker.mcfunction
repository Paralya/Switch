
#> switch:maps/survival/enchanting_island/regeneration_on_marker
#
# @within	switch:maps/survival/enchanting_island/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_enchanting_island_y switch.data

execute if score #rg_enchanting_island_mod switch.data matches 0 at @s in switch:game run particle cloud 4010 ~0.5 -3970 10 0 15 0 250 force
execute if score #rg_enchanting_island_mod switch.data matches 0 at @s run clone from minecraft:overworld 4000 ~ -4000 4020 ~ -3940 to switch:game 4000 ~0 -4000 strict replace force

execute if score #rg_enchanting_island_mod switch.data matches 1 at @s in switch:game run particle cloud 4030 ~0.5 -3970 10 0 15 0 250 force
execute if score #rg_enchanting_island_mod switch.data matches 1 at @s run clone from minecraft:overworld 4020 ~ -4000 4040 ~ -3940 to switch:game 4020 ~0 -4000 strict replace force

execute if score #rg_enchanting_island_mod switch.data matches 2 at @s in switch:game run particle cloud 4050 ~0.5 -3970 10 0 15 0 250 force
execute if score #rg_enchanting_island_mod switch.data matches 2 at @s run clone from minecraft:overworld 4040 ~ -4000 4060 ~ -3940 to switch:game 4040 ~0 -4000 strict replace force

scoreboard players add #rg_enchanting_island_mod switch.data 1
execute if score #rg_enchanting_island_mod switch.data matches 3 in switch:game run kill @e[type=item,x=4030,y=100,z=-3970,distance=..1000]
execute if score #rg_enchanting_island_mod switch.data matches 3 run scoreboard players add #rg_enchanting_island_y switch.data 1
execute if score #rg_enchanting_island_mod switch.data matches 3 run scoreboard players set #rg_enchanting_island_mod switch.data 0

kill @s

