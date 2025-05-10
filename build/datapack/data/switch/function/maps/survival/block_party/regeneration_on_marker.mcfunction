
#> switch:maps/survival/block_party/regeneration_on_marker
#
# @within	switch:maps/survival/block_party/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_block_party_y switch.data

execute if score #rg_block_party_mod switch.data matches 0 at @s in switch:game run particle cloud 110009 ~11.5 110040 10 0 20 0 250 force
execute if score #rg_block_party_mod switch.data matches 0 at @s run clone from minecraft:overworld 109999 ~ 109999 110019 ~ 110081 to switch:game 109999 ~11 109999 replace force

execute if score #rg_block_party_mod switch.data matches 1 at @s in switch:game run particle cloud 110029 ~11.5 110040 10 0 20 0 250 force
execute if score #rg_block_party_mod switch.data matches 1 at @s run clone from minecraft:overworld 110019 ~ 109999 110040 ~ 110081 to switch:game 110019 ~11 109999 replace force

execute if score #rg_block_party_mod switch.data matches 2 at @s in switch:game run particle cloud 110050 ~11.5 110040 10 0 20 0 250 force
execute if score #rg_block_party_mod switch.data matches 2 at @s run clone from minecraft:overworld 110040 ~ 109999 110060 ~ 110081 to switch:game 110040 ~11 109999 replace force

execute if score #rg_block_party_mod switch.data matches 3 at @s in switch:game run particle cloud 110070 ~11.5 110040 10 0 20 0 250 force
execute if score #rg_block_party_mod switch.data matches 3 at @s run clone from minecraft:overworld 110060 ~ 109999 110080 ~ 110081 to switch:game 110060 ~11 109999 replace force

scoreboard players add #rg_block_party_mod switch.data 1
execute if score #rg_block_party_mod switch.data matches 4 in switch:game run kill @e[type=item,x=110039,y=89,z=110040,distance=..1000]
execute if score #rg_block_party_mod switch.data matches 4 run scoreboard players add #rg_block_party_y switch.data 1
execute if score #rg_block_party_mod switch.data matches 4 run scoreboard players set #rg_block_party_mod switch.data 0

kill @s

