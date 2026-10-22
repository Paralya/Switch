
#> switch:maps/survival/boat_race_2/regeneration_on_marker
#
# @within	switch:maps/survival/boat_race_2/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_boat_race_2_y switch.data

execute if score #rg_boat_race_2_mod switch.data matches 0 at @s in switch:game run particle cloud -7990 ~0.5 -5939 10 0 30 0 250 force
execute if score #rg_boat_race_2_mod switch.data matches 0 at @s run clone from minecraft:overworld -8000 ~ -6000 -7980 ~ -5877 to switch:game -8000 ~0 -6000 strict replace force

execute if score #rg_boat_race_2_mod switch.data matches 1 at @s in switch:game run particle cloud -7970 ~0.5 -5939 10 0 30 0 250 force
execute if score #rg_boat_race_2_mod switch.data matches 1 at @s run clone from minecraft:overworld -7980 ~ -6000 -7960 ~ -5877 to switch:game -7980 ~0 -6000 strict replace force

execute if score #rg_boat_race_2_mod switch.data matches 2 at @s in switch:game run particle cloud -7951 ~0.5 -5939 9 0 30 0 250 force
execute if score #rg_boat_race_2_mod switch.data matches 2 at @s run clone from minecraft:overworld -7960 ~ -6000 -7941 ~ -5877 to switch:game -7960 ~0 -6000 strict replace force

execute if score #rg_boat_race_2_mod switch.data matches 3 at @s in switch:game run particle cloud -7931 ~0.5 -5939 10 0 30 0 250 force
execute if score #rg_boat_race_2_mod switch.data matches 3 at @s run clone from minecraft:overworld -7941 ~ -6000 -7921 ~ -5877 to switch:game -7941 ~0 -6000 strict replace force

execute if score #rg_boat_race_2_mod switch.data matches 4 at @s in switch:game run particle cloud -7911 ~0.5 -5939 10 0 30 0 250 force
execute if score #rg_boat_race_2_mod switch.data matches 4 at @s run clone from minecraft:overworld -7921 ~ -6000 -7901 ~ -5877 to switch:game -7921 ~0 -6000 strict replace force

scoreboard players add #rg_boat_race_2_mod switch.data 1
execute if score #rg_boat_race_2_mod switch.data matches 5 in switch:game run kill @e[type=item,x=-7950,y=100,z=-5938,distance=..1000]
execute if score #rg_boat_race_2_mod switch.data matches 5 run scoreboard players add #rg_boat_race_2_y switch.data 1
execute if score #rg_boat_race_2_mod switch.data matches 5 run scoreboard players set #rg_boat_race_2_mod switch.data 0

kill @s

