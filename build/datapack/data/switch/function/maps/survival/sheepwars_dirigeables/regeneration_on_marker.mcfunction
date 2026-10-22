
#> switch:maps/survival/sheepwars_dirigeables/regeneration_on_marker
#
# @within	switch:maps/survival/sheepwars_dirigeables/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_sheepwars_dirigeables_y switch.data

execute if score #rg_sheepwars_dirigeables_mod switch.data matches 0 at @s in switch:game run particle cloud -9990 ~0.5 -7949 10 0 25 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 0 at @s run clone from minecraft:overworld -10000 ~ -8000 -9979 ~ -7897 to switch:game -10000 ~0 -8000 strict replace force

execute if score #rg_sheepwars_dirigeables_mod switch.data matches 1 at @s in switch:game run particle cloud -9968 ~0.5 -7949 11 0 25 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 1 at @s run clone from minecraft:overworld -9979 ~ -8000 -9957 ~ -7897 to switch:game -9979 ~0 -8000 strict replace force

execute if score #rg_sheepwars_dirigeables_mod switch.data matches 2 at @s in switch:game run particle cloud -9947 ~0.5 -7949 10 0 25 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 2 at @s run clone from minecraft:overworld -9957 ~ -8000 -9936 ~ -7897 to switch:game -9957 ~0 -8000 strict replace force

execute if score #rg_sheepwars_dirigeables_mod switch.data matches 3 at @s in switch:game run particle cloud -9925 ~0.5 -7949 11 0 25 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 3 at @s run clone from minecraft:overworld -9936 ~ -8000 -9914 ~ -7897 to switch:game -9936 ~0 -8000 strict replace force

execute if score #rg_sheepwars_dirigeables_mod switch.data matches 4 at @s in switch:game run particle cloud -9904 ~0.5 -7949 10 0 25 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 4 at @s run clone from minecraft:overworld -9914 ~ -8000 -9893 ~ -7897 to switch:game -9914 ~0 -8000 strict replace force

scoreboard players add #rg_sheepwars_dirigeables_mod switch.data 1
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 5 in switch:game run kill @e[type=item,x=-9946,y=100,z=-7948,distance=..1000]
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 5 run scoreboard players add #rg_sheepwars_dirigeables_y switch.data 1
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 5 run scoreboard players set #rg_sheepwars_dirigeables_mod switch.data 0

kill @s

