
#> switch:maps/survival/sheepwars_bonbons/regeneration_on_marker
#
# @within	switch:maps/survival/sheepwars_bonbons/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_sheepwars_bonbons_y switch.data

execute if score #rg_sheepwars_bonbons_mod switch.data matches 0 at @s in switch:game run particle cloud -9990 ~0.5 2057 10 0 28 0 250 force
execute if score #rg_sheepwars_bonbons_mod switch.data matches 0 at @s run clone from minecraft:overworld -10000 ~ 2000 -9979 ~ 2114 to switch:game -10000 ~0 2000 strict replace force

execute if score #rg_sheepwars_bonbons_mod switch.data matches 1 at @s in switch:game run particle cloud -9969 ~0.5 2057 10 0 28 0 250 force
execute if score #rg_sheepwars_bonbons_mod switch.data matches 1 at @s run clone from minecraft:overworld -9979 ~ 2000 -9958 ~ 2114 to switch:game -9979 ~0 2000 strict replace force

execute if score #rg_sheepwars_bonbons_mod switch.data matches 2 at @s in switch:game run particle cloud -9948 ~0.5 2057 10 0 28 0 250 force
execute if score #rg_sheepwars_bonbons_mod switch.data matches 2 at @s run clone from minecraft:overworld -9958 ~ 2000 -9938 ~ 2114 to switch:game -9958 ~0 2000 strict replace force

execute if score #rg_sheepwars_bonbons_mod switch.data matches 3 at @s in switch:game run particle cloud -9928 ~0.5 2057 10 0 28 0 250 force
execute if score #rg_sheepwars_bonbons_mod switch.data matches 3 at @s run clone from minecraft:overworld -9938 ~ 2000 -9917 ~ 2114 to switch:game -9938 ~0 2000 strict replace force

scoreboard players add #rg_sheepwars_bonbons_mod switch.data 1
execute if score #rg_sheepwars_bonbons_mod switch.data matches 4 in switch:game run kill @e[type=item,x=-9958,y=100,z=2057,distance=..1000]
execute if score #rg_sheepwars_bonbons_mod switch.data matches 4 run scoreboard players add #rg_sheepwars_bonbons_y switch.data 1
execute if score #rg_sheepwars_bonbons_mod switch.data matches 4 run scoreboard players set #rg_sheepwars_bonbons_mod switch.data 0

kill @s

