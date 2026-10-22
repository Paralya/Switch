
#> switch:maps/survival/zonweeb_highschool/regeneration_on_marker
#
# @within	switch:maps/survival/zonweeb_highschool/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_zonweeb_highschool_y switch.data

execute if score #rg_zonweeb_highschool_mod switch.data matches 0 at @s in switch:game run particle cloud -5994 ~0.5 -7891 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 0 at @s run clone from minecraft:overworld -6000 ~ -8000 -5988 ~ -7782 to switch:game -6000 ~0 -8000 strict replace force

execute if score #rg_zonweeb_highschool_mod switch.data matches 1 at @s in switch:game run particle cloud -5982 ~0.5 -7891 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 1 at @s run clone from minecraft:overworld -5988 ~ -8000 -5975 ~ -7782 to switch:game -5988 ~0 -8000 strict replace force

execute if score #rg_zonweeb_highschool_mod switch.data matches 2 at @s in switch:game run particle cloud -5969 ~0.5 -7891 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 2 at @s run clone from minecraft:overworld -5975 ~ -8000 -5962 ~ -7782 to switch:game -5975 ~0 -8000 strict replace force

execute if score #rg_zonweeb_highschool_mod switch.data matches 3 at @s in switch:game run particle cloud -5956 ~0.5 -7891 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 3 at @s run clone from minecraft:overworld -5962 ~ -8000 -5950 ~ -7782 to switch:game -5962 ~0 -8000 strict replace force

execute if score #rg_zonweeb_highschool_mod switch.data matches 4 at @s in switch:game run particle cloud -5944 ~0.5 -7891 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 4 at @s run clone from minecraft:overworld -5950 ~ -8000 -5938 ~ -7782 to switch:game -5950 ~0 -8000 strict replace force

execute if score #rg_zonweeb_highschool_mod switch.data matches 5 at @s in switch:game run particle cloud -5932 ~0.5 -7891 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 5 at @s run clone from minecraft:overworld -5938 ~ -8000 -5925 ~ -7782 to switch:game -5938 ~0 -8000 strict replace force

execute if score #rg_zonweeb_highschool_mod switch.data matches 6 at @s in switch:game run particle cloud -5919 ~0.5 -7891 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 6 at @s run clone from minecraft:overworld -5925 ~ -8000 -5912 ~ -7782 to switch:game -5925 ~0 -8000 strict replace force

execute if score #rg_zonweeb_highschool_mod switch.data matches 7 at @s in switch:game run particle cloud -5906 ~0.5 -7891 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 7 at @s run clone from minecraft:overworld -5912 ~ -8000 -5900 ~ -7782 to switch:game -5912 ~0 -8000 strict replace force

execute if score #rg_zonweeb_highschool_mod switch.data matches 8 at @s in switch:game run particle cloud -5894 ~0.5 -7891 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 8 at @s run clone from minecraft:overworld -5900 ~ -8000 -5888 ~ -7782 to switch:game -5900 ~0 -8000 strict replace force

execute if score #rg_zonweeb_highschool_mod switch.data matches 9 at @s in switch:game run particle cloud -5882 ~0.5 -7891 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 9 at @s run clone from minecraft:overworld -5888 ~ -8000 -5875 ~ -7782 to switch:game -5888 ~0 -8000 strict replace force

scoreboard players add #rg_zonweeb_highschool_mod switch.data 1
execute if score #rg_zonweeb_highschool_mod switch.data matches 10 in switch:game run kill @e[type=item,x=-5937,y=100,z=-7891,distance=..1000]
execute if score #rg_zonweeb_highschool_mod switch.data matches 10 run scoreboard players add #rg_zonweeb_highschool_y switch.data 1
execute if score #rg_zonweeb_highschool_mod switch.data matches 10 run scoreboard players set #rg_zonweeb_highschool_mod switch.data 0

kill @s

