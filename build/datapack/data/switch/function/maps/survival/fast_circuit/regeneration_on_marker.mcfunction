
#> switch:maps/survival/fast_circuit/regeneration_on_marker
#
# @within	switch:maps/survival/fast_circuit/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_fast_circuit_y switch.data

execute if score #rg_fast_circuit_mod switch.data matches 0 at @s in switch:game run particle cloud 6723 ~0.5 -5790 7 0 32 0 250 force
execute if score #rg_fast_circuit_mod switch.data matches 0 at @s run clone from minecraft:overworld 6716 ~ -5854 6731 ~ -5726 to switch:game 6716 ~0 -5854 strict replace force

execute if score #rg_fast_circuit_mod switch.data matches 1 at @s in switch:game run particle cloud 6739 ~0.5 -5790 8 0 32 0 250 force
execute if score #rg_fast_circuit_mod switch.data matches 1 at @s run clone from minecraft:overworld 6731 ~ -5854 6747 ~ -5726 to switch:game 6731 ~0 -5854 strict replace force

execute if score #rg_fast_circuit_mod switch.data matches 2 at @s in switch:game run particle cloud 6754 ~0.5 -5790 7 0 32 0 250 force
execute if score #rg_fast_circuit_mod switch.data matches 2 at @s run clone from minecraft:overworld 6747 ~ -5854 6762 ~ -5726 to switch:game 6747 ~0 -5854 strict replace force

execute if score #rg_fast_circuit_mod switch.data matches 3 at @s in switch:game run particle cloud 6770 ~0.5 -5790 8 0 32 0 250 force
execute if score #rg_fast_circuit_mod switch.data matches 3 at @s run clone from minecraft:overworld 6762 ~ -5854 6778 ~ -5726 to switch:game 6762 ~0 -5854 strict replace force

execute if score #rg_fast_circuit_mod switch.data matches 4 at @s in switch:game run particle cloud 6785 ~0.5 -5790 7 0 32 0 250 force
execute if score #rg_fast_circuit_mod switch.data matches 4 at @s run clone from minecraft:overworld 6778 ~ -5854 6793 ~ -5726 to switch:game 6778 ~0 -5854 strict replace force

scoreboard players add #rg_fast_circuit_mod switch.data 1
execute if score #rg_fast_circuit_mod switch.data matches 5 in switch:game run kill @e[type=item,x=6754,y=85,z=-5790,distance=..1000]
execute if score #rg_fast_circuit_mod switch.data matches 5 run scoreboard players add #rg_fast_circuit_y switch.data 1
execute if score #rg_fast_circuit_mod switch.data matches 5 run scoreboard players set #rg_fast_circuit_mod switch.data 0

kill @s

