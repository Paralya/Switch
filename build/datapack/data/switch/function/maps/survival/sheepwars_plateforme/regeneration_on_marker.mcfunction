
#> switch:maps/survival/sheepwars_plateforme/regeneration_on_marker
#
# @within	switch:maps/survival/sheepwars_plateforme/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_sheepwars_plateforme_y switch.data

execute if score #rg_sheepwars_plateforme_mod switch.data matches 0 at @s in switch:game run particle cloud -9987 ~0.5 37 13 0 18 0 250 force
execute if score #rg_sheepwars_plateforme_mod switch.data matches 0 at @s run clone from minecraft:overworld -10000 ~ 0 -9974 ~ 75 to switch:game -10000 ~0 0 strict replace force

execute if score #rg_sheepwars_plateforme_mod switch.data matches 1 at @s in switch:game run particle cloud -9961 ~0.5 37 13 0 18 0 250 force
execute if score #rg_sheepwars_plateforme_mod switch.data matches 1 at @s run clone from minecraft:overworld -9974 ~ 0 -9947 ~ 75 to switch:game -9974 ~0 0 strict replace force

execute if score #rg_sheepwars_plateforme_mod switch.data matches 2 at @s in switch:game run particle cloud -9934 ~0.5 37 13 0 18 0 250 force
execute if score #rg_sheepwars_plateforme_mod switch.data matches 2 at @s run clone from minecraft:overworld -9947 ~ 0 -9921 ~ 75 to switch:game -9947 ~0 0 strict replace force

scoreboard players add #rg_sheepwars_plateforme_mod switch.data 1
execute if score #rg_sheepwars_plateforme_mod switch.data matches 3 in switch:game run kill @e[type=item,x=-9960,y=100,z=37,distance=..1000]
execute if score #rg_sheepwars_plateforme_mod switch.data matches 3 run scoreboard players add #rg_sheepwars_plateforme_y switch.data 1
execute if score #rg_sheepwars_plateforme_mod switch.data matches 3 run scoreboard players set #rg_sheepwars_plateforme_mod switch.data 0

kill @s

