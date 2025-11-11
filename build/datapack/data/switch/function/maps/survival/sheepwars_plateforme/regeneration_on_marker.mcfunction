
#> switch:maps/survival/sheepwars_plateforme/regeneration_on_marker
#
# @within	switch:maps/survival/sheepwars_plateforme/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_sheepwars_plateforme_y switch.data

execute if score #rg_sheepwars_plateforme_mod switch.data matches 0 at @s in switch:game run particle cloud 144013 ~0.5 144037 13 0 18 0 250 force
execute if score #rg_sheepwars_plateforme_mod switch.data matches 0 at @s run clone from minecraft:overworld 144000 ~ 144000 144026 ~ 144075 to switch:game 144000 ~0 144000 strict replace force

execute if score #rg_sheepwars_plateforme_mod switch.data matches 1 at @s in switch:game run particle cloud 144039 ~0.5 144037 13 0 18 0 250 force
execute if score #rg_sheepwars_plateforme_mod switch.data matches 1 at @s run clone from minecraft:overworld 144026 ~ 144000 144053 ~ 144075 to switch:game 144026 ~0 144000 strict replace force

execute if score #rg_sheepwars_plateforme_mod switch.data matches 2 at @s in switch:game run particle cloud 144066 ~0.5 144037 13 0 18 0 250 force
execute if score #rg_sheepwars_plateforme_mod switch.data matches 2 at @s run clone from minecraft:overworld 144053 ~ 144000 144079 ~ 144075 to switch:game 144053 ~0 144000 strict replace force

scoreboard players add #rg_sheepwars_plateforme_mod switch.data 1
execute if score #rg_sheepwars_plateforme_mod switch.data matches 3 in switch:game run kill @e[type=item,x=144039,y=100,z=144037,distance=..1000]
execute if score #rg_sheepwars_plateforme_mod switch.data matches 3 run scoreboard players add #rg_sheepwars_plateforme_y switch.data 1
execute if score #rg_sheepwars_plateforme_mod switch.data matches 3 run scoreboard players set #rg_sheepwars_plateforme_mod switch.data 0

kill @s

