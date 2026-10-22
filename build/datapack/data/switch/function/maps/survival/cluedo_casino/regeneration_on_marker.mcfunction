
#> switch:maps/survival/cluedo_casino/regeneration_on_marker
#
# @within	switch:maps/survival/cluedo_casino/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_cluedo_casino_y switch.data

execute if score #rg_cluedo_casino_mod switch.data matches 0 at @s in switch:game run particle cloud 6012 ~0.5 -11966 12 0 17 0 250 force
execute if score #rg_cluedo_casino_mod switch.data matches 0 at @s run clone from minecraft:overworld 6000 ~ -12000 6025 ~ -11931 to switch:game 6000 ~0 -12000 strict replace force

execute if score #rg_cluedo_casino_mod switch.data matches 1 at @s in switch:game run particle cloud 6037 ~0.5 -11966 12 0 17 0 250 force
execute if score #rg_cluedo_casino_mod switch.data matches 1 at @s run clone from minecraft:overworld 6025 ~ -12000 6050 ~ -11931 to switch:game 6025 ~0 -12000 strict replace force

execute if score #rg_cluedo_casino_mod switch.data matches 2 at @s in switch:game run particle cloud 6062 ~0.5 -11966 12 0 17 0 250 force
execute if score #rg_cluedo_casino_mod switch.data matches 2 at @s run clone from minecraft:overworld 6050 ~ -12000 6075 ~ -11931 to switch:game 6050 ~0 -12000 strict replace force

scoreboard players add #rg_cluedo_casino_mod switch.data 1
execute if score #rg_cluedo_casino_mod switch.data matches 3 in switch:game run kill @e[type=item,x=6037,y=100,z=-11965,distance=..1000]
execute if score #rg_cluedo_casino_mod switch.data matches 3 run scoreboard players add #rg_cluedo_casino_y switch.data 1
execute if score #rg_cluedo_casino_mod switch.data matches 3 run scoreboard players set #rg_cluedo_casino_mod switch.data 0

kill @s

