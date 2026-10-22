
#> switch:maps/survival/lightium_spawn/regeneration_on_marker
#
# @within	switch:maps/survival/lightium_spawn/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_lightium_spawn_y switch.data

execute if score #rg_lightium_spawn_mod switch.data matches 0 at @s in switch:game run particle cloud -9991 ~0.5 -1936 9 0 32 0 250 force
execute if score #rg_lightium_spawn_mod switch.data matches 0 at @s run clone from minecraft:overworld -10000 ~ -2000 -9982 ~ -1871 to switch:game -10000 ~0 -2000 strict replace force

execute if score #rg_lightium_spawn_mod switch.data matches 1 at @s in switch:game run particle cloud -9973 ~0.5 -1936 9 0 32 0 250 force
execute if score #rg_lightium_spawn_mod switch.data matches 1 at @s run clone from minecraft:overworld -9982 ~ -2000 -9963 ~ -1871 to switch:game -9982 ~0 -2000 strict replace force

execute if score #rg_lightium_spawn_mod switch.data matches 2 at @s in switch:game run particle cloud -9954 ~0.5 -1936 9 0 32 0 250 force
execute if score #rg_lightium_spawn_mod switch.data matches 2 at @s run clone from minecraft:overworld -9963 ~ -2000 -9945 ~ -1871 to switch:game -9963 ~0 -2000 strict replace force

execute if score #rg_lightium_spawn_mod switch.data matches 3 at @s in switch:game run particle cloud -9936 ~0.5 -1936 9 0 32 0 250 force
execute if score #rg_lightium_spawn_mod switch.data matches 3 at @s run clone from minecraft:overworld -9945 ~ -2000 -9926 ~ -1871 to switch:game -9945 ~0 -2000 strict replace force

execute if score #rg_lightium_spawn_mod switch.data matches 4 at @s in switch:game run particle cloud -9917 ~0.5 -1936 9 0 32 0 250 force
execute if score #rg_lightium_spawn_mod switch.data matches 4 at @s run clone from minecraft:overworld -9926 ~ -2000 -9908 ~ -1871 to switch:game -9926 ~0 -2000 strict replace force

execute if score #rg_lightium_spawn_mod switch.data matches 5 at @s in switch:game run particle cloud -9899 ~0.5 -1936 9 0 32 0 250 force
execute if score #rg_lightium_spawn_mod switch.data matches 5 at @s run clone from minecraft:overworld -9908 ~ -2000 -9889 ~ -1871 to switch:game -9908 ~0 -2000 strict replace force

execute if score #rg_lightium_spawn_mod switch.data matches 6 at @s in switch:game run particle cloud -9880 ~0.5 -1936 9 0 32 0 250 force
execute if score #rg_lightium_spawn_mod switch.data matches 6 at @s run clone from minecraft:overworld -9889 ~ -2000 -9871 ~ -1871 to switch:game -9889 ~0 -2000 strict replace force

scoreboard players add #rg_lightium_spawn_mod switch.data 1
execute if score #rg_lightium_spawn_mod switch.data matches 7 in switch:game run kill @e[type=item,x=-9935,y=100,z=-1935,distance=..1000]
execute if score #rg_lightium_spawn_mod switch.data matches 7 run scoreboard players add #rg_lightium_spawn_y switch.data 1
execute if score #rg_lightium_spawn_mod switch.data matches 7 run scoreboard players set #rg_lightium_spawn_mod switch.data 0

kill @s

