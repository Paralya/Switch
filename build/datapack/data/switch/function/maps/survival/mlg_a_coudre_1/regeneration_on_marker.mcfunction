
#> switch:maps/survival/mlg_a_coudre_1/regeneration_on_marker
#
# @within	switch:maps/survival/mlg_a_coudre_1/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_mlg_a_coudre_1_y switch.data

execute if score #rg_mlg_a_coudre_1_mod switch.data matches 0 at @s in switch:game run particle cloud 6009 ~0.5 -1955 9 0 22 0 250 force
execute if score #rg_mlg_a_coudre_1_mod switch.data matches 0 at @s run clone from minecraft:overworld 6000 ~ -2000 6019 ~ -1910 to switch:game 6000 ~0 -2000 strict replace force

execute if score #rg_mlg_a_coudre_1_mod switch.data matches 1 at @s in switch:game run particle cloud 6028 ~0.5 -1955 9 0 22 0 250 force
execute if score #rg_mlg_a_coudre_1_mod switch.data matches 1 at @s run clone from minecraft:overworld 6019 ~ -2000 6038 ~ -1910 to switch:game 6019 ~0 -2000 strict replace force

execute if score #rg_mlg_a_coudre_1_mod switch.data matches 2 at @s in switch:game run particle cloud 6047 ~0.5 -1955 9 0 22 0 250 force
execute if score #rg_mlg_a_coudre_1_mod switch.data matches 2 at @s run clone from minecraft:overworld 6038 ~ -2000 6056 ~ -1910 to switch:game 6038 ~0 -2000 strict replace force

execute if score #rg_mlg_a_coudre_1_mod switch.data matches 3 at @s in switch:game run particle cloud 6065 ~0.5 -1955 9 0 22 0 250 force
execute if score #rg_mlg_a_coudre_1_mod switch.data matches 3 at @s run clone from minecraft:overworld 6056 ~ -2000 6075 ~ -1910 to switch:game 6056 ~0 -2000 strict replace force

scoreboard players add #rg_mlg_a_coudre_1_mod switch.data 1
execute if score #rg_mlg_a_coudre_1_mod switch.data matches 4 in switch:game run kill @e[type=item,x=6037,y=100,z=-1955,distance=..1000]
execute if score #rg_mlg_a_coudre_1_mod switch.data matches 4 run scoreboard players add #rg_mlg_a_coudre_1_y switch.data 1
execute if score #rg_mlg_a_coudre_1_mod switch.data matches 4 run scoreboard players set #rg_mlg_a_coudre_1_mod switch.data 0

kill @s

