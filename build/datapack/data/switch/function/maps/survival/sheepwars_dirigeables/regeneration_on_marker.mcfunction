
#> switch:maps/survival/sheepwars_dirigeables/regeneration_on_marker
#
# @within	switch:maps/survival/sheepwars_dirigeables/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_sheepwars_dirigeables_y switch.data

execute if score #rg_sheepwars_dirigeables_mod switch.data matches 0 at @s in switch:game run particle cloud 100010 ~0.5 100051 10 0 25 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 0 at @s run clone from minecraft:overworld 100000 ~ 100000 100021 ~ 100103 to switch:game 100000 ~0 100000 strict replace force

execute if score #rg_sheepwars_dirigeables_mod switch.data matches 1 at @s in switch:game run particle cloud 100032 ~0.5 100051 11 0 25 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 1 at @s run clone from minecraft:overworld 100021 ~ 100000 100043 ~ 100103 to switch:game 100021 ~0 100000 strict replace force

execute if score #rg_sheepwars_dirigeables_mod switch.data matches 2 at @s in switch:game run particle cloud 100053 ~0.5 100051 10 0 25 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 2 at @s run clone from minecraft:overworld 100043 ~ 100000 100064 ~ 100103 to switch:game 100043 ~0 100000 strict replace force

execute if score #rg_sheepwars_dirigeables_mod switch.data matches 3 at @s in switch:game run particle cloud 100075 ~0.5 100051 11 0 25 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 3 at @s run clone from minecraft:overworld 100064 ~ 100000 100086 ~ 100103 to switch:game 100064 ~0 100000 strict replace force

execute if score #rg_sheepwars_dirigeables_mod switch.data matches 4 at @s in switch:game run particle cloud 100096 ~0.5 100051 10 0 25 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 4 at @s run clone from minecraft:overworld 100086 ~ 100000 100107 ~ 100103 to switch:game 100086 ~0 100000 strict replace force

scoreboard players add #rg_sheepwars_dirigeables_mod switch.data 1
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 5 in switch:game run kill @e[type=item,x=100053,y=100,z=100051,distance=..1000]
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 5 run scoreboard players add #rg_sheepwars_dirigeables_y switch.data 1
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 5 run scoreboard players set #rg_sheepwars_dirigeables_mod switch.data 0

kill @s

