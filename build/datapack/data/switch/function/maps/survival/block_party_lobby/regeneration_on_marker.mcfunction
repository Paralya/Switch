
#> switch:maps/survival/block_party_lobby/regeneration_on_marker
#
# @within	switch:maps/survival/block_party_lobby/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_block_party_lobby_y switch.data

execute if score #rg_block_party_lobby_mod switch.data matches 0 at @s in switch:game run particle cloud 131009 ~100.5 131074 9 0 37 0 250 force
execute if score #rg_block_party_lobby_mod switch.data matches 0 at @s run clone from minecraft:overworld 131000 ~ 131000 131018 ~ 131148 to switch:game 131000 ~100 131000 replace force

execute if score #rg_block_party_lobby_mod switch.data matches 1 at @s in switch:game run particle cloud 131027 ~100.5 131074 9 0 37 0 250 force
execute if score #rg_block_party_lobby_mod switch.data matches 1 at @s run clone from minecraft:overworld 131018 ~ 131000 131037 ~ 131148 to switch:game 131018 ~100 131000 replace force

execute if score #rg_block_party_lobby_mod switch.data matches 2 at @s in switch:game run particle cloud 131046 ~100.5 131074 9 0 37 0 250 force
execute if score #rg_block_party_lobby_mod switch.data matches 2 at @s run clone from minecraft:overworld 131037 ~ 131000 131056 ~ 131148 to switch:game 131037 ~100 131000 replace force

execute if score #rg_block_party_lobby_mod switch.data matches 3 at @s in switch:game run particle cloud 131065 ~100.5 131074 9 0 37 0 250 force
execute if score #rg_block_party_lobby_mod switch.data matches 3 at @s run clone from minecraft:overworld 131056 ~ 131000 131074 ~ 131148 to switch:game 131056 ~100 131000 replace force

execute if score #rg_block_party_lobby_mod switch.data matches 4 at @s in switch:game run particle cloud 131083 ~100.5 131074 9 0 37 0 250 force
execute if score #rg_block_party_lobby_mod switch.data matches 4 at @s run clone from minecraft:overworld 131074 ~ 131000 131092 ~ 131148 to switch:game 131074 ~100 131000 replace force

execute if score #rg_block_party_lobby_mod switch.data matches 5 at @s in switch:game run particle cloud 131101 ~100.5 131074 9 0 37 0 250 force
execute if score #rg_block_party_lobby_mod switch.data matches 5 at @s run clone from minecraft:overworld 131092 ~ 131000 131111 ~ 131148 to switch:game 131092 ~100 131000 replace force

execute if score #rg_block_party_lobby_mod switch.data matches 6 at @s in switch:game run particle cloud 131120 ~100.5 131074 9 0 37 0 250 force
execute if score #rg_block_party_lobby_mod switch.data matches 6 at @s run clone from minecraft:overworld 131111 ~ 131000 131130 ~ 131148 to switch:game 131111 ~100 131000 replace force

execute if score #rg_block_party_lobby_mod switch.data matches 7 at @s in switch:game run particle cloud 131139 ~100.5 131074 9 0 37 0 250 force
execute if score #rg_block_party_lobby_mod switch.data matches 7 at @s run clone from minecraft:overworld 131130 ~ 131000 131148 ~ 131148 to switch:game 131130 ~100 131000 replace force

execute if score #rg_block_party_lobby_mod switch.data matches 8 at @s in switch:game run particle cloud 131157 ~100.5 131074 9 0 37 0 250 force
execute if score #rg_block_party_lobby_mod switch.data matches 8 at @s run clone from minecraft:overworld 131148 ~ 131000 131166 ~ 131148 to switch:game 131148 ~100 131000 replace force

execute if score #rg_block_party_lobby_mod switch.data matches 9 at @s in switch:game run particle cloud 131175 ~100.5 131074 9 0 37 0 250 force
execute if score #rg_block_party_lobby_mod switch.data matches 9 at @s run clone from minecraft:overworld 131166 ~ 131000 131185 ~ 131148 to switch:game 131166 ~100 131000 replace force

execute if score #rg_block_party_lobby_mod switch.data matches 10 at @s in switch:game run particle cloud 131194 ~100.5 131074 9 0 37 0 250 force
execute if score #rg_block_party_lobby_mod switch.data matches 10 at @s run clone from minecraft:overworld 131185 ~ 131000 131204 ~ 131148 to switch:game 131185 ~100 131000 replace force

execute if score #rg_block_party_lobby_mod switch.data matches 11 at @s in switch:game run particle cloud 131213 ~100.5 131074 9 0 37 0 250 force
execute if score #rg_block_party_lobby_mod switch.data matches 11 at @s run clone from minecraft:overworld 131204 ~ 131000 131222 ~ 131148 to switch:game 131204 ~100 131000 replace force

scoreboard players add #rg_block_party_lobby_mod switch.data 1
execute if score #rg_block_party_lobby_mod switch.data matches 12 in switch:game run kill @e[type=item,x=131111,y=0,z=131074,distance=..1000]
execute if score #rg_block_party_lobby_mod switch.data matches 12 run scoreboard players add #rg_block_party_lobby_y switch.data 1
execute if score #rg_block_party_lobby_mod switch.data matches 12 run scoreboard players set #rg_block_party_lobby_mod switch.data 0

kill @s

