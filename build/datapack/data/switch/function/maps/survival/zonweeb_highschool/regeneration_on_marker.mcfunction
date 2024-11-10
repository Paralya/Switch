
#> switch:maps/survival/zonweeb_highschool/regeneration_on_marker
#
# @within	switch:maps/survival/zonweeb_highschool/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_zonweeb_highschool_y switch.data

execute if score #rg_zonweeb_highschool_mod switch.data matches 0 at @s in switch:game run particle cloud 52921 ~100.5 52985 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 0 at @s run clone from minecraft:overworld 52915 ~ 52876 52928 ~ 53094 to switch:game 52915 ~100 52876 replace force

execute if score #rg_zonweeb_highschool_mod switch.data matches 1 at @s in switch:game run particle cloud 52934 ~100.5 52985 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 1 at @s run clone from minecraft:overworld 52928 ~ 52876 52940 ~ 53094 to switch:game 52928 ~100 52876 replace force

execute if score #rg_zonweeb_highschool_mod switch.data matches 2 at @s in switch:game run particle cloud 52946 ~100.5 52985 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 2 at @s run clone from minecraft:overworld 52940 ~ 52876 52952 ~ 53094 to switch:game 52940 ~100 52876 replace force

execute if score #rg_zonweeb_highschool_mod switch.data matches 3 at @s in switch:game run particle cloud 52958 ~100.5 52985 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 3 at @s run clone from minecraft:overworld 52952 ~ 52876 52965 ~ 53094 to switch:game 52952 ~100 52876 replace force

execute if score #rg_zonweeb_highschool_mod switch.data matches 4 at @s in switch:game run particle cloud 52971 ~100.5 52985 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 4 at @s run clone from minecraft:overworld 52965 ~ 52876 52978 ~ 53094 to switch:game 52965 ~100 52876 replace force

execute if score #rg_zonweeb_highschool_mod switch.data matches 5 at @s in switch:game run particle cloud 52984 ~100.5 52985 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 5 at @s run clone from minecraft:overworld 52978 ~ 52876 52990 ~ 53094 to switch:game 52978 ~100 52876 replace force

execute if score #rg_zonweeb_highschool_mod switch.data matches 6 at @s in switch:game run particle cloud 52996 ~100.5 52985 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 6 at @s run clone from minecraft:overworld 52990 ~ 52876 53002 ~ 53094 to switch:game 52990 ~100 52876 replace force

execute if score #rg_zonweeb_highschool_mod switch.data matches 7 at @s in switch:game run particle cloud 53008 ~100.5 52985 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 7 at @s run clone from minecraft:overworld 53002 ~ 52876 53015 ~ 53094 to switch:game 53002 ~100 52876 replace force

execute if score #rg_zonweeb_highschool_mod switch.data matches 8 at @s in switch:game run particle cloud 53021 ~100.5 52985 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 8 at @s run clone from minecraft:overworld 53015 ~ 52876 53028 ~ 53094 to switch:game 53015 ~100 52876 replace force

execute if score #rg_zonweeb_highschool_mod switch.data matches 9 at @s in switch:game run particle cloud 53034 ~100.5 52985 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 9 at @s run clone from minecraft:overworld 53028 ~ 52876 53040 ~ 53094 to switch:game 53028 ~100 52876 replace force

scoreboard players add #rg_zonweeb_highschool_mod switch.data 1
execute if score #rg_zonweeb_highschool_mod switch.data matches 10 in switch:game run kill @e[type=item,x=52977,y=0,z=52985,distance=..1000]
execute if score #rg_zonweeb_highschool_mod switch.data matches 10 run scoreboard players add #rg_zonweeb_highschool_y switch.data 1
execute if score #rg_zonweeb_highschool_mod switch.data matches 10 run scoreboard players set #rg_zonweeb_highschool_mod switch.data 0

kill @s

