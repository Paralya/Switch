
#> switch:maps/survival/cookie_wars/regeneration_on_marker
#
# @within	switch:maps/survival/cookie_wars/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_cookie_wars_y switch.data

execute if score #rg_cookie_wars_mod switch.data matches 0 at @s in switch:game run particle cloud -7893 ~0.5 -1800 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 0 at @s run clone from minecraft:overworld -7900 ~ -1900 -7886 ~ -1700 to switch:game -7900 ~0 -1900 strict replace force

execute if score #rg_cookie_wars_mod switch.data matches 1 at @s in switch:game run particle cloud -7879 ~0.5 -1800 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 1 at @s run clone from minecraft:overworld -7886 ~ -1900 -7871 ~ -1700 to switch:game -7886 ~0 -1900 strict replace force

execute if score #rg_cookie_wars_mod switch.data matches 2 at @s in switch:game run particle cloud -7864 ~0.5 -1800 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 2 at @s run clone from minecraft:overworld -7871 ~ -1900 -7857 ~ -1700 to switch:game -7871 ~0 -1900 strict replace force

execute if score #rg_cookie_wars_mod switch.data matches 3 at @s in switch:game run particle cloud -7850 ~0.5 -1800 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 3 at @s run clone from minecraft:overworld -7857 ~ -1900 -7843 ~ -1700 to switch:game -7857 ~0 -1900 strict replace force

execute if score #rg_cookie_wars_mod switch.data matches 4 at @s in switch:game run particle cloud -7836 ~0.5 -1800 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 4 at @s run clone from minecraft:overworld -7843 ~ -1900 -7829 ~ -1700 to switch:game -7843 ~0 -1900 strict replace force

execute if score #rg_cookie_wars_mod switch.data matches 5 at @s in switch:game run particle cloud -7822 ~0.5 -1800 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 5 at @s run clone from minecraft:overworld -7829 ~ -1900 -7814 ~ -1700 to switch:game -7829 ~0 -1900 strict replace force

execute if score #rg_cookie_wars_mod switch.data matches 6 at @s in switch:game run particle cloud -7807 ~0.5 -1800 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 6 at @s run clone from minecraft:overworld -7814 ~ -1900 -7800 ~ -1700 to switch:game -7814 ~0 -1900 strict replace force

execute if score #rg_cookie_wars_mod switch.data matches 7 at @s in switch:game run particle cloud -7793 ~0.5 -1800 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 7 at @s run clone from minecraft:overworld -7800 ~ -1900 -7786 ~ -1700 to switch:game -7800 ~0 -1900 strict replace force

execute if score #rg_cookie_wars_mod switch.data matches 8 at @s in switch:game run particle cloud -7779 ~0.5 -1800 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 8 at @s run clone from minecraft:overworld -7786 ~ -1900 -7771 ~ -1700 to switch:game -7786 ~0 -1900 strict replace force

execute if score #rg_cookie_wars_mod switch.data matches 9 at @s in switch:game run particle cloud -7764 ~0.5 -1800 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 9 at @s run clone from minecraft:overworld -7771 ~ -1900 -7757 ~ -1700 to switch:game -7771 ~0 -1900 strict replace force

execute if score #rg_cookie_wars_mod switch.data matches 10 at @s in switch:game run particle cloud -7750 ~0.5 -1800 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 10 at @s run clone from minecraft:overworld -7757 ~ -1900 -7743 ~ -1700 to switch:game -7757 ~0 -1900 strict replace force

execute if score #rg_cookie_wars_mod switch.data matches 11 at @s in switch:game run particle cloud -7736 ~0.5 -1800 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 11 at @s run clone from minecraft:overworld -7743 ~ -1900 -7729 ~ -1700 to switch:game -7743 ~0 -1900 strict replace force

execute if score #rg_cookie_wars_mod switch.data matches 12 at @s in switch:game run particle cloud -7722 ~0.5 -1800 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 12 at @s run clone from minecraft:overworld -7729 ~ -1900 -7714 ~ -1700 to switch:game -7729 ~0 -1900 strict replace force

execute if score #rg_cookie_wars_mod switch.data matches 13 at @s in switch:game run particle cloud -7707 ~0.5 -1800 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 13 at @s run clone from minecraft:overworld -7714 ~ -1900 -7700 ~ -1700 to switch:game -7714 ~0 -1900 strict replace force

scoreboard players add #rg_cookie_wars_mod switch.data 1
execute if score #rg_cookie_wars_mod switch.data matches 14 in switch:game run kill @e[type=item,x=-7800,y=100,z=-1800,distance=..1000]
execute if score #rg_cookie_wars_mod switch.data matches 14 run scoreboard players add #rg_cookie_wars_y switch.data 1
execute if score #rg_cookie_wars_mod switch.data matches 14 run scoreboard players set #rg_cookie_wars_mod switch.data 0

kill @s

