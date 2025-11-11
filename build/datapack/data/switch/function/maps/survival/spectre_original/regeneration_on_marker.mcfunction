
#> switch:maps/survival/spectre_original/regeneration_on_marker
#
# @within	switch:maps/survival/spectre_original/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_spectre_original_y switch.data

execute if score #rg_spectre_original_mod switch.data matches 0 at @s in switch:game run particle cloud 2511 ~0.5 2547 11 0 23 0 250 force
execute if score #rg_spectre_original_mod switch.data matches 0 at @s run clone from minecraft:overworld 2500 ~ 2500 2522 ~ 2595 to switch:game 2500 ~0 2500 strict replace force

execute if score #rg_spectre_original_mod switch.data matches 1 at @s in switch:game run particle cloud 2532 ~0.5 2547 10 0 23 0 250 force
execute if score #rg_spectre_original_mod switch.data matches 1 at @s run clone from minecraft:overworld 2522 ~ 2500 2543 ~ 2595 to switch:game 2522 ~0 2500 strict replace force

execute if score #rg_spectre_original_mod switch.data matches 2 at @s in switch:game run particle cloud 2553 ~0.5 2547 10 0 23 0 250 force
execute if score #rg_spectre_original_mod switch.data matches 2 at @s run clone from minecraft:overworld 2543 ~ 2500 2564 ~ 2595 to switch:game 2543 ~0 2500 strict replace force

execute if score #rg_spectre_original_mod switch.data matches 3 at @s in switch:game run particle cloud 2575 ~0.5 2547 11 0 23 0 250 force
execute if score #rg_spectre_original_mod switch.data matches 3 at @s run clone from minecraft:overworld 2564 ~ 2500 2586 ~ 2595 to switch:game 2564 ~0 2500 strict replace force

scoreboard players add #rg_spectre_original_mod switch.data 1
execute if score #rg_spectre_original_mod switch.data matches 4 in switch:game run kill @e[type=item,x=2543,y=100,z=2547,distance=..1000]
execute if score #rg_spectre_original_mod switch.data matches 4 run scoreboard players add #rg_spectre_original_y switch.data 1
execute if score #rg_spectre_original_mod switch.data matches 4 run scoreboard players set #rg_spectre_original_mod switch.data 0

kill @s

