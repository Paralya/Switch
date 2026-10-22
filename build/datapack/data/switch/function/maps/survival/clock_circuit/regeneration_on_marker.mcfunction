
#> switch:maps/survival/clock_circuit/regeneration_on_marker
#
# @within	switch:maps/survival/clock_circuit/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_clock_circuit_y switch.data

execute if score #rg_clock_circuit_mod switch.data matches 0 at @s in switch:game run particle cloud 6041 ~0.5 -5009 9 0 39 0 250 force
execute if score #rg_clock_circuit_mod switch.data matches 0 at @s run clone from minecraft:overworld 6032 ~ -5087 6050 ~ -4931 to switch:game 6032 ~0 -5087 strict replace force

execute if score #rg_clock_circuit_mod switch.data matches 1 at @s in switch:game run particle cloud 6059 ~0.5 -5009 9 0 39 0 250 force
execute if score #rg_clock_circuit_mod switch.data matches 1 at @s run clone from minecraft:overworld 6050 ~ -5087 6068 ~ -4931 to switch:game 6050 ~0 -5087 strict replace force

execute if score #rg_clock_circuit_mod switch.data matches 2 at @s in switch:game run particle cloud 6076 ~0.5 -5009 8 0 39 0 250 force
execute if score #rg_clock_circuit_mod switch.data matches 2 at @s run clone from minecraft:overworld 6068 ~ -5087 6085 ~ -4931 to switch:game 6068 ~0 -5087 strict replace force

execute if score #rg_clock_circuit_mod switch.data matches 3 at @s in switch:game run particle cloud 6094 ~0.5 -5009 9 0 39 0 250 force
execute if score #rg_clock_circuit_mod switch.data matches 3 at @s run clone from minecraft:overworld 6085 ~ -5087 6103 ~ -4931 to switch:game 6085 ~0 -5087 strict replace force

execute if score #rg_clock_circuit_mod switch.data matches 4 at @s in switch:game run particle cloud 6112 ~0.5 -5009 9 0 39 0 250 force
execute if score #rg_clock_circuit_mod switch.data matches 4 at @s run clone from minecraft:overworld 6103 ~ -5087 6121 ~ -4931 to switch:game 6103 ~0 -5087 strict replace force

execute if score #rg_clock_circuit_mod switch.data matches 5 at @s in switch:game run particle cloud 6130 ~0.5 -5009 9 0 39 0 250 force
execute if score #rg_clock_circuit_mod switch.data matches 5 at @s run clone from minecraft:overworld 6121 ~ -5087 6139 ~ -4931 to switch:game 6121 ~0 -5087 strict replace force

execute if score #rg_clock_circuit_mod switch.data matches 6 at @s in switch:game run particle cloud 6147 ~0.5 -5009 8 0 39 0 250 force
execute if score #rg_clock_circuit_mod switch.data matches 6 at @s run clone from minecraft:overworld 6139 ~ -5087 6156 ~ -4931 to switch:game 6139 ~0 -5087 strict replace force

execute if score #rg_clock_circuit_mod switch.data matches 7 at @s in switch:game run particle cloud 6165 ~0.5 -5009 9 0 39 0 250 force
execute if score #rg_clock_circuit_mod switch.data matches 7 at @s run clone from minecraft:overworld 6156 ~ -5087 6174 ~ -4931 to switch:game 6156 ~0 -5087 strict replace force

execute if score #rg_clock_circuit_mod switch.data matches 8 at @s in switch:game run particle cloud 6183 ~0.5 -5009 9 0 39 0 250 force
execute if score #rg_clock_circuit_mod switch.data matches 8 at @s run clone from minecraft:overworld 6174 ~ -5087 6192 ~ -4931 to switch:game 6174 ~0 -5087 strict replace force

scoreboard players add #rg_clock_circuit_mod switch.data 1
execute if score #rg_clock_circuit_mod switch.data matches 9 in switch:game run kill @e[type=item,x=6112,y=70,z=-5009,distance=..1000]
execute if score #rg_clock_circuit_mod switch.data matches 9 run scoreboard players add #rg_clock_circuit_y switch.data 1
execute if score #rg_clock_circuit_mod switch.data matches 9 run scoreboard players set #rg_clock_circuit_mod switch.data 0

kill @s

