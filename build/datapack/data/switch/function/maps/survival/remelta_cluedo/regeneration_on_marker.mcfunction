
#> switch:maps/survival/remelta_cluedo/regeneration_on_marker
#
# @within	switch:maps/survival/remelta_cluedo/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_remelta_cluedo_y switch.data

execute if score #rg_remelta_cluedo_mod switch.data matches 0 at @s in switch:game run particle cloud 10015 ~0.5 -5967 15 0 16 0 250 force
execute if score #rg_remelta_cluedo_mod switch.data matches 0 at @s run clone from minecraft:overworld 10000 ~ -6000 10030 ~ -5934 to switch:game 10000 ~0 -6000 strict replace force

execute if score #rg_remelta_cluedo_mod switch.data matches 1 at @s in switch:game run particle cloud 10044 ~0.5 -5967 14 0 16 0 250 force
execute if score #rg_remelta_cluedo_mod switch.data matches 1 at @s run clone from minecraft:overworld 10030 ~ -6000 10059 ~ -5934 to switch:game 10030 ~0 -6000 strict replace force

execute if score #rg_remelta_cluedo_mod switch.data matches 2 at @s in switch:game run particle cloud 10074 ~0.5 -5967 15 0 16 0 250 force
execute if score #rg_remelta_cluedo_mod switch.data matches 2 at @s run clone from minecraft:overworld 10059 ~ -6000 10089 ~ -5934 to switch:game 10059 ~0 -6000 strict replace force

scoreboard players add #rg_remelta_cluedo_mod switch.data 1
execute if score #rg_remelta_cluedo_mod switch.data matches 3 in switch:game run kill @e[type=item,x=10044,y=100,z=-5967,distance=..1000]
execute if score #rg_remelta_cluedo_mod switch.data matches 3 run scoreboard players add #rg_remelta_cluedo_y switch.data 1
execute if score #rg_remelta_cluedo_mod switch.data matches 3 run scoreboard players set #rg_remelta_cluedo_mod switch.data 0

kill @s

