
#> switch:maps/survival/paralya_lobby/regeneration_on_marker
#
# @within	switch:maps/survival/paralya_lobby/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_paralya_lobby_y switch.data

execute if score #rg_paralya_lobby_mod switch.data matches 0 at @s in switch:game run particle cloud 99007 ~163.5 99100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_mod switch.data matches 0 at @s run clone from minecraft:overworld 99000 ~ 99000 99014 ~ 99200 to switch:game 99000 ~163 99000 replace force

execute if score #rg_paralya_lobby_mod switch.data matches 1 at @s in switch:game run particle cloud 99021 ~163.5 99100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_mod switch.data matches 1 at @s run clone from minecraft:overworld 99014 ~ 99000 99029 ~ 99200 to switch:game 99014 ~163 99000 replace force

execute if score #rg_paralya_lobby_mod switch.data matches 2 at @s in switch:game run particle cloud 99036 ~163.5 99100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_mod switch.data matches 2 at @s run clone from minecraft:overworld 99029 ~ 99000 99043 ~ 99200 to switch:game 99029 ~163 99000 replace force

execute if score #rg_paralya_lobby_mod switch.data matches 3 at @s in switch:game run particle cloud 99050 ~163.5 99100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_mod switch.data matches 3 at @s run clone from minecraft:overworld 99043 ~ 99000 99057 ~ 99200 to switch:game 99043 ~163 99000 replace force

execute if score #rg_paralya_lobby_mod switch.data matches 4 at @s in switch:game run particle cloud 99064 ~163.5 99100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_mod switch.data matches 4 at @s run clone from minecraft:overworld 99057 ~ 99000 99071 ~ 99200 to switch:game 99057 ~163 99000 replace force

execute if score #rg_paralya_lobby_mod switch.data matches 5 at @s in switch:game run particle cloud 99078 ~163.5 99100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_mod switch.data matches 5 at @s run clone from minecraft:overworld 99071 ~ 99000 99086 ~ 99200 to switch:game 99071 ~163 99000 replace force

execute if score #rg_paralya_lobby_mod switch.data matches 6 at @s in switch:game run particle cloud 99093 ~163.5 99100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_mod switch.data matches 6 at @s run clone from minecraft:overworld 99086 ~ 99000 99100 ~ 99200 to switch:game 99086 ~163 99000 replace force

execute if score #rg_paralya_lobby_mod switch.data matches 7 at @s in switch:game run particle cloud 99107 ~163.5 99100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_mod switch.data matches 7 at @s run clone from minecraft:overworld 99100 ~ 99000 99114 ~ 99200 to switch:game 99100 ~163 99000 replace force

execute if score #rg_paralya_lobby_mod switch.data matches 8 at @s in switch:game run particle cloud 99121 ~163.5 99100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_mod switch.data matches 8 at @s run clone from minecraft:overworld 99114 ~ 99000 99129 ~ 99200 to switch:game 99114 ~163 99000 replace force

execute if score #rg_paralya_lobby_mod switch.data matches 9 at @s in switch:game run particle cloud 99136 ~163.5 99100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_mod switch.data matches 9 at @s run clone from minecraft:overworld 99129 ~ 99000 99143 ~ 99200 to switch:game 99129 ~163 99000 replace force

execute if score #rg_paralya_lobby_mod switch.data matches 10 at @s in switch:game run particle cloud 99150 ~163.5 99100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_mod switch.data matches 10 at @s run clone from minecraft:overworld 99143 ~ 99000 99157 ~ 99200 to switch:game 99143 ~163 99000 replace force

execute if score #rg_paralya_lobby_mod switch.data matches 11 at @s in switch:game run particle cloud 99164 ~163.5 99100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_mod switch.data matches 11 at @s run clone from minecraft:overworld 99157 ~ 99000 99171 ~ 99200 to switch:game 99157 ~163 99000 replace force

execute if score #rg_paralya_lobby_mod switch.data matches 12 at @s in switch:game run particle cloud 99178 ~163.5 99100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_mod switch.data matches 12 at @s run clone from minecraft:overworld 99171 ~ 99000 99186 ~ 99200 to switch:game 99171 ~163 99000 replace force

execute if score #rg_paralya_lobby_mod switch.data matches 13 at @s in switch:game run particle cloud 99193 ~163.5 99100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_mod switch.data matches 13 at @s run clone from minecraft:overworld 99186 ~ 99000 99200 ~ 99200 to switch:game 99186 ~163 99000 replace force

scoreboard players add #rg_paralya_lobby_mod switch.data 1
execute if score #rg_paralya_lobby_mod switch.data matches 14 in switch:game run kill @e[type=item,x=99100,y=-63,z=99100,distance=..1000]
execute if score #rg_paralya_lobby_mod switch.data matches 14 run scoreboard players add #rg_paralya_lobby_y switch.data 1
execute if score #rg_paralya_lobby_mod switch.data matches 14 run scoreboard players set #rg_paralya_lobby_mod switch.data 0

kill @s

