
#> switch:maps/survival/paralya_uhc_lobbies/regeneration_on_marker
#
# @within	switch:maps/survival/paralya_uhc_lobbies/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_paralya_uhc_lobbies_y switch.data

execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 0 at @s in switch:game run particle cloud -9989 ~0.5 -3955 11 0 22 0 250 force
execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 0 at @s run clone from minecraft:overworld -10000 ~ -4000 -9978 ~ -3910 to switch:game -10000 ~0 -4000 strict replace force

execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 1 at @s in switch:game run particle cloud -9967 ~0.5 -3955 11 0 22 0 250 force
execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 1 at @s run clone from minecraft:overworld -9978 ~ -4000 -9955 ~ -3910 to switch:game -9978 ~0 -4000 strict replace force

execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 2 at @s in switch:game run particle cloud -9944 ~0.5 -3955 11 0 22 0 250 force
execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 2 at @s run clone from minecraft:overworld -9955 ~ -4000 -9932 ~ -3910 to switch:game -9955 ~0 -4000 strict replace force

execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 3 at @s in switch:game run particle cloud -9921 ~0.5 -3955 11 0 22 0 250 force
execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 3 at @s run clone from minecraft:overworld -9932 ~ -4000 -9910 ~ -3910 to switch:game -9932 ~0 -4000 strict replace force

scoreboard players add #rg_paralya_uhc_lobbies_mod switch.data 1
execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 4 in switch:game run kill @e[type=item,x=-9955,y=100,z=-3955,distance=..1000]
execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 4 run scoreboard players add #rg_paralya_uhc_lobbies_y switch.data 1
execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 4 run scoreboard players set #rg_paralya_uhc_lobbies_mod switch.data 0

kill @s

