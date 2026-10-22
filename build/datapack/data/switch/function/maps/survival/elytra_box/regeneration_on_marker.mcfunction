
#> switch:maps/survival/elytra_box/regeneration_on_marker
#
# @within	switch:maps/survival/elytra_box/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_elytra_box_y switch.data

execute if score #rg_elytra_box_mod switch.data matches 0 at @s in switch:game run particle cloud 2006 ~0.5 -3921 6 0 39 0 250 force
execute if score #rg_elytra_box_mod switch.data matches 0 at @s run clone from minecraft:overworld 2000 ~ -4000 2012 ~ -3841 to switch:game 2000 ~0 -4000 strict replace force

execute if score #rg_elytra_box_mod switch.data matches 1 at @s in switch:game run particle cloud 2018 ~0.5 -3921 6 0 39 0 250 force
execute if score #rg_elytra_box_mod switch.data matches 1 at @s run clone from minecraft:overworld 2012 ~ -4000 2025 ~ -3841 to switch:game 2012 ~0 -4000 strict replace force

execute if score #rg_elytra_box_mod switch.data matches 2 at @s in switch:game run particle cloud 2031 ~0.5 -3921 6 0 39 0 250 force
execute if score #rg_elytra_box_mod switch.data matches 2 at @s run clone from minecraft:overworld 2025 ~ -4000 2037 ~ -3841 to switch:game 2025 ~0 -4000 strict replace force

execute if score #rg_elytra_box_mod switch.data matches 3 at @s in switch:game run particle cloud 2043 ~0.5 -3921 6 0 39 0 250 force
execute if score #rg_elytra_box_mod switch.data matches 3 at @s run clone from minecraft:overworld 2037 ~ -4000 2050 ~ -3841 to switch:game 2037 ~0 -4000 strict replace force

execute if score #rg_elytra_box_mod switch.data matches 4 at @s in switch:game run particle cloud 2056 ~0.5 -3921 6 0 39 0 250 force
execute if score #rg_elytra_box_mod switch.data matches 4 at @s run clone from minecraft:overworld 2050 ~ -4000 2062 ~ -3841 to switch:game 2050 ~0 -4000 strict replace force

scoreboard players add #rg_elytra_box_mod switch.data 1
execute if score #rg_elytra_box_mod switch.data matches 5 in switch:game run kill @e[type=item,x=2031,y=100,z=-3920,distance=..1000]
execute if score #rg_elytra_box_mod switch.data matches 5 run scoreboard players add #rg_elytra_box_y switch.data 1
execute if score #rg_elytra_box_mod switch.data matches 5 run scoreboard players set #rg_elytra_box_mod switch.data 0

kill @s

