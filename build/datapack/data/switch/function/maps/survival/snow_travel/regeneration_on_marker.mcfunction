
#> switch:maps/survival/snow_travel/regeneration_on_marker
#
# @within	switch:maps/survival/snow_travel/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_snow_travel_y switch.data

execute if score #rg_snow_travel_mod switch.data matches 0 at @s in switch:game run particle cloud -5993 ~0.5 -3898 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 0 at @s run clone from minecraft:overworld -6000 ~ -4000 -5986 ~ -3795 to switch:game -6000 ~0 -4000 strict replace force

execute if score #rg_snow_travel_mod switch.data matches 1 at @s in switch:game run particle cloud -5979 ~0.5 -3898 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 1 at @s run clone from minecraft:overworld -5986 ~ -4000 -5972 ~ -3795 to switch:game -5986 ~0 -4000 strict replace force

execute if score #rg_snow_travel_mod switch.data matches 2 at @s in switch:game run particle cloud -5966 ~0.5 -3898 6 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 2 at @s run clone from minecraft:overworld -5972 ~ -4000 -5959 ~ -3795 to switch:game -5972 ~0 -4000 strict replace force

execute if score #rg_snow_travel_mod switch.data matches 3 at @s in switch:game run particle cloud -5952 ~0.5 -3898 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 3 at @s run clone from minecraft:overworld -5959 ~ -4000 -5945 ~ -3795 to switch:game -5959 ~0 -4000 strict replace force

execute if score #rg_snow_travel_mod switch.data matches 4 at @s in switch:game run particle cloud -5938 ~0.5 -3898 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 4 at @s run clone from minecraft:overworld -5945 ~ -4000 -5931 ~ -3795 to switch:game -5945 ~0 -4000 strict replace force

execute if score #rg_snow_travel_mod switch.data matches 5 at @s in switch:game run particle cloud -5924 ~0.5 -3898 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 5 at @s run clone from minecraft:overworld -5931 ~ -4000 -5917 ~ -3795 to switch:game -5931 ~0 -4000 strict replace force

execute if score #rg_snow_travel_mod switch.data matches 6 at @s in switch:game run particle cloud -5910 ~0.5 -3898 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 6 at @s run clone from minecraft:overworld -5917 ~ -4000 -5903 ~ -3795 to switch:game -5917 ~0 -4000 strict replace force

execute if score #rg_snow_travel_mod switch.data matches 7 at @s in switch:game run particle cloud -5897 ~0.5 -3898 6 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 7 at @s run clone from minecraft:overworld -5903 ~ -4000 -5890 ~ -3795 to switch:game -5903 ~0 -4000 strict replace force

execute if score #rg_snow_travel_mod switch.data matches 8 at @s in switch:game run particle cloud -5883 ~0.5 -3898 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 8 at @s run clone from minecraft:overworld -5890 ~ -4000 -5876 ~ -3795 to switch:game -5890 ~0 -4000 strict replace force

execute if score #rg_snow_travel_mod switch.data matches 9 at @s in switch:game run particle cloud -5869 ~0.5 -3898 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 9 at @s run clone from minecraft:overworld -5876 ~ -4000 -5862 ~ -3795 to switch:game -5876 ~0 -4000 strict replace force

execute if score #rg_snow_travel_mod switch.data matches 10 at @s in switch:game run particle cloud -5855 ~0.5 -3898 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 10 at @s run clone from minecraft:overworld -5862 ~ -4000 -5848 ~ -3795 to switch:game -5862 ~0 -4000 strict replace force

execute if score #rg_snow_travel_mod switch.data matches 11 at @s in switch:game run particle cloud -5841 ~0.5 -3898 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 11 at @s run clone from minecraft:overworld -5848 ~ -4000 -5834 ~ -3795 to switch:game -5848 ~0 -4000 strict replace force

execute if score #rg_snow_travel_mod switch.data matches 12 at @s in switch:game run particle cloud -5828 ~0.5 -3898 6 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 12 at @s run clone from minecraft:overworld -5834 ~ -4000 -5821 ~ -3795 to switch:game -5834 ~0 -4000 strict replace force

execute if score #rg_snow_travel_mod switch.data matches 13 at @s in switch:game run particle cloud -5814 ~0.5 -3898 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 13 at @s run clone from minecraft:overworld -5821 ~ -4000 -5807 ~ -3795 to switch:game -5821 ~0 -4000 strict replace force

execute if score #rg_snow_travel_mod switch.data matches 14 at @s in switch:game run particle cloud -5800 ~0.5 -3898 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 14 at @s run clone from minecraft:overworld -5807 ~ -4000 -5793 ~ -3795 to switch:game -5807 ~0 -4000 strict replace force

scoreboard players add #rg_snow_travel_mod switch.data 1
execute if score #rg_snow_travel_mod switch.data matches 15 in switch:game run kill @e[type=item,x=-5896,y=100,z=-3897,distance=..1000]
execute if score #rg_snow_travel_mod switch.data matches 15 run scoreboard players add #rg_snow_travel_y switch.data 1
execute if score #rg_snow_travel_mod switch.data matches 15 run scoreboard players set #rg_snow_travel_mod switch.data 0

kill @s

