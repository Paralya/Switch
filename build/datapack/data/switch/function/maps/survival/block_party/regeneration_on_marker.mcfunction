
#> switch:maps/survival/block_party/regeneration_on_marker
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:maps/survival/block_party/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_block_party_y switch.data

execute if score #rg_block_party_mod switch.data matches 0 at @s in switch:game run particle cloud 4090 ~163.5 -9953 12 0 23 0 250 force
execute if score #rg_block_party_mod switch.data matches 0 at @s run clone from minecraft:overworld 4078 ~ -10000 4102 ~ -9906 to switch:game 4078 ~163 -10000 strict replace force

execute if score #rg_block_party_mod switch.data matches 1 at @s in switch:game run particle cloud 4113 ~163.5 -9953 11 0 23 0 250 force
execute if score #rg_block_party_mod switch.data matches 1 at @s run clone from minecraft:overworld 4102 ~ -10000 4125 ~ -9906 to switch:game 4102 ~163 -10000 strict replace force

execute if score #rg_block_party_mod switch.data matches 2 at @s in switch:game run particle cloud 4136 ~163.5 -9953 11 0 23 0 250 force
execute if score #rg_block_party_mod switch.data matches 2 at @s run clone from minecraft:overworld 4125 ~ -10000 4148 ~ -9906 to switch:game 4125 ~163 -10000 strict replace force

execute if score #rg_block_party_mod switch.data matches 3 at @s in switch:game run particle cloud 4160 ~163.5 -9953 12 0 23 0 250 force
execute if score #rg_block_party_mod switch.data matches 3 at @s run clone from minecraft:overworld 4148 ~ -10000 4172 ~ -9906 to switch:game 4148 ~163 -10000 strict replace force

scoreboard players add #rg_block_party_mod switch.data 1
execute if score #rg_block_party_mod switch.data matches 4 in switch:game run kill @e[type=item,x=4125,y=-63,z=-9953,distance=..1000]
execute if score #rg_block_party_mod switch.data matches 4 run scoreboard players add #rg_block_party_y switch.data 1
execute if score #rg_block_party_mod switch.data matches 4 run scoreboard players set #rg_block_party_mod switch.data 0

kill @s

