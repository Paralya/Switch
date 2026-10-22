
#> switch:maps/survival/sheepwars_colored_sheeps/regeneration_on_marker
#
# @within	switch:maps/survival/sheepwars_colored_sheeps/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_sheepwars_colored_sheeps_y switch.data

execute if score #rg_sheepwars_colored_sheeps_mod switch.data matches 0 at @s in switch:game run particle cloud -3990 ~0.5 -11947 10 0 26 0 250 force
execute if score #rg_sheepwars_colored_sheeps_mod switch.data matches 0 at @s run clone from minecraft:overworld -4000 ~ -12000 -3979 ~ -11894 to switch:game -4000 ~0 -12000 strict replace force

execute if score #rg_sheepwars_colored_sheeps_mod switch.data matches 1 at @s in switch:game run particle cloud -3968 ~0.5 -11947 11 0 26 0 250 force
execute if score #rg_sheepwars_colored_sheeps_mod switch.data matches 1 at @s run clone from minecraft:overworld -3979 ~ -12000 -3957 ~ -11894 to switch:game -3979 ~0 -12000 strict replace force

execute if score #rg_sheepwars_colored_sheeps_mod switch.data matches 2 at @s in switch:game run particle cloud -3947 ~0.5 -11947 10 0 26 0 250 force
execute if score #rg_sheepwars_colored_sheeps_mod switch.data matches 2 at @s run clone from minecraft:overworld -3957 ~ -12000 -3936 ~ -11894 to switch:game -3957 ~0 -12000 strict replace force

execute if score #rg_sheepwars_colored_sheeps_mod switch.data matches 3 at @s in switch:game run particle cloud -3925 ~0.5 -11947 11 0 26 0 250 force
execute if score #rg_sheepwars_colored_sheeps_mod switch.data matches 3 at @s run clone from minecraft:overworld -3936 ~ -12000 -3914 ~ -11894 to switch:game -3936 ~0 -12000 strict replace force

execute if score #rg_sheepwars_colored_sheeps_mod switch.data matches 4 at @s in switch:game run particle cloud -3904 ~0.5 -11947 10 0 26 0 250 force
execute if score #rg_sheepwars_colored_sheeps_mod switch.data matches 4 at @s run clone from minecraft:overworld -3914 ~ -12000 -3893 ~ -11894 to switch:game -3914 ~0 -12000 strict replace force

scoreboard players add #rg_sheepwars_colored_sheeps_mod switch.data 1
execute if score #rg_sheepwars_colored_sheeps_mod switch.data matches 5 in switch:game run kill @e[type=item,x=-3946,y=100,z=-11947,distance=..1000]
execute if score #rg_sheepwars_colored_sheeps_mod switch.data matches 5 run scoreboard players add #rg_sheepwars_colored_sheeps_y switch.data 1
execute if score #rg_sheepwars_colored_sheeps_mod switch.data matches 5 run scoreboard players set #rg_sheepwars_colored_sheeps_mod switch.data 0

kill @s

