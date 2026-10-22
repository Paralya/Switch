
#> switch:maps/survival/airship_fortress/regeneration_on_marker
#
# @within	switch:maps/survival/airship_fortress/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_airship_fortress_y switch.data

execute if score #rg_airship_fortress_mod switch.data matches 0 at @s in switch:game run particle cloud 7176 ~0.5 -5050 7 0 49 0 250 force
execute if score #rg_airship_fortress_mod switch.data matches 0 at @s run clone from minecraft:overworld 7169 ~ -5149 7184 ~ -4950 to switch:game 7169 ~0 -5149 strict replace force

execute if score #rg_airship_fortress_mod switch.data matches 1 at @s in switch:game run particle cloud 7191 ~0.5 -5050 7 0 49 0 250 force
execute if score #rg_airship_fortress_mod switch.data matches 1 at @s run clone from minecraft:overworld 7184 ~ -5149 7198 ~ -4950 to switch:game 7184 ~0 -5149 strict replace force

execute if score #rg_airship_fortress_mod switch.data matches 2 at @s in switch:game run particle cloud 7205 ~0.5 -5050 7 0 49 0 250 force
execute if score #rg_airship_fortress_mod switch.data matches 2 at @s run clone from minecraft:overworld 7198 ~ -5149 7213 ~ -4950 to switch:game 7198 ~0 -5149 strict replace force

execute if score #rg_airship_fortress_mod switch.data matches 3 at @s in switch:game run particle cloud 7220 ~0.5 -5050 7 0 49 0 250 force
execute if score #rg_airship_fortress_mod switch.data matches 3 at @s run clone from minecraft:overworld 7213 ~ -5149 7227 ~ -4950 to switch:game 7213 ~0 -5149 strict replace force

execute if score #rg_airship_fortress_mod switch.data matches 4 at @s in switch:game run particle cloud 7234 ~0.5 -5050 7 0 49 0 250 force
execute if score #rg_airship_fortress_mod switch.data matches 4 at @s run clone from minecraft:overworld 7227 ~ -5149 7242 ~ -4950 to switch:game 7227 ~0 -5149 strict replace force

execute if score #rg_airship_fortress_mod switch.data matches 5 at @s in switch:game run particle cloud 7249 ~0.5 -5050 7 0 49 0 250 force
execute if score #rg_airship_fortress_mod switch.data matches 5 at @s run clone from minecraft:overworld 7242 ~ -5149 7256 ~ -4950 to switch:game 7242 ~0 -5149 strict replace force

execute if score #rg_airship_fortress_mod switch.data matches 6 at @s in switch:game run particle cloud 7263 ~0.5 -5050 7 0 49 0 250 force
execute if score #rg_airship_fortress_mod switch.data matches 6 at @s run clone from minecraft:overworld 7256 ~ -5149 7271 ~ -4950 to switch:game 7256 ~0 -5149 strict replace force

execute if score #rg_airship_fortress_mod switch.data matches 7 at @s in switch:game run particle cloud 7278 ~0.5 -5050 7 0 49 0 250 force
execute if score #rg_airship_fortress_mod switch.data matches 7 at @s run clone from minecraft:overworld 7271 ~ -5149 7286 ~ -4950 to switch:game 7271 ~0 -5149 strict replace force

execute if score #rg_airship_fortress_mod switch.data matches 8 at @s in switch:game run particle cloud 7293 ~0.5 -5050 7 0 49 0 250 force
execute if score #rg_airship_fortress_mod switch.data matches 8 at @s run clone from minecraft:overworld 7286 ~ -5149 7300 ~ -4950 to switch:game 7286 ~0 -5149 strict replace force

execute if score #rg_airship_fortress_mod switch.data matches 9 at @s in switch:game run particle cloud 7307 ~0.5 -5050 7 0 49 0 250 force
execute if score #rg_airship_fortress_mod switch.data matches 9 at @s run clone from minecraft:overworld 7300 ~ -5149 7315 ~ -4950 to switch:game 7300 ~0 -5149 strict replace force

execute if score #rg_airship_fortress_mod switch.data matches 10 at @s in switch:game run particle cloud 7322 ~0.5 -5050 7 0 49 0 250 force
execute if score #rg_airship_fortress_mod switch.data matches 10 at @s run clone from minecraft:overworld 7315 ~ -5149 7329 ~ -4950 to switch:game 7315 ~0 -5149 strict replace force

execute if score #rg_airship_fortress_mod switch.data matches 11 at @s in switch:game run particle cloud 7336 ~0.5 -5050 7 0 49 0 250 force
execute if score #rg_airship_fortress_mod switch.data matches 11 at @s run clone from minecraft:overworld 7329 ~ -5149 7344 ~ -4950 to switch:game 7329 ~0 -5149 strict replace force

scoreboard players add #rg_airship_fortress_mod switch.data 1
execute if score #rg_airship_fortress_mod switch.data matches 12 in switch:game run kill @e[type=item,x=7256,y=70,z=-5049,distance=..1000]
execute if score #rg_airship_fortress_mod switch.data matches 12 run scoreboard players add #rg_airship_fortress_y switch.data 1
execute if score #rg_airship_fortress_mod switch.data matches 12 run scoreboard players set #rg_airship_fortress_mod switch.data 0

kill @s

