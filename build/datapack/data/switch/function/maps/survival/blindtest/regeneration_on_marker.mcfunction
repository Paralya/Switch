
#> switch:maps/survival/blindtest/regeneration_on_marker
#
# @within	switch:maps/survival/blindtest/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_blindtest_y switch.data

execute if score #rg_blindtest_mod switch.data matches 0 at @s in switch:game run particle cloud 62011 ~100.5 62046 11 0 23 0 250 force
execute if score #rg_blindtest_mod switch.data matches 0 at @s run clone from minecraft:overworld 62000 ~ 62000 62022 ~ 62093 to switch:game 62000 ~100 62000 replace force

execute if score #rg_blindtest_mod switch.data matches 1 at @s in switch:game run particle cloud 62033 ~100.5 62046 11 0 23 0 250 force
execute if score #rg_blindtest_mod switch.data matches 1 at @s run clone from minecraft:overworld 62022 ~ 62000 62044 ~ 62093 to switch:game 62022 ~100 62000 replace force

execute if score #rg_blindtest_mod switch.data matches 2 at @s in switch:game run particle cloud 62055 ~100.5 62046 11 0 23 0 250 force
execute if score #rg_blindtest_mod switch.data matches 2 at @s run clone from minecraft:overworld 62044 ~ 62000 62066 ~ 62093 to switch:game 62044 ~100 62000 replace force

execute if score #rg_blindtest_mod switch.data matches 3 at @s in switch:game run particle cloud 62077 ~100.5 62046 11 0 23 0 250 force
execute if score #rg_blindtest_mod switch.data matches 3 at @s run clone from minecraft:overworld 62066 ~ 62000 62088 ~ 62093 to switch:game 62066 ~100 62000 replace force

scoreboard players add #rg_blindtest_mod switch.data 1
execute if score #rg_blindtest_mod switch.data matches 4 in switch:game run kill @e[type=item,x=62044,y=0,z=62046,distance=..1000]
execute if score #rg_blindtest_mod switch.data matches 4 run scoreboard players add #rg_blindtest_y switch.data 1
execute if score #rg_blindtest_mod switch.data matches 4 run scoreboard players set #rg_blindtest_mod switch.data 0

kill @s

