
#> switch:maps/survival/lost_graveyard_remastered/regeneration_on_marker
#
# @within	switch:maps/survival/lost_graveyard_remastered/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_lost_graveyard_remastered_y switch.data

execute if score #rg_lost_graveyard_remastered_mod switch.data matches 0 at @s in switch:game run particle cloud 127009 ~100.5 127067 9 0 33 0 250 force
execute if score #rg_lost_graveyard_remastered_mod switch.data matches 0 at @s run clone from minecraft:overworld 127000 ~ 127000 127019 ~ 127134 to switch:game 127000 ~100 127000 replace force

execute if score #rg_lost_graveyard_remastered_mod switch.data matches 1 at @s in switch:game run particle cloud 127028 ~100.5 127067 9 0 33 0 250 force
execute if score #rg_lost_graveyard_remastered_mod switch.data matches 1 at @s run clone from minecraft:overworld 127019 ~ 127000 127038 ~ 127134 to switch:game 127019 ~100 127000 replace force

execute if score #rg_lost_graveyard_remastered_mod switch.data matches 2 at @s in switch:game run particle cloud 127047 ~100.5 127067 9 0 33 0 250 force
execute if score #rg_lost_graveyard_remastered_mod switch.data matches 2 at @s run clone from minecraft:overworld 127038 ~ 127000 127056 ~ 127134 to switch:game 127038 ~100 127000 replace force

execute if score #rg_lost_graveyard_remastered_mod switch.data matches 3 at @s in switch:game run particle cloud 127065 ~100.5 127067 9 0 33 0 250 force
execute if score #rg_lost_graveyard_remastered_mod switch.data matches 3 at @s run clone from minecraft:overworld 127056 ~ 127000 127075 ~ 127134 to switch:game 127056 ~100 127000 replace force

execute if score #rg_lost_graveyard_remastered_mod switch.data matches 4 at @s in switch:game run particle cloud 127084 ~100.5 127067 9 0 33 0 250 force
execute if score #rg_lost_graveyard_remastered_mod switch.data matches 4 at @s run clone from minecraft:overworld 127075 ~ 127000 127094 ~ 127134 to switch:game 127075 ~100 127000 replace force

execute if score #rg_lost_graveyard_remastered_mod switch.data matches 5 at @s in switch:game run particle cloud 127103 ~100.5 127067 9 0 33 0 250 force
execute if score #rg_lost_graveyard_remastered_mod switch.data matches 5 at @s run clone from minecraft:overworld 127094 ~ 127000 127112 ~ 127134 to switch:game 127094 ~100 127000 replace force

execute if score #rg_lost_graveyard_remastered_mod switch.data matches 6 at @s in switch:game run particle cloud 127121 ~100.5 127067 9 0 33 0 250 force
execute if score #rg_lost_graveyard_remastered_mod switch.data matches 6 at @s run clone from minecraft:overworld 127112 ~ 127000 127131 ~ 127134 to switch:game 127112 ~100 127000 replace force

execute if score #rg_lost_graveyard_remastered_mod switch.data matches 7 at @s in switch:game run particle cloud 127140 ~100.5 127067 9 0 33 0 250 force
execute if score #rg_lost_graveyard_remastered_mod switch.data matches 7 at @s run clone from minecraft:overworld 127131 ~ 127000 127150 ~ 127134 to switch:game 127131 ~100 127000 replace force

scoreboard players add #rg_lost_graveyard_remastered_mod switch.data 1
execute if score #rg_lost_graveyard_remastered_mod switch.data matches 8 in switch:game run kill @e[type=item,x=127075,y=0,z=127067,distance=..1000]
execute if score #rg_lost_graveyard_remastered_mod switch.data matches 8 run scoreboard players add #rg_lost_graveyard_remastered_y switch.data 1
execute if score #rg_lost_graveyard_remastered_mod switch.data matches 8 run scoreboard players set #rg_lost_graveyard_remastered_mod switch.data 0

kill @s

