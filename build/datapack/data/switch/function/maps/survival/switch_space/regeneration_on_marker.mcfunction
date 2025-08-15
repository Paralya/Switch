
#> switch:maps/survival/switch_space/regeneration_on_marker
#
# @within	switch:maps/survival/switch_space/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_switch_space_y switch.data

execute if score #rg_switch_space_mod switch.data matches 0 at @s in switch:game run particle cloud -156 ~0.5 0 4 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 0 at @s run clone from minecraft:overworld -160 ~ -160 -151 ~ 160 to switch:game -160 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 1 at @s in switch:game run particle cloud -146 ~0.5 0 5 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 1 at @s run clone from minecraft:overworld -151 ~ -160 -141 ~ 160 to switch:game -151 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 2 at @s in switch:game run particle cloud -137 ~0.5 0 4 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 2 at @s run clone from minecraft:overworld -141 ~ -160 -132 ~ 160 to switch:game -141 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 3 at @s in switch:game run particle cloud -127 ~0.5 0 5 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 3 at @s run clone from minecraft:overworld -132 ~ -160 -122 ~ 160 to switch:game -132 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 4 at @s in switch:game run particle cloud -118 ~0.5 0 4 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 4 at @s run clone from minecraft:overworld -122 ~ -160 -113 ~ 160 to switch:game -122 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 5 at @s in switch:game run particle cloud -109 ~0.5 0 4 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 5 at @s run clone from minecraft:overworld -113 ~ -160 -104 ~ 160 to switch:game -113 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 6 at @s in switch:game run particle cloud -99 ~0.5 0 5 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 6 at @s run clone from minecraft:overworld -104 ~ -160 -94 ~ 160 to switch:game -104 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 7 at @s in switch:game run particle cloud -90 ~0.5 0 4 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 7 at @s run clone from minecraft:overworld -94 ~ -160 -85 ~ 160 to switch:game -94 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 8 at @s in switch:game run particle cloud -80 ~0.5 0 5 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 8 at @s run clone from minecraft:overworld -85 ~ -160 -75 ~ 160 to switch:game -85 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 9 at @s in switch:game run particle cloud -71 ~0.5 0 4 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 9 at @s run clone from minecraft:overworld -75 ~ -160 -66 ~ 160 to switch:game -75 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 10 at @s in switch:game run particle cloud -61 ~0.5 0 5 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 10 at @s run clone from minecraft:overworld -66 ~ -160 -56 ~ 160 to switch:game -66 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 11 at @s in switch:game run particle cloud -52 ~0.5 0 4 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 11 at @s run clone from minecraft:overworld -56 ~ -160 -47 ~ 160 to switch:game -56 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 12 at @s in switch:game run particle cloud -43 ~0.5 0 4 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 12 at @s run clone from minecraft:overworld -47 ~ -160 -38 ~ 160 to switch:game -47 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 13 at @s in switch:game run particle cloud -33 ~0.5 0 5 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 13 at @s run clone from minecraft:overworld -38 ~ -160 -28 ~ 160 to switch:game -38 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 14 at @s in switch:game run particle cloud -24 ~0.5 0 4 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 14 at @s run clone from minecraft:overworld -28 ~ -160 -19 ~ 160 to switch:game -28 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 15 at @s in switch:game run particle cloud -14 ~0.5 0 5 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 15 at @s run clone from minecraft:overworld -19 ~ -160 -9 ~ 160 to switch:game -19 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 16 at @s in switch:game run particle cloud -5 ~0.5 0 4 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 16 at @s run clone from minecraft:overworld -9 ~ -160 0 ~ 160 to switch:game -9 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 17 at @s in switch:game run particle cloud 4 ~0.5 0 4 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 17 at @s run clone from minecraft:overworld 0 ~ -160 9 ~ 160 to switch:game 0 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 18 at @s in switch:game run particle cloud 14 ~0.5 0 5 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 18 at @s run clone from minecraft:overworld 9 ~ -160 19 ~ 160 to switch:game 9 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 19 at @s in switch:game run particle cloud 23 ~0.5 0 4 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 19 at @s run clone from minecraft:overworld 19 ~ -160 28 ~ 160 to switch:game 19 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 20 at @s in switch:game run particle cloud 33 ~0.5 0 5 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 20 at @s run clone from minecraft:overworld 28 ~ -160 38 ~ 160 to switch:game 28 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 21 at @s in switch:game run particle cloud 42 ~0.5 0 4 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 21 at @s run clone from minecraft:overworld 38 ~ -160 47 ~ 160 to switch:game 38 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 22 at @s in switch:game run particle cloud 51 ~0.5 0 4 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 22 at @s run clone from minecraft:overworld 47 ~ -160 56 ~ 160 to switch:game 47 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 23 at @s in switch:game run particle cloud 61 ~0.5 0 5 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 23 at @s run clone from minecraft:overworld 56 ~ -160 66 ~ 160 to switch:game 56 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 24 at @s in switch:game run particle cloud 70 ~0.5 0 4 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 24 at @s run clone from minecraft:overworld 66 ~ -160 75 ~ 160 to switch:game 66 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 25 at @s in switch:game run particle cloud 80 ~0.5 0 5 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 25 at @s run clone from minecraft:overworld 75 ~ -160 85 ~ 160 to switch:game 75 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 26 at @s in switch:game run particle cloud 89 ~0.5 0 4 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 26 at @s run clone from minecraft:overworld 85 ~ -160 94 ~ 160 to switch:game 85 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 27 at @s in switch:game run particle cloud 99 ~0.5 0 5 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 27 at @s run clone from minecraft:overworld 94 ~ -160 104 ~ 160 to switch:game 94 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 28 at @s in switch:game run particle cloud 108 ~0.5 0 4 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 28 at @s run clone from minecraft:overworld 104 ~ -160 113 ~ 160 to switch:game 104 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 29 at @s in switch:game run particle cloud 117 ~0.5 0 4 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 29 at @s run clone from minecraft:overworld 113 ~ -160 122 ~ 160 to switch:game 113 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 30 at @s in switch:game run particle cloud 127 ~0.5 0 5 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 30 at @s run clone from minecraft:overworld 122 ~ -160 132 ~ 160 to switch:game 122 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 31 at @s in switch:game run particle cloud 136 ~0.5 0 4 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 31 at @s run clone from minecraft:overworld 132 ~ -160 141 ~ 160 to switch:game 132 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 32 at @s in switch:game run particle cloud 146 ~0.5 0 5 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 32 at @s run clone from minecraft:overworld 141 ~ -160 151 ~ 160 to switch:game 141 ~0 -160 replace force

execute if score #rg_switch_space_mod switch.data matches 33 at @s in switch:game run particle cloud 155 ~0.5 0 4 0 80 0 250 force
execute if score #rg_switch_space_mod switch.data matches 33 at @s run clone from minecraft:overworld 151 ~ -160 160 ~ 160 to switch:game 151 ~0 -160 replace force

scoreboard players add #rg_switch_space_mod switch.data 1
execute if score #rg_switch_space_mod switch.data matches 34 in switch:game run kill @e[type=item,x=0,y=-64,z=0,distance=..1000]
execute if score #rg_switch_space_mod switch.data matches 34 run scoreboard players add #rg_switch_space_y switch.data 1
execute if score #rg_switch_space_mod switch.data matches 34 run scoreboard players set #rg_switch_space_mod switch.data 0

kill @s

