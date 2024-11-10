
#> switch:maps/survival/sheepwars_bonbons/regeneration_on_marker
#
# @within	switch:maps/survival/sheepwars_bonbons/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_sheepwars_bonbons_y switch.data

execute if score #rg_sheepwars_bonbons_mod switch.data matches 0 at @s in switch:game run particle cloud 143010 ~100.5 143057 10 0 28 0 250 force
execute if score #rg_sheepwars_bonbons_mod switch.data matches 0 at @s run clone from minecraft:overworld 143000 ~ 143000 143021 ~ 143114 to switch:game 143000 ~100 143000 replace force

execute if score #rg_sheepwars_bonbons_mod switch.data matches 1 at @s in switch:game run particle cloud 143031 ~100.5 143057 10 0 28 0 250 force
execute if score #rg_sheepwars_bonbons_mod switch.data matches 1 at @s run clone from minecraft:overworld 143021 ~ 143000 143042 ~ 143114 to switch:game 143021 ~100 143000 replace force

execute if score #rg_sheepwars_bonbons_mod switch.data matches 2 at @s in switch:game run particle cloud 143052 ~100.5 143057 10 0 28 0 250 force
execute if score #rg_sheepwars_bonbons_mod switch.data matches 2 at @s run clone from minecraft:overworld 143042 ~ 143000 143062 ~ 143114 to switch:game 143042 ~100 143000 replace force

execute if score #rg_sheepwars_bonbons_mod switch.data matches 3 at @s in switch:game run particle cloud 143072 ~100.5 143057 10 0 28 0 250 force
execute if score #rg_sheepwars_bonbons_mod switch.data matches 3 at @s run clone from minecraft:overworld 143062 ~ 143000 143083 ~ 143114 to switch:game 143062 ~100 143000 replace force

scoreboard players add #rg_sheepwars_bonbons_mod switch.data 1
execute if score #rg_sheepwars_bonbons_mod switch.data matches 4 in switch:game run kill @e[type=item,x=143041,y=0,z=143057,distance=..1000]
execute if score #rg_sheepwars_bonbons_mod switch.data matches 4 run scoreboard players add #rg_sheepwars_bonbons_y switch.data 1
execute if score #rg_sheepwars_bonbons_mod switch.data matches 4 run scoreboard players set #rg_sheepwars_bonbons_mod switch.data 0

kill @s

