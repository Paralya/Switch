
#> switch:maps/survival/cluedo_camping/regeneration_on_marker
#
# @within	switch:maps/survival/cluedo_camping/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_cluedo_camping_y switch.data

execute if score #rg_cluedo_camping_mod switch.data matches 0 at @s in switch:game run particle cloud -3989 ~0.5 -7953 11 0 23 0 250 force
execute if score #rg_cluedo_camping_mod switch.data matches 0 at @s run clone from minecraft:overworld -4000 ~ -8000 -3978 ~ -7906 to switch:game -4000 ~0 -8000 strict replace force

execute if score #rg_cluedo_camping_mod switch.data matches 1 at @s in switch:game run particle cloud -3967 ~0.5 -7953 11 0 23 0 250 force
execute if score #rg_cluedo_camping_mod switch.data matches 1 at @s run clone from minecraft:overworld -3978 ~ -8000 -3955 ~ -7906 to switch:game -3978 ~0 -8000 strict replace force

execute if score #rg_cluedo_camping_mod switch.data matches 2 at @s in switch:game run particle cloud -3944 ~0.5 -7953 11 0 23 0 250 force
execute if score #rg_cluedo_camping_mod switch.data matches 2 at @s run clone from minecraft:overworld -3955 ~ -8000 -3933 ~ -7906 to switch:game -3955 ~0 -8000 strict replace force

execute if score #rg_cluedo_camping_mod switch.data matches 3 at @s in switch:game run particle cloud -3922 ~0.5 -7953 11 0 23 0 250 force
execute if score #rg_cluedo_camping_mod switch.data matches 3 at @s run clone from minecraft:overworld -3933 ~ -8000 -3910 ~ -7906 to switch:game -3933 ~0 -8000 strict replace force

execute if score #rg_cluedo_camping_mod switch.data matches 4 at @s in switch:game run particle cloud -3899 ~0.5 -7953 11 0 23 0 250 force
execute if score #rg_cluedo_camping_mod switch.data matches 4 at @s run clone from minecraft:overworld -3910 ~ -8000 -3888 ~ -7906 to switch:game -3910 ~0 -8000 strict replace force

scoreboard players add #rg_cluedo_camping_mod switch.data 1
execute if score #rg_cluedo_camping_mod switch.data matches 5 in switch:game run kill @e[type=item,x=-3944,y=100,z=-7953,distance=..1000]
execute if score #rg_cluedo_camping_mod switch.data matches 5 run scoreboard players add #rg_cluedo_camping_y switch.data 1
execute if score #rg_cluedo_camping_mod switch.data matches 5 run scoreboard players set #rg_cluedo_camping_mod switch.data 0

kill @s

