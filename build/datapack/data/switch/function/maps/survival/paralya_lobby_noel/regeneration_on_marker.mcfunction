
#> switch:maps/survival/paralya_lobby_noel/regeneration_on_marker
#
# @within	switch:maps/survival/paralya_lobby_noel/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_paralya_lobby_noel_y switch.data

execute if score #rg_paralya_lobby_noel_mod switch.data matches 0 at @s in switch:game run particle cloud -1993 ~0.5 6100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 0 at @s run clone from minecraft:overworld -2000 ~ 6000 -1986 ~ 6200 to switch:game -2000 ~0 6000 strict replace force

execute if score #rg_paralya_lobby_noel_mod switch.data matches 1 at @s in switch:game run particle cloud -1979 ~0.5 6100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 1 at @s run clone from minecraft:overworld -1986 ~ 6000 -1971 ~ 6200 to switch:game -1986 ~0 6000 strict replace force

execute if score #rg_paralya_lobby_noel_mod switch.data matches 2 at @s in switch:game run particle cloud -1964 ~0.5 6100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 2 at @s run clone from minecraft:overworld -1971 ~ 6000 -1957 ~ 6200 to switch:game -1971 ~0 6000 strict replace force

execute if score #rg_paralya_lobby_noel_mod switch.data matches 3 at @s in switch:game run particle cloud -1950 ~0.5 6100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 3 at @s run clone from minecraft:overworld -1957 ~ 6000 -1943 ~ 6200 to switch:game -1957 ~0 6000 strict replace force

execute if score #rg_paralya_lobby_noel_mod switch.data matches 4 at @s in switch:game run particle cloud -1936 ~0.5 6100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 4 at @s run clone from minecraft:overworld -1943 ~ 6000 -1929 ~ 6200 to switch:game -1943 ~0 6000 strict replace force

execute if score #rg_paralya_lobby_noel_mod switch.data matches 5 at @s in switch:game run particle cloud -1922 ~0.5 6100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 5 at @s run clone from minecraft:overworld -1929 ~ 6000 -1914 ~ 6200 to switch:game -1929 ~0 6000 strict replace force

execute if score #rg_paralya_lobby_noel_mod switch.data matches 6 at @s in switch:game run particle cloud -1907 ~0.5 6100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 6 at @s run clone from minecraft:overworld -1914 ~ 6000 -1900 ~ 6200 to switch:game -1914 ~0 6000 strict replace force

execute if score #rg_paralya_lobby_noel_mod switch.data matches 7 at @s in switch:game run particle cloud -1893 ~0.5 6100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 7 at @s run clone from minecraft:overworld -1900 ~ 6000 -1886 ~ 6200 to switch:game -1900 ~0 6000 strict replace force

execute if score #rg_paralya_lobby_noel_mod switch.data matches 8 at @s in switch:game run particle cloud -1879 ~0.5 6100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 8 at @s run clone from minecraft:overworld -1886 ~ 6000 -1871 ~ 6200 to switch:game -1886 ~0 6000 strict replace force

execute if score #rg_paralya_lobby_noel_mod switch.data matches 9 at @s in switch:game run particle cloud -1864 ~0.5 6100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 9 at @s run clone from minecraft:overworld -1871 ~ 6000 -1857 ~ 6200 to switch:game -1871 ~0 6000 strict replace force

execute if score #rg_paralya_lobby_noel_mod switch.data matches 10 at @s in switch:game run particle cloud -1850 ~0.5 6100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 10 at @s run clone from minecraft:overworld -1857 ~ 6000 -1843 ~ 6200 to switch:game -1857 ~0 6000 strict replace force

execute if score #rg_paralya_lobby_noel_mod switch.data matches 11 at @s in switch:game run particle cloud -1836 ~0.5 6100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 11 at @s run clone from minecraft:overworld -1843 ~ 6000 -1829 ~ 6200 to switch:game -1843 ~0 6000 strict replace force

execute if score #rg_paralya_lobby_noel_mod switch.data matches 12 at @s in switch:game run particle cloud -1822 ~0.5 6100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 12 at @s run clone from minecraft:overworld -1829 ~ 6000 -1814 ~ 6200 to switch:game -1829 ~0 6000 strict replace force

execute if score #rg_paralya_lobby_noel_mod switch.data matches 13 at @s in switch:game run particle cloud -1807 ~0.5 6100 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 13 at @s run clone from minecraft:overworld -1814 ~ 6000 -1800 ~ 6200 to switch:game -1814 ~0 6000 strict replace force

scoreboard players add #rg_paralya_lobby_noel_mod switch.data 1
execute if score #rg_paralya_lobby_noel_mod switch.data matches 14 in switch:game run kill @e[type=item,x=-1900,y=100,z=6100,distance=..1000]
execute if score #rg_paralya_lobby_noel_mod switch.data matches 14 run scoreboard players add #rg_paralya_lobby_noel_y switch.data 1
execute if score #rg_paralya_lobby_noel_mod switch.data matches 14 run scoreboard players set #rg_paralya_lobby_noel_mod switch.data 0

kill @s

