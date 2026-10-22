
#> switch:maps/survival/sakura_land/regeneration_on_marker
#
# @within	switch:maps/survival/sakura_land/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_sakura_land_y switch.data

execute if score #rg_sakura_land_mod switch.data matches 0 at @s in switch:game run particle cloud 6390 ~0.5 -5273 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 0 at @s run clone from minecraft:overworld 6384 ~ -5397 6396 ~ -5148 to switch:game 6384 ~0 -5397 strict replace force

execute if score #rg_sakura_land_mod switch.data matches 1 at @s in switch:game run particle cloud 6402 ~0.5 -5273 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 1 at @s run clone from minecraft:overworld 6396 ~ -5397 6408 ~ -5148 to switch:game 6396 ~0 -5397 strict replace force

execute if score #rg_sakura_land_mod switch.data matches 2 at @s in switch:game run particle cloud 6413 ~0.5 -5273 5 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 2 at @s run clone from minecraft:overworld 6408 ~ -5397 6419 ~ -5148 to switch:game 6408 ~0 -5397 strict replace force

execute if score #rg_sakura_land_mod switch.data matches 3 at @s in switch:game run particle cloud 6425 ~0.5 -5273 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 3 at @s run clone from minecraft:overworld 6419 ~ -5397 6431 ~ -5148 to switch:game 6419 ~0 -5397 strict replace force

execute if score #rg_sakura_land_mod switch.data matches 4 at @s in switch:game run particle cloud 6437 ~0.5 -5273 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 4 at @s run clone from minecraft:overworld 6431 ~ -5397 6443 ~ -5148 to switch:game 6431 ~0 -5397 strict replace force

execute if score #rg_sakura_land_mod switch.data matches 5 at @s in switch:game run particle cloud 6449 ~0.5 -5273 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 5 at @s run clone from minecraft:overworld 6443 ~ -5397 6455 ~ -5148 to switch:game 6443 ~0 -5397 strict replace force

execute if score #rg_sakura_land_mod switch.data matches 6 at @s in switch:game run particle cloud 6460 ~0.5 -5273 5 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 6 at @s run clone from minecraft:overworld 6455 ~ -5397 6466 ~ -5148 to switch:game 6455 ~0 -5397 strict replace force

execute if score #rg_sakura_land_mod switch.data matches 7 at @s in switch:game run particle cloud 6472 ~0.5 -5273 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 7 at @s run clone from minecraft:overworld 6466 ~ -5397 6478 ~ -5148 to switch:game 6466 ~0 -5397 strict replace force

execute if score #rg_sakura_land_mod switch.data matches 8 at @s in switch:game run particle cloud 6484 ~0.5 -5273 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 8 at @s run clone from minecraft:overworld 6478 ~ -5397 6490 ~ -5148 to switch:game 6478 ~0 -5397 strict replace force

execute if score #rg_sakura_land_mod switch.data matches 9 at @s in switch:game run particle cloud 6496 ~0.5 -5273 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 9 at @s run clone from minecraft:overworld 6490 ~ -5397 6502 ~ -5148 to switch:game 6490 ~0 -5397 strict replace force

execute if score #rg_sakura_land_mod switch.data matches 10 at @s in switch:game run particle cloud 6507 ~0.5 -5273 5 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 10 at @s run clone from minecraft:overworld 6502 ~ -5397 6513 ~ -5148 to switch:game 6502 ~0 -5397 strict replace force

execute if score #rg_sakura_land_mod switch.data matches 11 at @s in switch:game run particle cloud 6519 ~0.5 -5273 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 11 at @s run clone from minecraft:overworld 6513 ~ -5397 6525 ~ -5148 to switch:game 6513 ~0 -5397 strict replace force

execute if score #rg_sakura_land_mod switch.data matches 12 at @s in switch:game run particle cloud 6531 ~0.5 -5273 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 12 at @s run clone from minecraft:overworld 6525 ~ -5397 6537 ~ -5148 to switch:game 6525 ~0 -5397 strict replace force

execute if score #rg_sakura_land_mod switch.data matches 13 at @s in switch:game run particle cloud 6543 ~0.5 -5273 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 13 at @s run clone from minecraft:overworld 6537 ~ -5397 6549 ~ -5148 to switch:game 6537 ~0 -5397 strict replace force

execute if score #rg_sakura_land_mod switch.data matches 14 at @s in switch:game run particle cloud 6554 ~0.5 -5273 5 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 14 at @s run clone from minecraft:overworld 6549 ~ -5397 6560 ~ -5148 to switch:game 6549 ~0 -5397 strict replace force

execute if score #rg_sakura_land_mod switch.data matches 15 at @s in switch:game run particle cloud 6566 ~0.5 -5273 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 15 at @s run clone from minecraft:overworld 6560 ~ -5397 6572 ~ -5148 to switch:game 6560 ~0 -5397 strict replace force

execute if score #rg_sakura_land_mod switch.data matches 16 at @s in switch:game run particle cloud 6578 ~0.5 -5273 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 16 at @s run clone from minecraft:overworld 6572 ~ -5397 6584 ~ -5148 to switch:game 6572 ~0 -5397 strict replace force

execute if score #rg_sakura_land_mod switch.data matches 17 at @s in switch:game run particle cloud 6590 ~0.5 -5273 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 17 at @s run clone from minecraft:overworld 6584 ~ -5397 6596 ~ -5148 to switch:game 6584 ~0 -5397 strict replace force

execute if score #rg_sakura_land_mod switch.data matches 18 at @s in switch:game run particle cloud 6601 ~0.5 -5273 5 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 18 at @s run clone from minecraft:overworld 6596 ~ -5397 6607 ~ -5148 to switch:game 6596 ~0 -5397 strict replace force

execute if score #rg_sakura_land_mod switch.data matches 19 at @s in switch:game run particle cloud 6613 ~0.5 -5273 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 19 at @s run clone from minecraft:overworld 6607 ~ -5397 6619 ~ -5148 to switch:game 6607 ~0 -5397 strict replace force

execute if score #rg_sakura_land_mod switch.data matches 20 at @s in switch:game run particle cloud 6625 ~0.5 -5273 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 20 at @s run clone from minecraft:overworld 6619 ~ -5397 6631 ~ -5148 to switch:game 6619 ~0 -5397 strict replace force

scoreboard players add #rg_sakura_land_mod switch.data 1
execute if score #rg_sakura_land_mod switch.data matches 21 in switch:game run kill @e[type=item,x=6507,y=85,z=-5272,distance=..1000]
execute if score #rg_sakura_land_mod switch.data matches 21 run scoreboard players add #rg_sakura_land_y switch.data 1
execute if score #rg_sakura_land_mod switch.data matches 21 run scoreboard players set #rg_sakura_land_mod switch.data 0

kill @s

