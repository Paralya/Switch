
#> switch:maps/survival/the_four_elements/regeneration_on_marker
#
# @within	switch:maps/survival/the_four_elements/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_the_four_elements_y switch.data

execute if score #rg_the_four_elements_mod switch.data matches 0 at @s in switch:game run particle cloud 115010 ~0.5 115050 10 0 25 0 250 force
execute if score #rg_the_four_elements_mod switch.data matches 0 at @s run clone from minecraft:overworld 115000 ~ 115000 115020 ~ 115101 to switch:game 115000 ~0 115000 strict replace force

execute if score #rg_the_four_elements_mod switch.data matches 1 at @s in switch:game run particle cloud 115030 ~0.5 115050 10 0 25 0 250 force
execute if score #rg_the_four_elements_mod switch.data matches 1 at @s run clone from minecraft:overworld 115020 ~ 115000 115040 ~ 115101 to switch:game 115020 ~0 115000 strict replace force

execute if score #rg_the_four_elements_mod switch.data matches 2 at @s in switch:game run particle cloud 115050 ~0.5 115050 10 0 25 0 250 force
execute if score #rg_the_four_elements_mod switch.data matches 2 at @s run clone from minecraft:overworld 115040 ~ 115000 115061 ~ 115101 to switch:game 115040 ~0 115000 strict replace force

execute if score #rg_the_four_elements_mod switch.data matches 3 at @s in switch:game run particle cloud 115071 ~0.5 115050 10 0 25 0 250 force
execute if score #rg_the_four_elements_mod switch.data matches 3 at @s run clone from minecraft:overworld 115061 ~ 115000 115081 ~ 115101 to switch:game 115061 ~0 115000 strict replace force

execute if score #rg_the_four_elements_mod switch.data matches 4 at @s in switch:game run particle cloud 115091 ~0.5 115050 10 0 25 0 250 force
execute if score #rg_the_four_elements_mod switch.data matches 4 at @s run clone from minecraft:overworld 115081 ~ 115000 115101 ~ 115101 to switch:game 115081 ~0 115000 strict replace force

scoreboard players add #rg_the_four_elements_mod switch.data 1
execute if score #rg_the_four_elements_mod switch.data matches 5 in switch:game run kill @e[type=item,x=115050,y=100,z=115050,distance=..1000]
execute if score #rg_the_four_elements_mod switch.data matches 5 run scoreboard players add #rg_the_four_elements_y switch.data 1
execute if score #rg_the_four_elements_mod switch.data matches 5 run scoreboard players set #rg_the_four_elements_mod switch.data 0

kill @s

