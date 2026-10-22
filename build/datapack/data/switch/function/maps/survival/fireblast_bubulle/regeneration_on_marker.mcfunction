
#> switch:maps/survival/fireblast_bubulle/regeneration_on_marker
#
# @within	switch:maps/survival/fireblast_bubulle/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_fireblast_bubulle_y switch.data

execute if score #rg_fireblast_bubulle_mod switch.data matches 0 at @s in switch:game run particle cloud 12012 ~0.5 -9963 12 0 18 0 250 force
execute if score #rg_fireblast_bubulle_mod switch.data matches 0 at @s run clone from minecraft:overworld 12000 ~ -10000 12025 ~ -9925 to switch:game 12000 ~0 -10000 strict replace force

execute if score #rg_fireblast_bubulle_mod switch.data matches 1 at @s in switch:game run particle cloud 12037 ~0.5 -9963 12 0 18 0 250 force
execute if score #rg_fireblast_bubulle_mod switch.data matches 1 at @s run clone from minecraft:overworld 12025 ~ -10000 12050 ~ -9925 to switch:game 12025 ~0 -10000 strict replace force

execute if score #rg_fireblast_bubulle_mod switch.data matches 2 at @s in switch:game run particle cloud 12062 ~0.5 -9963 12 0 18 0 250 force
execute if score #rg_fireblast_bubulle_mod switch.data matches 2 at @s run clone from minecraft:overworld 12050 ~ -10000 12075 ~ -9925 to switch:game 12050 ~0 -10000 strict replace force

scoreboard players add #rg_fireblast_bubulle_mod switch.data 1
execute if score #rg_fireblast_bubulle_mod switch.data matches 3 in switch:game run kill @e[type=item,x=12037,y=100,z=-9962,distance=..1000]
execute if score #rg_fireblast_bubulle_mod switch.data matches 3 run scoreboard players add #rg_fireblast_bubulle_y switch.data 1
execute if score #rg_fireblast_bubulle_mod switch.data matches 3 run scoreboard players set #rg_fireblast_bubulle_mod switch.data 0

kill @s

