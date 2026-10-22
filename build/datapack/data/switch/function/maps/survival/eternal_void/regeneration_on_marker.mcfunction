
#> switch:maps/survival/eternal_void/regeneration_on_marker
#
# @within	switch:maps/survival/eternal_void/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_eternal_void_y switch.data

execute if score #rg_eternal_void_mod switch.data matches 0 at @s in switch:game run particle cloud 8010 ~0.5 -7950 10 0 25 0 250 force
execute if score #rg_eternal_void_mod switch.data matches 0 at @s run clone from minecraft:overworld 8000 ~ -8000 8020 ~ -7900 to switch:game 8000 ~0 -8000 strict replace force

execute if score #rg_eternal_void_mod switch.data matches 1 at @s in switch:game run particle cloud 8030 ~0.5 -7950 10 0 25 0 250 force
execute if score #rg_eternal_void_mod switch.data matches 1 at @s run clone from minecraft:overworld 8020 ~ -8000 8040 ~ -7900 to switch:game 8020 ~0 -8000 strict replace force

execute if score #rg_eternal_void_mod switch.data matches 2 at @s in switch:game run particle cloud 8050 ~0.5 -7950 10 0 25 0 250 force
execute if score #rg_eternal_void_mod switch.data matches 2 at @s run clone from minecraft:overworld 8040 ~ -8000 8060 ~ -7900 to switch:game 8040 ~0 -8000 strict replace force

execute if score #rg_eternal_void_mod switch.data matches 3 at @s in switch:game run particle cloud 8070 ~0.5 -7950 10 0 25 0 250 force
execute if score #rg_eternal_void_mod switch.data matches 3 at @s run clone from minecraft:overworld 8060 ~ -8000 8080 ~ -7900 to switch:game 8060 ~0 -8000 strict replace force

execute if score #rg_eternal_void_mod switch.data matches 4 at @s in switch:game run particle cloud 8090 ~0.5 -7950 10 0 25 0 250 force
execute if score #rg_eternal_void_mod switch.data matches 4 at @s run clone from minecraft:overworld 8080 ~ -8000 8100 ~ -7900 to switch:game 8080 ~0 -8000 strict replace force

scoreboard players add #rg_eternal_void_mod switch.data 1
execute if score #rg_eternal_void_mod switch.data matches 5 in switch:game run kill @e[type=item,x=8050,y=100,z=-7950,distance=..1000]
execute if score #rg_eternal_void_mod switch.data matches 5 run scoreboard players add #rg_eternal_void_y switch.data 1
execute if score #rg_eternal_void_mod switch.data matches 5 run scoreboard players set #rg_eternal_void_mod switch.data 0

kill @s

