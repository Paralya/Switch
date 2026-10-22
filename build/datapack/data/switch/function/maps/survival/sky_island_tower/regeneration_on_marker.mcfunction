
#> switch:maps/survival/sky_island_tower/regeneration_on_marker
#
# @within	switch:maps/survival/sky_island_tower/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_sky_island_tower_y switch.data

execute if score #rg_sky_island_tower_mod switch.data matches 0 at @s in switch:game run particle cloud -7988 ~0.5 8047 12 0 23 0 250 force
execute if score #rg_sky_island_tower_mod switch.data matches 0 at @s run clone from minecraft:overworld -8000 ~ 8000 -7976 ~ 8094 to switch:game -8000 ~0 8000 strict replace force

execute if score #rg_sky_island_tower_mod switch.data matches 1 at @s in switch:game run particle cloud -7964 ~0.5 8047 12 0 23 0 250 force
execute if score #rg_sky_island_tower_mod switch.data matches 1 at @s run clone from minecraft:overworld -7976 ~ 8000 -7952 ~ 8094 to switch:game -7976 ~0 8000 strict replace force

execute if score #rg_sky_island_tower_mod switch.data matches 2 at @s in switch:game run particle cloud -7940 ~0.5 8047 12 0 23 0 250 force
execute if score #rg_sky_island_tower_mod switch.data matches 2 at @s run clone from minecraft:overworld -7952 ~ 8000 -7927 ~ 8094 to switch:game -7952 ~0 8000 strict replace force

execute if score #rg_sky_island_tower_mod switch.data matches 3 at @s in switch:game run particle cloud -7915 ~0.5 8047 12 0 23 0 250 force
execute if score #rg_sky_island_tower_mod switch.data matches 3 at @s run clone from minecraft:overworld -7927 ~ 8000 -7903 ~ 8094 to switch:game -7927 ~0 8000 strict replace force

scoreboard players add #rg_sky_island_tower_mod switch.data 1
execute if score #rg_sky_island_tower_mod switch.data matches 4 in switch:game run kill @e[type=item,x=-7951,y=100,z=8047,distance=..1000]
execute if score #rg_sky_island_tower_mod switch.data matches 4 run scoreboard players add #rg_sky_island_tower_y switch.data 1
execute if score #rg_sky_island_tower_mod switch.data matches 4 run scoreboard players set #rg_sky_island_tower_mod switch.data 0

kill @s

