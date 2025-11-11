
#> switch:maps/survival/la_juste_recette/regeneration_on_marker
#
# @within	switch:maps/survival/la_juste_recette/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_la_juste_recette_y switch.data

execute if score #rg_la_juste_recette_mod switch.data matches 0 at @s in switch:game run particle cloud 57010 ~0.5 57062 10 0 31 0 250 force
execute if score #rg_la_juste_recette_mod switch.data matches 0 at @s run clone from minecraft:overworld 57000 ~ 57000 57021 ~ 57124 to switch:game 57000 ~0 57000 strict replace force

execute if score #rg_la_juste_recette_mod switch.data matches 1 at @s in switch:game run particle cloud 57031 ~0.5 57062 10 0 31 0 250 force
execute if score #rg_la_juste_recette_mod switch.data matches 1 at @s run clone from minecraft:overworld 57021 ~ 57000 57041 ~ 57124 to switch:game 57021 ~0 57000 strict replace force

execute if score #rg_la_juste_recette_mod switch.data matches 2 at @s in switch:game run particle cloud 57051 ~0.5 57062 10 0 31 0 250 force
execute if score #rg_la_juste_recette_mod switch.data matches 2 at @s run clone from minecraft:overworld 57041 ~ 57000 57062 ~ 57124 to switch:game 57041 ~0 57000 strict replace force

execute if score #rg_la_juste_recette_mod switch.data matches 3 at @s in switch:game run particle cloud 57072 ~0.5 57062 10 0 31 0 250 force
execute if score #rg_la_juste_recette_mod switch.data matches 3 at @s run clone from minecraft:overworld 57062 ~ 57000 57083 ~ 57124 to switch:game 57062 ~0 57000 strict replace force

execute if score #rg_la_juste_recette_mod switch.data matches 4 at @s in switch:game run particle cloud 57093 ~0.5 57062 10 0 31 0 250 force
execute if score #rg_la_juste_recette_mod switch.data matches 4 at @s run clone from minecraft:overworld 57083 ~ 57000 57103 ~ 57124 to switch:game 57083 ~0 57000 strict replace force

execute if score #rg_la_juste_recette_mod switch.data matches 5 at @s in switch:game run particle cloud 57113 ~0.5 57062 10 0 31 0 250 force
execute if score #rg_la_juste_recette_mod switch.data matches 5 at @s run clone from minecraft:overworld 57103 ~ 57000 57124 ~ 57124 to switch:game 57103 ~0 57000 strict replace force

scoreboard players add #rg_la_juste_recette_mod switch.data 1
execute if score #rg_la_juste_recette_mod switch.data matches 6 in switch:game run kill @e[type=item,x=57062,y=100,z=57062,distance=..1000]
execute if score #rg_la_juste_recette_mod switch.data matches 6 run scoreboard players add #rg_la_juste_recette_y switch.data 1
execute if score #rg_la_juste_recette_mod switch.data matches 6 run scoreboard players set #rg_la_juste_recette_mod switch.data 0

kill @s

