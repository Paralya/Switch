
#> switch:maps/survival/city_race/regeneration_on_marker
#
# @within	switch:maps/survival/city_race/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_city_race_y switch.data

execute if score #rg_city_race_mod switch.data matches 0 at @s in switch:game run particle cloud 6386 ~0.5 -5776 6 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 0 at @s run clone from minecraft:overworld 6380 ~ -5906 6392 ~ -5645 to switch:game 6380 ~0 -5906 strict replace force

execute if score #rg_city_race_mod switch.data matches 1 at @s in switch:game run particle cloud 6397 ~0.5 -5776 5 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 1 at @s run clone from minecraft:overworld 6392 ~ -5906 6403 ~ -5645 to switch:game 6392 ~0 -5906 strict replace force

execute if score #rg_city_race_mod switch.data matches 2 at @s in switch:game run particle cloud 6409 ~0.5 -5776 6 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 2 at @s run clone from minecraft:overworld 6403 ~ -5906 6415 ~ -5645 to switch:game 6403 ~0 -5906 strict replace force

execute if score #rg_city_race_mod switch.data matches 3 at @s in switch:game run particle cloud 6421 ~0.5 -5776 6 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 3 at @s run clone from minecraft:overworld 6415 ~ -5906 6427 ~ -5645 to switch:game 6415 ~0 -5906 strict replace force

execute if score #rg_city_race_mod switch.data matches 4 at @s in switch:game run particle cloud 6432 ~0.5 -5776 5 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 4 at @s run clone from minecraft:overworld 6427 ~ -5906 6438 ~ -5645 to switch:game 6427 ~0 -5906 strict replace force

execute if score #rg_city_race_mod switch.data matches 5 at @s in switch:game run particle cloud 6444 ~0.5 -5776 6 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 5 at @s run clone from minecraft:overworld 6438 ~ -5906 6450 ~ -5645 to switch:game 6438 ~0 -5906 strict replace force

execute if score #rg_city_race_mod switch.data matches 6 at @s in switch:game run particle cloud 6456 ~0.5 -5776 6 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 6 at @s run clone from minecraft:overworld 6450 ~ -5906 6462 ~ -5645 to switch:game 6450 ~0 -5906 strict replace force

execute if score #rg_city_race_mod switch.data matches 7 at @s in switch:game run particle cloud 6467 ~0.5 -5776 5 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 7 at @s run clone from minecraft:overworld 6462 ~ -5906 6473 ~ -5645 to switch:game 6462 ~0 -5906 strict replace force

execute if score #rg_city_race_mod switch.data matches 8 at @s in switch:game run particle cloud 6479 ~0.5 -5776 6 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 8 at @s run clone from minecraft:overworld 6473 ~ -5906 6485 ~ -5645 to switch:game 6473 ~0 -5906 strict replace force

execute if score #rg_city_race_mod switch.data matches 9 at @s in switch:game run particle cloud 6491 ~0.5 -5776 6 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 9 at @s run clone from minecraft:overworld 6485 ~ -5906 6497 ~ -5645 to switch:game 6485 ~0 -5906 strict replace force

execute if score #rg_city_race_mod switch.data matches 10 at @s in switch:game run particle cloud 6502 ~0.5 -5776 5 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 10 at @s run clone from minecraft:overworld 6497 ~ -5906 6508 ~ -5645 to switch:game 6497 ~0 -5906 strict replace force

execute if score #rg_city_race_mod switch.data matches 11 at @s in switch:game run particle cloud 6514 ~0.5 -5776 6 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 11 at @s run clone from minecraft:overworld 6508 ~ -5906 6520 ~ -5645 to switch:game 6508 ~0 -5906 strict replace force

execute if score #rg_city_race_mod switch.data matches 12 at @s in switch:game run particle cloud 6526 ~0.5 -5776 6 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 12 at @s run clone from minecraft:overworld 6520 ~ -5906 6532 ~ -5645 to switch:game 6520 ~0 -5906 strict replace force

execute if score #rg_city_race_mod switch.data matches 13 at @s in switch:game run particle cloud 6537 ~0.5 -5776 5 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 13 at @s run clone from minecraft:overworld 6532 ~ -5906 6543 ~ -5645 to switch:game 6532 ~0 -5906 strict replace force

execute if score #rg_city_race_mod switch.data matches 14 at @s in switch:game run particle cloud 6549 ~0.5 -5776 6 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 14 at @s run clone from minecraft:overworld 6543 ~ -5906 6555 ~ -5645 to switch:game 6543 ~0 -5906 strict replace force

execute if score #rg_city_race_mod switch.data matches 15 at @s in switch:game run particle cloud 6561 ~0.5 -5776 6 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 15 at @s run clone from minecraft:overworld 6555 ~ -5906 6567 ~ -5645 to switch:game 6555 ~0 -5906 strict replace force

execute if score #rg_city_race_mod switch.data matches 16 at @s in switch:game run particle cloud 6572 ~0.5 -5776 5 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 16 at @s run clone from minecraft:overworld 6567 ~ -5906 6578 ~ -5645 to switch:game 6567 ~0 -5906 strict replace force

execute if score #rg_city_race_mod switch.data matches 17 at @s in switch:game run particle cloud 6584 ~0.5 -5776 6 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 17 at @s run clone from minecraft:overworld 6578 ~ -5906 6590 ~ -5645 to switch:game 6578 ~0 -5906 strict replace force

execute if score #rg_city_race_mod switch.data matches 18 at @s in switch:game run particle cloud 6596 ~0.5 -5776 6 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 18 at @s run clone from minecraft:overworld 6590 ~ -5906 6602 ~ -5645 to switch:game 6590 ~0 -5906 strict replace force

execute if score #rg_city_race_mod switch.data matches 19 at @s in switch:game run particle cloud 6607 ~0.5 -5776 5 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 19 at @s run clone from minecraft:overworld 6602 ~ -5906 6613 ~ -5645 to switch:game 6602 ~0 -5906 strict replace force

execute if score #rg_city_race_mod switch.data matches 20 at @s in switch:game run particle cloud 6619 ~0.5 -5776 6 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 20 at @s run clone from minecraft:overworld 6613 ~ -5906 6625 ~ -5645 to switch:game 6613 ~0 -5906 strict replace force

scoreboard players add #rg_city_race_mod switch.data 1
execute if score #rg_city_race_mod switch.data matches 21 in switch:game run kill @e[type=item,x=6502,y=85,z=-5775,distance=..1000]
execute if score #rg_city_race_mod switch.data matches 21 run scoreboard players add #rg_city_race_y switch.data 1
execute if score #rg_city_race_mod switch.data matches 21 run scoreboard players set #rg_city_race_mod switch.data 0

kill @s

