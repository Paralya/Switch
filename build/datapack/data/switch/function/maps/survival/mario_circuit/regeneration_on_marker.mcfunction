
#> switch:maps/survival/mario_circuit/regeneration_on_marker
#
# @within	switch:maps/survival/mario_circuit/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_mario_circuit_y switch.data

execute if score #rg_mario_circuit_mod switch.data matches 0 at @s in switch:game run particle cloud 6950 ~0.5 -5789 9 0 35 0 250 force
execute if score #rg_mario_circuit_mod switch.data matches 0 at @s run clone from minecraft:overworld 6941 ~ -5860 6959 ~ -5718 to switch:game 6941 ~0 -5860 strict replace force

execute if score #rg_mario_circuit_mod switch.data matches 1 at @s in switch:game run particle cloud 6968 ~0.5 -5789 9 0 35 0 250 force
execute if score #rg_mario_circuit_mod switch.data matches 1 at @s run clone from minecraft:overworld 6959 ~ -5860 6978 ~ -5718 to switch:game 6959 ~0 -5860 strict replace force

execute if score #rg_mario_circuit_mod switch.data matches 2 at @s in switch:game run particle cloud 6987 ~0.5 -5789 9 0 35 0 250 force
execute if score #rg_mario_circuit_mod switch.data matches 2 at @s run clone from minecraft:overworld 6978 ~ -5860 6996 ~ -5718 to switch:game 6978 ~0 -5860 strict replace force

execute if score #rg_mario_circuit_mod switch.data matches 3 at @s in switch:game run particle cloud 7005 ~0.5 -5789 9 0 35 0 250 force
execute if score #rg_mario_circuit_mod switch.data matches 3 at @s run clone from minecraft:overworld 6996 ~ -5860 7014 ~ -5718 to switch:game 6996 ~0 -5860 strict replace force

execute if score #rg_mario_circuit_mod switch.data matches 4 at @s in switch:game run particle cloud 7023 ~0.5 -5789 9 0 35 0 250 force
execute if score #rg_mario_circuit_mod switch.data matches 4 at @s run clone from minecraft:overworld 7014 ~ -5860 7033 ~ -5718 to switch:game 7014 ~0 -5860 strict replace force

execute if score #rg_mario_circuit_mod switch.data matches 5 at @s in switch:game run particle cloud 7042 ~0.5 -5789 9 0 35 0 250 force
execute if score #rg_mario_circuit_mod switch.data matches 5 at @s run clone from minecraft:overworld 7033 ~ -5860 7051 ~ -5718 to switch:game 7033 ~0 -5860 strict replace force

execute if score #rg_mario_circuit_mod switch.data matches 6 at @s in switch:game run particle cloud 7060 ~0.5 -5789 9 0 35 0 250 force
execute if score #rg_mario_circuit_mod switch.data matches 6 at @s run clone from minecraft:overworld 7051 ~ -5860 7070 ~ -5718 to switch:game 7051 ~0 -5860 strict replace force

execute if score #rg_mario_circuit_mod switch.data matches 7 at @s in switch:game run particle cloud 7079 ~0.5 -5789 9 0 35 0 250 force
execute if score #rg_mario_circuit_mod switch.data matches 7 at @s run clone from minecraft:overworld 7070 ~ -5860 7088 ~ -5718 to switch:game 7070 ~0 -5860 strict replace force

scoreboard players add #rg_mario_circuit_mod switch.data 1
execute if score #rg_mario_circuit_mod switch.data matches 8 in switch:game run kill @e[type=item,x=7014,y=85,z=-5789,distance=..1000]
execute if score #rg_mario_circuit_mod switch.data matches 8 run scoreboard players add #rg_mario_circuit_y switch.data 1
execute if score #rg_mario_circuit_mod switch.data matches 8 run scoreboard players set #rg_mario_circuit_mod switch.data 0

kill @s

