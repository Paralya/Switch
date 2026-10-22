
#> switch:maps/survival/la_fromagerie/regeneration_on_marker
#
# @within	switch:maps/survival/la_fromagerie/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_la_fromagerie_y switch.data

execute if score #rg_la_fromagerie_mod switch.data matches 0 at @s in switch:game run particle cloud 4010 ~0.5 -7951 10 0 24 0 250 force
execute if score #rg_la_fromagerie_mod switch.data matches 0 at @s run clone from minecraft:overworld 4000 ~ -8000 4020 ~ -7901 to switch:game 4000 ~0 -8000 strict replace force

execute if score #rg_la_fromagerie_mod switch.data matches 1 at @s in switch:game run particle cloud 4030 ~0.5 -7951 10 0 24 0 250 force
execute if score #rg_la_fromagerie_mod switch.data matches 1 at @s run clone from minecraft:overworld 4020 ~ -8000 4040 ~ -7901 to switch:game 4020 ~0 -8000 strict replace force

execute if score #rg_la_fromagerie_mod switch.data matches 2 at @s in switch:game run particle cloud 4049 ~0.5 -7951 9 0 24 0 250 force
execute if score #rg_la_fromagerie_mod switch.data matches 2 at @s run clone from minecraft:overworld 4040 ~ -8000 4059 ~ -7901 to switch:game 4040 ~0 -8000 strict replace force

execute if score #rg_la_fromagerie_mod switch.data matches 3 at @s in switch:game run particle cloud 4069 ~0.5 -7951 10 0 24 0 250 force
execute if score #rg_la_fromagerie_mod switch.data matches 3 at @s run clone from minecraft:overworld 4059 ~ -8000 4079 ~ -7901 to switch:game 4059 ~0 -8000 strict replace force

execute if score #rg_la_fromagerie_mod switch.data matches 4 at @s in switch:game run particle cloud 4089 ~0.5 -7951 10 0 24 0 250 force
execute if score #rg_la_fromagerie_mod switch.data matches 4 at @s run clone from minecraft:overworld 4079 ~ -8000 4099 ~ -7901 to switch:game 4079 ~0 -8000 strict replace force

scoreboard players add #rg_la_fromagerie_mod switch.data 1
execute if score #rg_la_fromagerie_mod switch.data matches 5 in switch:game run kill @e[type=item,x=4049,y=100,z=-7950,distance=..1000]
execute if score #rg_la_fromagerie_mod switch.data matches 5 run scoreboard players add #rg_la_fromagerie_y switch.data 1
execute if score #rg_la_fromagerie_mod switch.data matches 5 run scoreboard players set #rg_la_fromagerie_mod switch.data 0

kill @s

