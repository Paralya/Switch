
#> switch:maps/survival/fireblast_pork/regeneration_on_marker
#
# @within	switch:maps/survival/fireblast_pork/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_fireblast_pork_y switch.data

execute if score #rg_fireblast_pork_mod switch.data matches 0 at @s in switch:game run particle cloud 12012 ~0.5 -5963 12 0 18 0 250 force
execute if score #rg_fireblast_pork_mod switch.data matches 0 at @s run clone from minecraft:overworld 12000 ~ -6000 12025 ~ -5925 to switch:game 12000 ~0 -6000 strict replace force

execute if score #rg_fireblast_pork_mod switch.data matches 1 at @s in switch:game run particle cloud 12037 ~0.5 -5963 12 0 18 0 250 force
execute if score #rg_fireblast_pork_mod switch.data matches 1 at @s run clone from minecraft:overworld 12025 ~ -6000 12050 ~ -5925 to switch:game 12025 ~0 -6000 strict replace force

execute if score #rg_fireblast_pork_mod switch.data matches 2 at @s in switch:game run particle cloud 12062 ~0.5 -5963 12 0 18 0 250 force
execute if score #rg_fireblast_pork_mod switch.data matches 2 at @s run clone from minecraft:overworld 12050 ~ -6000 12075 ~ -5925 to switch:game 12050 ~0 -6000 strict replace force

scoreboard players add #rg_fireblast_pork_mod switch.data 1
execute if score #rg_fireblast_pork_mod switch.data matches 3 in switch:game run kill @e[type=item,x=12037,y=100,z=-5962,distance=..1000]
execute if score #rg_fireblast_pork_mod switch.data matches 3 run scoreboard players add #rg_fireblast_pork_y switch.data 1
execute if score #rg_fireblast_pork_mod switch.data matches 3 run scoreboard players set #rg_fireblast_pork_mod switch.data 0

kill @s

