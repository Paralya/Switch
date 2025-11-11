
#> switch:maps/survival/paralya_lobby_noel/regeneration_on_marker
#
# @within	switch:maps/survival/paralya_lobby_noel/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_paralya_lobby_noel_y switch.data

execute if score #rg_paralya_lobby_noel_mod switch.data matches 0 at @s in switch:game run particle cloud 40007 ~0.5 40100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 0 at @s run clone from minecraft:overworld 40000 ~ 40000 40014 ~ 40200 to switch:game 40000 ~0 40000 strict replace force

execute if score #rg_paralya_lobby_noel_mod switch.data matches 1 at @s in switch:game run particle cloud 40021 ~0.5 40100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 1 at @s run clone from minecraft:overworld 40014 ~ 40000 40029 ~ 40200 to switch:game 40014 ~0 40000 strict replace force

execute if score #rg_paralya_lobby_noel_mod switch.data matches 2 at @s in switch:game run particle cloud 40036 ~0.5 40100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 2 at @s run clone from minecraft:overworld 40029 ~ 40000 40043 ~ 40200 to switch:game 40029 ~0 40000 strict replace force

execute if score #rg_paralya_lobby_noel_mod switch.data matches 3 at @s in switch:game run particle cloud 40050 ~0.5 40100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 3 at @s run clone from minecraft:overworld 40043 ~ 40000 40057 ~ 40200 to switch:game 40043 ~0 40000 strict replace force

execute if score #rg_paralya_lobby_noel_mod switch.data matches 4 at @s in switch:game run particle cloud 40064 ~0.5 40100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 4 at @s run clone from minecraft:overworld 40057 ~ 40000 40071 ~ 40200 to switch:game 40057 ~0 40000 strict replace force

execute if score #rg_paralya_lobby_noel_mod switch.data matches 5 at @s in switch:game run particle cloud 40078 ~0.5 40100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 5 at @s run clone from minecraft:overworld 40071 ~ 40000 40086 ~ 40200 to switch:game 40071 ~0 40000 strict replace force

execute if score #rg_paralya_lobby_noel_mod switch.data matches 6 at @s in switch:game run particle cloud 40093 ~0.5 40100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 6 at @s run clone from minecraft:overworld 40086 ~ 40000 40100 ~ 40200 to switch:game 40086 ~0 40000 strict replace force

execute if score #rg_paralya_lobby_noel_mod switch.data matches 7 at @s in switch:game run particle cloud 40107 ~0.5 40100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 7 at @s run clone from minecraft:overworld 40100 ~ 40000 40114 ~ 40200 to switch:game 40100 ~0 40000 strict replace force

execute if score #rg_paralya_lobby_noel_mod switch.data matches 8 at @s in switch:game run particle cloud 40121 ~0.5 40100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 8 at @s run clone from minecraft:overworld 40114 ~ 40000 40129 ~ 40200 to switch:game 40114 ~0 40000 strict replace force

execute if score #rg_paralya_lobby_noel_mod switch.data matches 9 at @s in switch:game run particle cloud 40136 ~0.5 40100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 9 at @s run clone from minecraft:overworld 40129 ~ 40000 40143 ~ 40200 to switch:game 40129 ~0 40000 strict replace force

execute if score #rg_paralya_lobby_noel_mod switch.data matches 10 at @s in switch:game run particle cloud 40150 ~0.5 40100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 10 at @s run clone from minecraft:overworld 40143 ~ 40000 40157 ~ 40200 to switch:game 40143 ~0 40000 strict replace force

execute if score #rg_paralya_lobby_noel_mod switch.data matches 11 at @s in switch:game run particle cloud 40164 ~0.5 40100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 11 at @s run clone from minecraft:overworld 40157 ~ 40000 40171 ~ 40200 to switch:game 40157 ~0 40000 strict replace force

execute if score #rg_paralya_lobby_noel_mod switch.data matches 12 at @s in switch:game run particle cloud 40178 ~0.5 40100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 12 at @s run clone from minecraft:overworld 40171 ~ 40000 40186 ~ 40200 to switch:game 40171 ~0 40000 strict replace force

execute if score #rg_paralya_lobby_noel_mod switch.data matches 13 at @s in switch:game run particle cloud 40193 ~0.5 40100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 13 at @s run clone from minecraft:overworld 40186 ~ 40000 40200 ~ 40200 to switch:game 40186 ~0 40000 strict replace force

scoreboard players add #rg_paralya_lobby_noel_mod switch.data 1
execute if score #rg_paralya_lobby_noel_mod switch.data matches 14 in switch:game run kill @e[type=item,x=40100,y=100,z=40100,distance=..1000]
execute if score #rg_paralya_lobby_noel_mod switch.data matches 14 run scoreboard players add #rg_paralya_lobby_noel_y switch.data 1
execute if score #rg_paralya_lobby_noel_mod switch.data matches 14 run scoreboard players set #rg_paralya_lobby_noel_mod switch.data 0

kill @s

