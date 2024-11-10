
#> switch:maps/survival/bowser_castle/regeneration_on_marker
#
# @within	switch:maps/survival/bowser_castle/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_bowser_castle_y switch.data

execute if score #rg_bowser_castle_mod switch.data matches 0 at @s in switch:game run particle cloud 21894 ~100.5 22010 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 0 at @s run clone from minecraft:overworld 21888 ~ 21888 21900 ~ 22133 to switch:game 21888 ~100 21888 replace force

execute if score #rg_bowser_castle_mod switch.data matches 1 at @s in switch:game run particle cloud 21906 ~100.5 22010 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 1 at @s run clone from minecraft:overworld 21900 ~ 21888 21912 ~ 22133 to switch:game 21900 ~100 21888 replace force

execute if score #rg_bowser_castle_mod switch.data matches 2 at @s in switch:game run particle cloud 21918 ~100.5 22010 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 2 at @s run clone from minecraft:overworld 21912 ~ 21888 21924 ~ 22133 to switch:game 21912 ~100 21888 replace force

execute if score #rg_bowser_castle_mod switch.data matches 3 at @s in switch:game run particle cloud 21930 ~100.5 22010 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 3 at @s run clone from minecraft:overworld 21924 ~ 21888 21936 ~ 22133 to switch:game 21924 ~100 21888 replace force

execute if score #rg_bowser_castle_mod switch.data matches 4 at @s in switch:game run particle cloud 21941 ~100.5 22010 5 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 4 at @s run clone from minecraft:overworld 21936 ~ 21888 21947 ~ 22133 to switch:game 21936 ~100 21888 replace force

execute if score #rg_bowser_castle_mod switch.data matches 5 at @s in switch:game run particle cloud 21953 ~100.5 22010 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 5 at @s run clone from minecraft:overworld 21947 ~ 21888 21959 ~ 22133 to switch:game 21947 ~100 21888 replace force

execute if score #rg_bowser_castle_mod switch.data matches 6 at @s in switch:game run particle cloud 21965 ~100.5 22010 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 6 at @s run clone from minecraft:overworld 21959 ~ 21888 21971 ~ 22133 to switch:game 21959 ~100 21888 replace force

execute if score #rg_bowser_castle_mod switch.data matches 7 at @s in switch:game run particle cloud 21977 ~100.5 22010 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 7 at @s run clone from minecraft:overworld 21971 ~ 21888 21983 ~ 22133 to switch:game 21971 ~100 21888 replace force

execute if score #rg_bowser_castle_mod switch.data matches 8 at @s in switch:game run particle cloud 21989 ~100.5 22010 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 8 at @s run clone from minecraft:overworld 21983 ~ 21888 21995 ~ 22133 to switch:game 21983 ~100 21888 replace force

execute if score #rg_bowser_castle_mod switch.data matches 9 at @s in switch:game run particle cloud 22001 ~100.5 22010 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 9 at @s run clone from minecraft:overworld 21995 ~ 21888 22007 ~ 22133 to switch:game 21995 ~100 21888 replace force

execute if score #rg_bowser_castle_mod switch.data matches 10 at @s in switch:game run particle cloud 22013 ~100.5 22010 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 10 at @s run clone from minecraft:overworld 22007 ~ 21888 22019 ~ 22133 to switch:game 22007 ~100 21888 replace force

execute if score #rg_bowser_castle_mod switch.data matches 11 at @s in switch:game run particle cloud 22025 ~100.5 22010 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 11 at @s run clone from minecraft:overworld 22019 ~ 21888 22031 ~ 22133 to switch:game 22019 ~100 21888 replace force

execute if score #rg_bowser_castle_mod switch.data matches 12 at @s in switch:game run particle cloud 22037 ~100.5 22010 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 12 at @s run clone from minecraft:overworld 22031 ~ 21888 22043 ~ 22133 to switch:game 22031 ~100 21888 replace force

execute if score #rg_bowser_castle_mod switch.data matches 13 at @s in switch:game run particle cloud 22049 ~100.5 22010 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 13 at @s run clone from minecraft:overworld 22043 ~ 21888 22055 ~ 22133 to switch:game 22043 ~100 21888 replace force

execute if score #rg_bowser_castle_mod switch.data matches 14 at @s in switch:game run particle cloud 22060 ~100.5 22010 5 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 14 at @s run clone from minecraft:overworld 22055 ~ 21888 22066 ~ 22133 to switch:game 22055 ~100 21888 replace force

execute if score #rg_bowser_castle_mod switch.data matches 15 at @s in switch:game run particle cloud 22072 ~100.5 22010 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 15 at @s run clone from minecraft:overworld 22066 ~ 21888 22078 ~ 22133 to switch:game 22066 ~100 21888 replace force

execute if score #rg_bowser_castle_mod switch.data matches 16 at @s in switch:game run particle cloud 22084 ~100.5 22010 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 16 at @s run clone from minecraft:overworld 22078 ~ 21888 22090 ~ 22133 to switch:game 22078 ~100 21888 replace force

execute if score #rg_bowser_castle_mod switch.data matches 17 at @s in switch:game run particle cloud 22096 ~100.5 22010 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 17 at @s run clone from minecraft:overworld 22090 ~ 21888 22102 ~ 22133 to switch:game 22090 ~100 21888 replace force

execute if score #rg_bowser_castle_mod switch.data matches 18 at @s in switch:game run particle cloud 22108 ~100.5 22010 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 18 at @s run clone from minecraft:overworld 22102 ~ 21888 22114 ~ 22133 to switch:game 22102 ~100 21888 replace force

scoreboard players add #rg_bowser_castle_mod switch.data 1
execute if score #rg_bowser_castle_mod switch.data matches 19 in switch:game run kill @e[type=item,x=22001,y=0,z=22010,distance=..1000]
execute if score #rg_bowser_castle_mod switch.data matches 19 run scoreboard players add #rg_bowser_castle_y switch.data 1
execute if score #rg_bowser_castle_mod switch.data matches 19 run scoreboard players set #rg_bowser_castle_mod switch.data 0

kill @s

