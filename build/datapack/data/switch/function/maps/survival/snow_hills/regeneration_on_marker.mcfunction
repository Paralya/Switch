
#> switch:maps/survival/snow_hills/regeneration_on_marker
#
# @within	switch:maps/survival/snow_hills/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_snow_hills_y switch.data

execute if score #rg_snow_hills_mod switch.data matches 0 at @s in switch:game run particle cloud -7992 ~0.5 -3908 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 0 at @s run clone from minecraft:overworld -8000 ~ -4000 -7984 ~ -3815 to switch:game -8000 ~0 -4000 strict replace force

execute if score #rg_snow_hills_mod switch.data matches 1 at @s in switch:game run particle cloud -7976 ~0.5 -3908 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 1 at @s run clone from minecraft:overworld -7984 ~ -4000 -7968 ~ -3815 to switch:game -7984 ~0 -4000 strict replace force

execute if score #rg_snow_hills_mod switch.data matches 2 at @s in switch:game run particle cloud -7960 ~0.5 -3908 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 2 at @s run clone from minecraft:overworld -7968 ~ -4000 -7952 ~ -3815 to switch:game -7968 ~0 -4000 strict replace force

execute if score #rg_snow_hills_mod switch.data matches 3 at @s in switch:game run particle cloud -7944 ~0.5 -3908 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 3 at @s run clone from minecraft:overworld -7952 ~ -4000 -7936 ~ -3815 to switch:game -7952 ~0 -4000 strict replace force

execute if score #rg_snow_hills_mod switch.data matches 4 at @s in switch:game run particle cloud -7928 ~0.5 -3908 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 4 at @s run clone from minecraft:overworld -7936 ~ -4000 -7920 ~ -3815 to switch:game -7936 ~0 -4000 strict replace force

execute if score #rg_snow_hills_mod switch.data matches 5 at @s in switch:game run particle cloud -7912 ~0.5 -3908 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 5 at @s run clone from minecraft:overworld -7920 ~ -4000 -7904 ~ -3815 to switch:game -7920 ~0 -4000 strict replace force

execute if score #rg_snow_hills_mod switch.data matches 6 at @s in switch:game run particle cloud -7896 ~0.5 -3908 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 6 at @s run clone from minecraft:overworld -7904 ~ -4000 -7888 ~ -3815 to switch:game -7904 ~0 -4000 strict replace force

execute if score #rg_snow_hills_mod switch.data matches 7 at @s in switch:game run particle cloud -7881 ~0.5 -3908 7 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 7 at @s run clone from minecraft:overworld -7888 ~ -4000 -7873 ~ -3815 to switch:game -7888 ~0 -4000 strict replace force

execute if score #rg_snow_hills_mod switch.data matches 8 at @s in switch:game run particle cloud -7865 ~0.5 -3908 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 8 at @s run clone from minecraft:overworld -7873 ~ -4000 -7857 ~ -3815 to switch:game -7873 ~0 -4000 strict replace force

execute if score #rg_snow_hills_mod switch.data matches 9 at @s in switch:game run particle cloud -7849 ~0.5 -3908 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 9 at @s run clone from minecraft:overworld -7857 ~ -4000 -7841 ~ -3815 to switch:game -7857 ~0 -4000 strict replace force

execute if score #rg_snow_hills_mod switch.data matches 10 at @s in switch:game run particle cloud -7833 ~0.5 -3908 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 10 at @s run clone from minecraft:overworld -7841 ~ -4000 -7825 ~ -3815 to switch:game -7841 ~0 -4000 strict replace force

execute if score #rg_snow_hills_mod switch.data matches 11 at @s in switch:game run particle cloud -7817 ~0.5 -3908 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 11 at @s run clone from minecraft:overworld -7825 ~ -4000 -7809 ~ -3815 to switch:game -7825 ~0 -4000 strict replace force

execute if score #rg_snow_hills_mod switch.data matches 12 at @s in switch:game run particle cloud -7801 ~0.5 -3908 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 12 at @s run clone from minecraft:overworld -7809 ~ -4000 -7793 ~ -3815 to switch:game -7809 ~0 -4000 strict replace force

execute if score #rg_snow_hills_mod switch.data matches 13 at @s in switch:game run particle cloud -7785 ~0.5 -3908 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 13 at @s run clone from minecraft:overworld -7793 ~ -4000 -7777 ~ -3815 to switch:game -7793 ~0 -4000 strict replace force

execute if score #rg_snow_hills_mod switch.data matches 14 at @s in switch:game run particle cloud -7769 ~0.5 -3908 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 14 at @s run clone from minecraft:overworld -7777 ~ -4000 -7761 ~ -3815 to switch:game -7777 ~0 -4000 strict replace force

scoreboard players add #rg_snow_hills_mod switch.data 1
execute if score #rg_snow_hills_mod switch.data matches 15 in switch:game run kill @e[type=item,x=-7880,y=100,z=-3907,distance=..1000]
execute if score #rg_snow_hills_mod switch.data matches 15 run scoreboard players add #rg_snow_hills_y switch.data 1
execute if score #rg_snow_hills_mod switch.data matches 15 run scoreboard players set #rg_snow_hills_mod switch.data 0

kill @s

