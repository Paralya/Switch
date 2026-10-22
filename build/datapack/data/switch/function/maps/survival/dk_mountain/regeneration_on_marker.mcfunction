
#> switch:maps/survival/dk_mountain/regeneration_on_marker
#
# @within	switch:maps/survival/dk_mountain/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_dk_mountain_y switch.data

execute if score #rg_dk_mountain_mod switch.data matches 0 at @s in switch:game run particle cloud 6225 ~0.5 -4832 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 0 at @s run clone from minecraft:overworld 6213 ~ -4891 6237 ~ -4773 to switch:game 6213 ~0 -4891 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 1 at @s in switch:game run particle cloud 6249 ~0.5 -4832 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 1 at @s run clone from minecraft:overworld 6237 ~ -4891 6261 ~ -4773 to switch:game 6237 ~0 -4891 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 2 at @s in switch:game run particle cloud 6273 ~0.5 -4832 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 2 at @s run clone from minecraft:overworld 6261 ~ -4891 6285 ~ -4773 to switch:game 6261 ~0 -4891 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 3 at @s in switch:game run particle cloud 6297 ~0.5 -4832 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 3 at @s run clone from minecraft:overworld 6285 ~ -4891 6309 ~ -4773 to switch:game 6285 ~0 -4891 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 4 at @s in switch:game run particle cloud 6321 ~0.5 -4832 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 4 at @s run clone from minecraft:overworld 6309 ~ -4891 6333 ~ -4773 to switch:game 6309 ~0 -4891 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 5 at @s in switch:game run particle cloud 6345 ~0.5 -4832 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 5 at @s run clone from minecraft:overworld 6333 ~ -4891 6357 ~ -4773 to switch:game 6333 ~0 -4891 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 6 at @s in switch:game run particle cloud 6369 ~0.5 -4832 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 6 at @s run clone from minecraft:overworld 6357 ~ -4891 6381 ~ -4773 to switch:game 6357 ~0 -4891 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 7 at @s in switch:game run particle cloud 6393 ~0.5 -4832 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 7 at @s run clone from minecraft:overworld 6381 ~ -4891 6405 ~ -4773 to switch:game 6381 ~0 -4891 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 8 at @s in switch:game run particle cloud 6417 ~0.5 -4832 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 8 at @s run clone from minecraft:overworld 6405 ~ -4891 6429 ~ -4773 to switch:game 6405 ~0 -4891 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 9 at @s in switch:game run particle cloud 6441 ~0.5 -4832 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 9 at @s run clone from minecraft:overworld 6429 ~ -4891 6453 ~ -4773 to switch:game 6429 ~0 -4891 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 10 at @s in switch:game run particle cloud 6465 ~0.5 -4832 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 10 at @s run clone from minecraft:overworld 6453 ~ -4891 6477 ~ -4773 to switch:game 6453 ~0 -4891 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 11 at @s in switch:game run particle cloud 6489 ~0.5 -4832 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 11 at @s run clone from minecraft:overworld 6477 ~ -4891 6501 ~ -4773 to switch:game 6477 ~0 -4891 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 12 at @s in switch:game run particle cloud 6513 ~0.5 -4832 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 12 at @s run clone from minecraft:overworld 6501 ~ -4891 6525 ~ -4773 to switch:game 6501 ~0 -4891 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 13 at @s in switch:game run particle cloud 6537 ~0.5 -4832 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 13 at @s run clone from minecraft:overworld 6525 ~ -4891 6549 ~ -4773 to switch:game 6525 ~0 -4891 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 14 at @s in switch:game run particle cloud 6561 ~0.5 -4832 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 14 at @s run clone from minecraft:overworld 6549 ~ -4891 6573 ~ -4773 to switch:game 6549 ~0 -4891 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 15 at @s in switch:game run particle cloud 6585 ~0.5 -4832 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 15 at @s run clone from minecraft:overworld 6573 ~ -4891 6597 ~ -4773 to switch:game 6573 ~0 -4891 strict replace force

scoreboard players add #rg_dk_mountain_mod switch.data 1
execute if score #rg_dk_mountain_mod switch.data matches 16 in switch:game run kill @e[type=item,x=6405,y=70,z=-4832,distance=..1000]
execute if score #rg_dk_mountain_mod switch.data matches 16 run scoreboard players add #rg_dk_mountain_y switch.data 1
execute if score #rg_dk_mountain_mod switch.data matches 16 run scoreboard players set #rg_dk_mountain_mod switch.data 0

kill @s

