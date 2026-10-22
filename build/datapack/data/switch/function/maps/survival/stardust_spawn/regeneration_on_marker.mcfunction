
#> switch:maps/survival/stardust_spawn/regeneration_on_marker
#
# @within	switch:maps/survival/stardust_spawn/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_stardust_spawn_y switch.data

execute if score #rg_stardust_spawn_mod switch.data matches 0 at @s in switch:game run particle cloud -9990 ~0.5 -9940 10 0 30 0 250 force
execute if score #rg_stardust_spawn_mod switch.data matches 0 at @s run clone from minecraft:overworld -10000 ~ -10000 -9980 ~ -9880 to switch:game -10000 ~0 -10000 strict replace force

execute if score #rg_stardust_spawn_mod switch.data matches 1 at @s in switch:game run particle cloud -9970 ~0.5 -9940 10 0 30 0 250 force
execute if score #rg_stardust_spawn_mod switch.data matches 1 at @s run clone from minecraft:overworld -9980 ~ -10000 -9960 ~ -9880 to switch:game -9980 ~0 -10000 strict replace force

execute if score #rg_stardust_spawn_mod switch.data matches 2 at @s in switch:game run particle cloud -9950 ~0.5 -9940 10 0 30 0 250 force
execute if score #rg_stardust_spawn_mod switch.data matches 2 at @s run clone from minecraft:overworld -9960 ~ -10000 -9940 ~ -9880 to switch:game -9960 ~0 -10000 strict replace force

execute if score #rg_stardust_spawn_mod switch.data matches 3 at @s in switch:game run particle cloud -9930 ~0.5 -9940 10 0 30 0 250 force
execute if score #rg_stardust_spawn_mod switch.data matches 3 at @s run clone from minecraft:overworld -9940 ~ -10000 -9920 ~ -9880 to switch:game -9940 ~0 -10000 strict replace force

execute if score #rg_stardust_spawn_mod switch.data matches 4 at @s in switch:game run particle cloud -9910 ~0.5 -9940 10 0 30 0 250 force
execute if score #rg_stardust_spawn_mod switch.data matches 4 at @s run clone from minecraft:overworld -9920 ~ -10000 -9900 ~ -9880 to switch:game -9920 ~0 -10000 strict replace force

execute if score #rg_stardust_spawn_mod switch.data matches 5 at @s in switch:game run particle cloud -9890 ~0.5 -9940 10 0 30 0 250 force
execute if score #rg_stardust_spawn_mod switch.data matches 5 at @s run clone from minecraft:overworld -9900 ~ -10000 -9880 ~ -9880 to switch:game -9900 ~0 -10000 strict replace force

scoreboard players add #rg_stardust_spawn_mod switch.data 1
execute if score #rg_stardust_spawn_mod switch.data matches 6 in switch:game run kill @e[type=item,x=-9940,y=100,z=-9940,distance=..1000]
execute if score #rg_stardust_spawn_mod switch.data matches 6 run scoreboard players add #rg_stardust_spawn_y switch.data 1
execute if score #rg_stardust_spawn_mod switch.data matches 6 run scoreboard players set #rg_stardust_spawn_mod switch.data 0

kill @s

