
#> switch:maps/survival/la_juste_recette/regeneration_on_marker
#
# @within	switch:maps/survival/la_juste_recette/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_la_juste_recette_y switch.data

execute if score #rg_la_juste_recette_mod switch.data matches 0 at @s in switch:game run particle cloud 10 ~0.5 -7938 10 0 31 0 250 force
execute if score #rg_la_juste_recette_mod switch.data matches 0 at @s run clone from minecraft:overworld 0 ~ -8000 21 ~ -7876 to switch:game 0 ~0 -8000 strict replace force

execute if score #rg_la_juste_recette_mod switch.data matches 1 at @s in switch:game run particle cloud 31 ~0.5 -7938 10 0 31 0 250 force
execute if score #rg_la_juste_recette_mod switch.data matches 1 at @s run clone from minecraft:overworld 21 ~ -8000 41 ~ -7876 to switch:game 21 ~0 -8000 strict replace force

execute if score #rg_la_juste_recette_mod switch.data matches 2 at @s in switch:game run particle cloud 51 ~0.5 -7938 10 0 31 0 250 force
execute if score #rg_la_juste_recette_mod switch.data matches 2 at @s run clone from minecraft:overworld 41 ~ -8000 62 ~ -7876 to switch:game 41 ~0 -8000 strict replace force

execute if score #rg_la_juste_recette_mod switch.data matches 3 at @s in switch:game run particle cloud 72 ~0.5 -7938 10 0 31 0 250 force
execute if score #rg_la_juste_recette_mod switch.data matches 3 at @s run clone from minecraft:overworld 62 ~ -8000 83 ~ -7876 to switch:game 62 ~0 -8000 strict replace force

execute if score #rg_la_juste_recette_mod switch.data matches 4 at @s in switch:game run particle cloud 93 ~0.5 -7938 10 0 31 0 250 force
execute if score #rg_la_juste_recette_mod switch.data matches 4 at @s run clone from minecraft:overworld 83 ~ -8000 103 ~ -7876 to switch:game 83 ~0 -8000 strict replace force

execute if score #rg_la_juste_recette_mod switch.data matches 5 at @s in switch:game run particle cloud 113 ~0.5 -7938 10 0 31 0 250 force
execute if score #rg_la_juste_recette_mod switch.data matches 5 at @s run clone from minecraft:overworld 103 ~ -8000 124 ~ -7876 to switch:game 103 ~0 -8000 strict replace force

scoreboard players add #rg_la_juste_recette_mod switch.data 1
execute if score #rg_la_juste_recette_mod switch.data matches 6 in switch:game run kill @e[type=item,x=62,y=100,z=-7938,distance=..1000]
execute if score #rg_la_juste_recette_mod switch.data matches 6 run scoreboard players add #rg_la_juste_recette_y switch.data 1
execute if score #rg_la_juste_recette_mod switch.data matches 6 run scoreboard players set #rg_la_juste_recette_mod switch.data 0

kill @s

