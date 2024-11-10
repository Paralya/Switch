
#> switch:maps/survival/sheepwars_colored_sheeps/regeneration_on_marker
#
# @within	switch:maps/survival/sheepwars_colored_sheeps/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_sheepwars_colored_sheeps_y switch.data

execute if score #rg_sheepwars_colored_sheeps_mod switch.data matches 0 at @s in switch:game run particle cloud 154010 ~100.5 154053 10 0 26 0 250 force
execute if score #rg_sheepwars_colored_sheeps_mod switch.data matches 0 at @s run clone from minecraft:overworld 154000 ~ 154000 154021 ~ 154106 to switch:game 154000 ~100 154000 replace force

execute if score #rg_sheepwars_colored_sheeps_mod switch.data matches 1 at @s in switch:game run particle cloud 154032 ~100.5 154053 11 0 26 0 250 force
execute if score #rg_sheepwars_colored_sheeps_mod switch.data matches 1 at @s run clone from minecraft:overworld 154021 ~ 154000 154043 ~ 154106 to switch:game 154021 ~100 154000 replace force

execute if score #rg_sheepwars_colored_sheeps_mod switch.data matches 2 at @s in switch:game run particle cloud 154053 ~100.5 154053 10 0 26 0 250 force
execute if score #rg_sheepwars_colored_sheeps_mod switch.data matches 2 at @s run clone from minecraft:overworld 154043 ~ 154000 154064 ~ 154106 to switch:game 154043 ~100 154000 replace force

execute if score #rg_sheepwars_colored_sheeps_mod switch.data matches 3 at @s in switch:game run particle cloud 154075 ~100.5 154053 11 0 26 0 250 force
execute if score #rg_sheepwars_colored_sheeps_mod switch.data matches 3 at @s run clone from minecraft:overworld 154064 ~ 154000 154086 ~ 154106 to switch:game 154064 ~100 154000 replace force

execute if score #rg_sheepwars_colored_sheeps_mod switch.data matches 4 at @s in switch:game run particle cloud 154096 ~100.5 154053 10 0 26 0 250 force
execute if score #rg_sheepwars_colored_sheeps_mod switch.data matches 4 at @s run clone from minecraft:overworld 154086 ~ 154000 154107 ~ 154106 to switch:game 154086 ~100 154000 replace force

scoreboard players add #rg_sheepwars_colored_sheeps_mod switch.data 1
execute if score #rg_sheepwars_colored_sheeps_mod switch.data matches 5 in switch:game run kill @e[type=item,x=154053,y=0,z=154053,distance=..1000]
execute if score #rg_sheepwars_colored_sheeps_mod switch.data matches 5 run scoreboard players add #rg_sheepwars_colored_sheeps_y switch.data 1
execute if score #rg_sheepwars_colored_sheeps_mod switch.data matches 5 run scoreboard players set #rg_sheepwars_colored_sheeps_mod switch.data 0

kill @s

