
#> switch:maps/survival/paralya_lobby/regeneration_on_marker
#
# @within	switch:maps/survival/paralya_lobby/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_paralya_lobby_y switch.data

execute if score #rg_paralya_lobby_mod switch.data matches 0 at @s in switch:game run particle cloud -9993 ~0.5 -5900 7 0 50 0 250 force
execute if score #rg_paralya_lobby_mod switch.data matches 0 at @s run clone from minecraft:overworld -10000 ~ -6000 -9986 ~ -5800 to switch:game -10000 ~0 -6000 strict replace force

execute if score #rg_paralya_lobby_mod switch.data matches 1 at @s in switch:game run particle cloud -9979 ~0.5 -5900 7 0 50 0 250 force
execute if score #rg_paralya_lobby_mod switch.data matches 1 at @s run clone from minecraft:overworld -9986 ~ -6000 -9971 ~ -5800 to switch:game -9986 ~0 -6000 strict replace force

execute if score #rg_paralya_lobby_mod switch.data matches 2 at @s in switch:game run particle cloud -9964 ~0.5 -5900 7 0 50 0 250 force
execute if score #rg_paralya_lobby_mod switch.data matches 2 at @s run clone from minecraft:overworld -9971 ~ -6000 -9957 ~ -5800 to switch:game -9971 ~0 -6000 strict replace force

execute if score #rg_paralya_lobby_mod switch.data matches 3 at @s in switch:game run particle cloud -9950 ~0.5 -5900 7 0 50 0 250 force
execute if score #rg_paralya_lobby_mod switch.data matches 3 at @s run clone from minecraft:overworld -9957 ~ -6000 -9943 ~ -5800 to switch:game -9957 ~0 -6000 strict replace force

execute if score #rg_paralya_lobby_mod switch.data matches 4 at @s in switch:game run particle cloud -9936 ~0.5 -5900 7 0 50 0 250 force
execute if score #rg_paralya_lobby_mod switch.data matches 4 at @s run clone from minecraft:overworld -9943 ~ -6000 -9929 ~ -5800 to switch:game -9943 ~0 -6000 strict replace force

execute if score #rg_paralya_lobby_mod switch.data matches 5 at @s in switch:game run particle cloud -9922 ~0.5 -5900 7 0 50 0 250 force
execute if score #rg_paralya_lobby_mod switch.data matches 5 at @s run clone from minecraft:overworld -9929 ~ -6000 -9914 ~ -5800 to switch:game -9929 ~0 -6000 strict replace force

execute if score #rg_paralya_lobby_mod switch.data matches 6 at @s in switch:game run particle cloud -9907 ~0.5 -5900 7 0 50 0 250 force
execute if score #rg_paralya_lobby_mod switch.data matches 6 at @s run clone from minecraft:overworld -9914 ~ -6000 -9900 ~ -5800 to switch:game -9914 ~0 -6000 strict replace force

execute if score #rg_paralya_lobby_mod switch.data matches 7 at @s in switch:game run particle cloud -9893 ~0.5 -5900 7 0 50 0 250 force
execute if score #rg_paralya_lobby_mod switch.data matches 7 at @s run clone from minecraft:overworld -9900 ~ -6000 -9886 ~ -5800 to switch:game -9900 ~0 -6000 strict replace force

execute if score #rg_paralya_lobby_mod switch.data matches 8 at @s in switch:game run particle cloud -9879 ~0.5 -5900 7 0 50 0 250 force
execute if score #rg_paralya_lobby_mod switch.data matches 8 at @s run clone from minecraft:overworld -9886 ~ -6000 -9871 ~ -5800 to switch:game -9886 ~0 -6000 strict replace force

execute if score #rg_paralya_lobby_mod switch.data matches 9 at @s in switch:game run particle cloud -9864 ~0.5 -5900 7 0 50 0 250 force
execute if score #rg_paralya_lobby_mod switch.data matches 9 at @s run clone from minecraft:overworld -9871 ~ -6000 -9857 ~ -5800 to switch:game -9871 ~0 -6000 strict replace force

execute if score #rg_paralya_lobby_mod switch.data matches 10 at @s in switch:game run particle cloud -9850 ~0.5 -5900 7 0 50 0 250 force
execute if score #rg_paralya_lobby_mod switch.data matches 10 at @s run clone from minecraft:overworld -9857 ~ -6000 -9843 ~ -5800 to switch:game -9857 ~0 -6000 strict replace force

execute if score #rg_paralya_lobby_mod switch.data matches 11 at @s in switch:game run particle cloud -9836 ~0.5 -5900 7 0 50 0 250 force
execute if score #rg_paralya_lobby_mod switch.data matches 11 at @s run clone from minecraft:overworld -9843 ~ -6000 -9829 ~ -5800 to switch:game -9843 ~0 -6000 strict replace force

execute if score #rg_paralya_lobby_mod switch.data matches 12 at @s in switch:game run particle cloud -9822 ~0.5 -5900 7 0 50 0 250 force
execute if score #rg_paralya_lobby_mod switch.data matches 12 at @s run clone from minecraft:overworld -9829 ~ -6000 -9814 ~ -5800 to switch:game -9829 ~0 -6000 strict replace force

execute if score #rg_paralya_lobby_mod switch.data matches 13 at @s in switch:game run particle cloud -9807 ~0.5 -5900 7 0 50 0 250 force
execute if score #rg_paralya_lobby_mod switch.data matches 13 at @s run clone from minecraft:overworld -9814 ~ -6000 -9800 ~ -5800 to switch:game -9814 ~0 -6000 strict replace force

scoreboard players add #rg_paralya_lobby_mod switch.data 1
execute if score #rg_paralya_lobby_mod switch.data matches 14 in switch:game run kill @e[type=item,x=-9900,y=100,z=-5900,distance=..1000]
execute if score #rg_paralya_lobby_mod switch.data matches 14 run scoreboard players add #rg_paralya_lobby_y switch.data 1
execute if score #rg_paralya_lobby_mod switch.data matches 14 run scoreboard players set #rg_paralya_lobby_mod switch.data 0

kill @s

