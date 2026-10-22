
#> switch:maps/survival/the_four_elements/regeneration_on_marker
#
# @within	switch:maps/survival/the_four_elements/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_the_four_elements_y switch.data

execute if score #rg_the_four_elements_mod switch.data matches 0 at @s in switch:game run particle cloud 10010 ~0.5 -7950 10 0 25 0 250 force
execute if score #rg_the_four_elements_mod switch.data matches 0 at @s run clone from minecraft:overworld 10000 ~ -8000 10020 ~ -7899 to switch:game 10000 ~0 -8000 strict replace force

execute if score #rg_the_four_elements_mod switch.data matches 1 at @s in switch:game run particle cloud 10030 ~0.5 -7950 10 0 25 0 250 force
execute if score #rg_the_four_elements_mod switch.data matches 1 at @s run clone from minecraft:overworld 10020 ~ -8000 10040 ~ -7899 to switch:game 10020 ~0 -8000 strict replace force

execute if score #rg_the_four_elements_mod switch.data matches 2 at @s in switch:game run particle cloud 10050 ~0.5 -7950 10 0 25 0 250 force
execute if score #rg_the_four_elements_mod switch.data matches 2 at @s run clone from minecraft:overworld 10040 ~ -8000 10061 ~ -7899 to switch:game 10040 ~0 -8000 strict replace force

execute if score #rg_the_four_elements_mod switch.data matches 3 at @s in switch:game run particle cloud 10071 ~0.5 -7950 10 0 25 0 250 force
execute if score #rg_the_four_elements_mod switch.data matches 3 at @s run clone from minecraft:overworld 10061 ~ -8000 10081 ~ -7899 to switch:game 10061 ~0 -8000 strict replace force

execute if score #rg_the_four_elements_mod switch.data matches 4 at @s in switch:game run particle cloud 10091 ~0.5 -7950 10 0 25 0 250 force
execute if score #rg_the_four_elements_mod switch.data matches 4 at @s run clone from minecraft:overworld 10081 ~ -8000 10101 ~ -7899 to switch:game 10081 ~0 -8000 strict replace force

scoreboard players add #rg_the_four_elements_mod switch.data 1
execute if score #rg_the_four_elements_mod switch.data matches 5 in switch:game run kill @e[type=item,x=10050,y=100,z=-7949,distance=..1000]
execute if score #rg_the_four_elements_mod switch.data matches 5 run scoreboard players add #rg_the_four_elements_y switch.data 1
execute if score #rg_the_four_elements_mod switch.data matches 5 run scoreboard players set #rg_the_four_elements_mod switch.data 0

kill @s

