
#> switch:maps/survival/lost_graveyard_remastered/regeneration_on_marker
#
# @within	switch:maps/survival/lost_graveyard_remastered/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_lost_graveyard_remastered_y switch.data

execute if score #rg_lost_graveyard_remastered_mod switch.data matches 0 at @s in switch:game run particle cloud 2009 ~0.5 10067 9 0 33 0 250 force
execute if score #rg_lost_graveyard_remastered_mod switch.data matches 0 at @s run clone from minecraft:overworld 2000 ~ 10000 2019 ~ 10134 to switch:game 2000 ~0 10000 strict replace force

execute if score #rg_lost_graveyard_remastered_mod switch.data matches 1 at @s in switch:game run particle cloud 2028 ~0.5 10067 9 0 33 0 250 force
execute if score #rg_lost_graveyard_remastered_mod switch.data matches 1 at @s run clone from minecraft:overworld 2019 ~ 10000 2038 ~ 10134 to switch:game 2019 ~0 10000 strict replace force

execute if score #rg_lost_graveyard_remastered_mod switch.data matches 2 at @s in switch:game run particle cloud 2047 ~0.5 10067 9 0 33 0 250 force
execute if score #rg_lost_graveyard_remastered_mod switch.data matches 2 at @s run clone from minecraft:overworld 2038 ~ 10000 2056 ~ 10134 to switch:game 2038 ~0 10000 strict replace force

execute if score #rg_lost_graveyard_remastered_mod switch.data matches 3 at @s in switch:game run particle cloud 2065 ~0.5 10067 9 0 33 0 250 force
execute if score #rg_lost_graveyard_remastered_mod switch.data matches 3 at @s run clone from minecraft:overworld 2056 ~ 10000 2075 ~ 10134 to switch:game 2056 ~0 10000 strict replace force

execute if score #rg_lost_graveyard_remastered_mod switch.data matches 4 at @s in switch:game run particle cloud 2084 ~0.5 10067 9 0 33 0 250 force
execute if score #rg_lost_graveyard_remastered_mod switch.data matches 4 at @s run clone from minecraft:overworld 2075 ~ 10000 2094 ~ 10134 to switch:game 2075 ~0 10000 strict replace force

execute if score #rg_lost_graveyard_remastered_mod switch.data matches 5 at @s in switch:game run particle cloud 2103 ~0.5 10067 9 0 33 0 250 force
execute if score #rg_lost_graveyard_remastered_mod switch.data matches 5 at @s run clone from minecraft:overworld 2094 ~ 10000 2112 ~ 10134 to switch:game 2094 ~0 10000 strict replace force

execute if score #rg_lost_graveyard_remastered_mod switch.data matches 6 at @s in switch:game run particle cloud 2121 ~0.5 10067 9 0 33 0 250 force
execute if score #rg_lost_graveyard_remastered_mod switch.data matches 6 at @s run clone from minecraft:overworld 2112 ~ 10000 2131 ~ 10134 to switch:game 2112 ~0 10000 strict replace force

execute if score #rg_lost_graveyard_remastered_mod switch.data matches 7 at @s in switch:game run particle cloud 2140 ~0.5 10067 9 0 33 0 250 force
execute if score #rg_lost_graveyard_remastered_mod switch.data matches 7 at @s run clone from minecraft:overworld 2131 ~ 10000 2150 ~ 10134 to switch:game 2131 ~0 10000 strict replace force

scoreboard players add #rg_lost_graveyard_remastered_mod switch.data 1
execute if score #rg_lost_graveyard_remastered_mod switch.data matches 8 in switch:game run kill @e[type=item,x=2075,y=100,z=10067,distance=..1000]
execute if score #rg_lost_graveyard_remastered_mod switch.data matches 8 run scoreboard players add #rg_lost_graveyard_remastered_y switch.data 1
execute if score #rg_lost_graveyard_remastered_mod switch.data matches 8 run scoreboard players set #rg_lost_graveyard_remastered_mod switch.data 0

kill @s

