
#> switch:maps/survival/elza_dual_biomes/regeneration_on_marker
#
# @within	switch:maps/survival/elza_dual_biomes/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_elza_dual_biomes_y switch.data

execute if score #rg_elza_dual_biomes_mod switch.data matches 0 at @s in switch:game run particle cloud 155010 ~100.5 155021 10 0 10 0 250 force
execute if score #rg_elza_dual_biomes_mod switch.data matches 0 at @s run clone from minecraft:overworld 155000 ~ 155000 155021 ~ 155042 to switch:game 155000 ~100 155000 replace force

execute if score #rg_elza_dual_biomes_mod switch.data matches 1 at @s in switch:game run particle cloud 155031 ~100.5 155021 10 0 10 0 250 force
execute if score #rg_elza_dual_biomes_mod switch.data matches 1 at @s run clone from minecraft:overworld 155021 ~ 155000 155042 ~ 155042 to switch:game 155021 ~100 155000 replace force

scoreboard players add #rg_elza_dual_biomes_mod switch.data 1
execute if score #rg_elza_dual_biomes_mod switch.data matches 2 in switch:game run kill @e[type=item,x=155021,y=0,z=155021,distance=..1000]
execute if score #rg_elza_dual_biomes_mod switch.data matches 2 run scoreboard players add #rg_elza_dual_biomes_y switch.data 1
execute if score #rg_elza_dual_biomes_mod switch.data matches 2 run scoreboard players set #rg_elza_dual_biomes_mod switch.data 0

kill @s

