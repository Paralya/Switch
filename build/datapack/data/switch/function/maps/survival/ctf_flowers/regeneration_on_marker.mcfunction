
#> switch:maps/survival/ctf_flowers/regeneration_on_marker
#
# @within	switch:maps/survival/ctf_flowers/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_ctf_flowers_y switch.data

execute if score #rg_ctf_flowers_mod switch.data matches 0 at @s in switch:game run particle cloud -11988 ~0.5 -7948 12 0 26 0 250 force
execute if score #rg_ctf_flowers_mod switch.data matches 0 at @s run clone from minecraft:overworld -12000 ~ -8000 -11975 ~ -7895 to switch:game -12000 ~0 -8000 strict replace force

execute if score #rg_ctf_flowers_mod switch.data matches 1 at @s in switch:game run particle cloud -11963 ~0.5 -7948 12 0 26 0 250 force
execute if score #rg_ctf_flowers_mod switch.data matches 1 at @s run clone from minecraft:overworld -11975 ~ -8000 -11950 ~ -7895 to switch:game -11975 ~0 -8000 strict replace force

execute if score #rg_ctf_flowers_mod switch.data matches 2 at @s in switch:game run particle cloud -11937 ~0.5 -7948 13 0 26 0 250 force
execute if score #rg_ctf_flowers_mod switch.data matches 2 at @s run clone from minecraft:overworld -11950 ~ -8000 -11924 ~ -7895 to switch:game -11950 ~0 -8000 strict replace force

execute if score #rg_ctf_flowers_mod switch.data matches 3 at @s in switch:game run particle cloud -11912 ~0.5 -7948 12 0 26 0 250 force
execute if score #rg_ctf_flowers_mod switch.data matches 3 at @s run clone from minecraft:overworld -11924 ~ -8000 -11899 ~ -7895 to switch:game -11924 ~0 -8000 strict replace force

execute if score #rg_ctf_flowers_mod switch.data matches 4 at @s in switch:game run particle cloud -11887 ~0.5 -7948 12 0 26 0 250 force
execute if score #rg_ctf_flowers_mod switch.data matches 4 at @s run clone from minecraft:overworld -11899 ~ -8000 -11874 ~ -7895 to switch:game -11899 ~0 -8000 strict replace force

execute if score #rg_ctf_flowers_mod switch.data matches 5 at @s in switch:game run particle cloud -11861 ~0.5 -7948 13 0 26 0 250 force
execute if score #rg_ctf_flowers_mod switch.data matches 5 at @s run clone from minecraft:overworld -11874 ~ -8000 -11848 ~ -7895 to switch:game -11874 ~0 -8000 strict replace force

execute if score #rg_ctf_flowers_mod switch.data matches 6 at @s in switch:game run particle cloud -11836 ~0.5 -7948 12 0 26 0 250 force
execute if score #rg_ctf_flowers_mod switch.data matches 6 at @s run clone from minecraft:overworld -11848 ~ -8000 -11823 ~ -7895 to switch:game -11848 ~0 -8000 strict replace force

execute if score #rg_ctf_flowers_mod switch.data matches 7 at @s in switch:game run particle cloud -11811 ~0.5 -7948 12 0 26 0 250 force
execute if score #rg_ctf_flowers_mod switch.data matches 7 at @s run clone from minecraft:overworld -11823 ~ -8000 -11798 ~ -7895 to switch:game -11823 ~0 -8000 strict replace force

scoreboard players add #rg_ctf_flowers_mod switch.data 1
execute if score #rg_ctf_flowers_mod switch.data matches 8 in switch:game run kill @e[type=item,x=-11899,y=100,z=-7947,distance=..1000]
execute if score #rg_ctf_flowers_mod switch.data matches 8 run scoreboard players add #rg_ctf_flowers_y switch.data 1
execute if score #rg_ctf_flowers_mod switch.data matches 8 run scoreboard players set #rg_ctf_flowers_mod switch.data 0

kill @s

