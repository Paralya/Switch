
#> switch:maps/survival/even_old_japan/regeneration_on_marker
#
# @within	switch:maps/survival/even_old_japan/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_even_old_japan_y switch.data

execute if score #rg_even_old_japan_mod switch.data matches 0 at @s in switch:game run particle cloud 162010 ~100.5 162051 10 0 25 0 250 force
execute if score #rg_even_old_japan_mod switch.data matches 0 at @s run clone from minecraft:overworld 162000 ~ 162000 162020 ~ 162102 to switch:game 162000 ~100 162000 replace force

execute if score #rg_even_old_japan_mod switch.data matches 1 at @s in switch:game run particle cloud 162030 ~100.5 162051 10 0 25 0 250 force
execute if score #rg_even_old_japan_mod switch.data matches 1 at @s run clone from minecraft:overworld 162020 ~ 162000 162041 ~ 162102 to switch:game 162020 ~100 162000 replace force

execute if score #rg_even_old_japan_mod switch.data matches 2 at @s in switch:game run particle cloud 162051 ~100.5 162051 10 0 25 0 250 force
execute if score #rg_even_old_japan_mod switch.data matches 2 at @s run clone from minecraft:overworld 162041 ~ 162000 162061 ~ 162102 to switch:game 162041 ~100 162000 replace force

execute if score #rg_even_old_japan_mod switch.data matches 3 at @s in switch:game run particle cloud 162071 ~100.5 162051 10 0 25 0 250 force
execute if score #rg_even_old_japan_mod switch.data matches 3 at @s run clone from minecraft:overworld 162061 ~ 162000 162082 ~ 162102 to switch:game 162061 ~100 162000 replace force

execute if score #rg_even_old_japan_mod switch.data matches 4 at @s in switch:game run particle cloud 162092 ~100.5 162051 10 0 25 0 250 force
execute if score #rg_even_old_japan_mod switch.data matches 4 at @s run clone from minecraft:overworld 162082 ~ 162000 162102 ~ 162102 to switch:game 162082 ~100 162000 replace force

scoreboard players add #rg_even_old_japan_mod switch.data 1
execute if score #rg_even_old_japan_mod switch.data matches 5 in switch:game run kill @e[type=item,x=162051,y=0,z=162051,distance=..1000]
execute if score #rg_even_old_japan_mod switch.data matches 5 run scoreboard players add #rg_even_old_japan_y switch.data 1
execute if score #rg_even_old_japan_mod switch.data matches 5 run scoreboard players set #rg_even_old_japan_mod switch.data 0

kill @s

