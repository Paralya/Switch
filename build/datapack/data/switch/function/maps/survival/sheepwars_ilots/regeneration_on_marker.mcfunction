
#> switch:maps/survival/sheepwars_ilots/regeneration_on_marker
#
# @within	switch:maps/survival/sheepwars_ilots/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_sheepwars_ilots_y switch.data

execute if score #rg_sheepwars_ilots_mod switch.data matches 0 at @s in switch:game run particle cloud -11991 ~0.5 -1939 9 0 30 0 250 force
execute if score #rg_sheepwars_ilots_mod switch.data matches 0 at @s run clone from minecraft:overworld -12000 ~ -2000 -11982 ~ -1878 to switch:game -12000 ~0 -2000 strict replace force

execute if score #rg_sheepwars_ilots_mod switch.data matches 1 at @s in switch:game run particle cloud -11973 ~0.5 -1939 9 0 30 0 250 force
execute if score #rg_sheepwars_ilots_mod switch.data matches 1 at @s run clone from minecraft:overworld -11982 ~ -2000 -11963 ~ -1878 to switch:game -11982 ~0 -2000 strict replace force

execute if score #rg_sheepwars_ilots_mod switch.data matches 2 at @s in switch:game run particle cloud -11954 ~0.5 -1939 9 0 30 0 250 force
execute if score #rg_sheepwars_ilots_mod switch.data matches 2 at @s run clone from minecraft:overworld -11963 ~ -2000 -11945 ~ -1878 to switch:game -11963 ~0 -2000 strict replace force

execute if score #rg_sheepwars_ilots_mod switch.data matches 3 at @s in switch:game run particle cloud -11936 ~0.5 -1939 9 0 30 0 250 force
execute if score #rg_sheepwars_ilots_mod switch.data matches 3 at @s run clone from minecraft:overworld -11945 ~ -2000 -11926 ~ -1878 to switch:game -11945 ~0 -2000 strict replace force

execute if score #rg_sheepwars_ilots_mod switch.data matches 4 at @s in switch:game run particle cloud -11917 ~0.5 -1939 9 0 30 0 250 force
execute if score #rg_sheepwars_ilots_mod switch.data matches 4 at @s run clone from minecraft:overworld -11926 ~ -2000 -11908 ~ -1878 to switch:game -11926 ~0 -2000 strict replace force

scoreboard players add #rg_sheepwars_ilots_mod switch.data 1
execute if score #rg_sheepwars_ilots_mod switch.data matches 5 in switch:game run kill @e[type=item,x=-11954,y=100,z=-1939,distance=..1000]
execute if score #rg_sheepwars_ilots_mod switch.data matches 5 run scoreboard players add #rg_sheepwars_ilots_y switch.data 1
execute if score #rg_sheepwars_ilots_mod switch.data matches 5 run scoreboard players set #rg_sheepwars_ilots_mod switch.data 0

kill @s

