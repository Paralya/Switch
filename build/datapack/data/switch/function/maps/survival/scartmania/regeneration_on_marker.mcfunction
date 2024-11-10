
#> switch:maps/survival/scartmania/regeneration_on_marker
#
# @within	switch:maps/survival/scartmania/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_scartmania_y switch.data

execute if score #rg_scartmania_mod switch.data matches 0 at @s in switch:game run particle cloud 58007 ~100.5 58094 7 0 47 0 250 force
execute if score #rg_scartmania_mod switch.data matches 0 at @s run clone from minecraft:overworld 58000 ~ 58000 58015 ~ 58188 to switch:game 58000 ~100 58000 replace force

execute if score #rg_scartmania_mod switch.data matches 1 at @s in switch:game run particle cloud 58022 ~100.5 58094 7 0 47 0 250 force
execute if score #rg_scartmania_mod switch.data matches 1 at @s run clone from minecraft:overworld 58015 ~ 58000 58029 ~ 58188 to switch:game 58015 ~100 58000 replace force

execute if score #rg_scartmania_mod switch.data matches 2 at @s in switch:game run particle cloud 58036 ~100.5 58094 7 0 47 0 250 force
execute if score #rg_scartmania_mod switch.data matches 2 at @s run clone from minecraft:overworld 58029 ~ 58000 58044 ~ 58188 to switch:game 58029 ~100 58000 replace force

execute if score #rg_scartmania_mod switch.data matches 3 at @s in switch:game run particle cloud 58051 ~100.5 58094 7 0 47 0 250 force
execute if score #rg_scartmania_mod switch.data matches 3 at @s run clone from minecraft:overworld 58044 ~ 58000 58058 ~ 58188 to switch:game 58044 ~100 58000 replace force

execute if score #rg_scartmania_mod switch.data matches 4 at @s in switch:game run particle cloud 58065 ~100.5 58094 7 0 47 0 250 force
execute if score #rg_scartmania_mod switch.data matches 4 at @s run clone from minecraft:overworld 58058 ~ 58000 58073 ~ 58188 to switch:game 58058 ~100 58000 replace force

execute if score #rg_scartmania_mod switch.data matches 5 at @s in switch:game run particle cloud 58080 ~100.5 58094 7 0 47 0 250 force
execute if score #rg_scartmania_mod switch.data matches 5 at @s run clone from minecraft:overworld 58073 ~ 58000 58087 ~ 58188 to switch:game 58073 ~100 58000 replace force

execute if score #rg_scartmania_mod switch.data matches 6 at @s in switch:game run particle cloud 58094 ~100.5 58094 7 0 47 0 250 force
execute if score #rg_scartmania_mod switch.data matches 6 at @s run clone from minecraft:overworld 58087 ~ 58000 58102 ~ 58188 to switch:game 58087 ~100 58000 replace force

execute if score #rg_scartmania_mod switch.data matches 7 at @s in switch:game run particle cloud 58109 ~100.5 58094 7 0 47 0 250 force
execute if score #rg_scartmania_mod switch.data matches 7 at @s run clone from minecraft:overworld 58102 ~ 58000 58116 ~ 58188 to switch:game 58102 ~100 58000 replace force

execute if score #rg_scartmania_mod switch.data matches 8 at @s in switch:game run particle cloud 58123 ~100.5 58094 7 0 47 0 250 force
execute if score #rg_scartmania_mod switch.data matches 8 at @s run clone from minecraft:overworld 58116 ~ 58000 58131 ~ 58188 to switch:game 58116 ~100 58000 replace force

execute if score #rg_scartmania_mod switch.data matches 9 at @s in switch:game run particle cloud 58138 ~100.5 58094 7 0 47 0 250 force
execute if score #rg_scartmania_mod switch.data matches 9 at @s run clone from minecraft:overworld 58131 ~ 58000 58145 ~ 58188 to switch:game 58131 ~100 58000 replace force

execute if score #rg_scartmania_mod switch.data matches 10 at @s in switch:game run particle cloud 58152 ~100.5 58094 7 0 47 0 250 force
execute if score #rg_scartmania_mod switch.data matches 10 at @s run clone from minecraft:overworld 58145 ~ 58000 58160 ~ 58188 to switch:game 58145 ~100 58000 replace force

scoreboard players add #rg_scartmania_mod switch.data 1
execute if score #rg_scartmania_mod switch.data matches 11 in switch:game run kill @e[type=item,x=58080,y=0,z=58094,distance=..1000]
execute if score #rg_scartmania_mod switch.data matches 11 run scoreboard players add #rg_scartmania_y switch.data 1
execute if score #rg_scartmania_mod switch.data matches 11 run scoreboard players set #rg_scartmania_mod switch.data 0

kill @s

