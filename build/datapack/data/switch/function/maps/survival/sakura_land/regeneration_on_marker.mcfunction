
#> switch:maps/survival/sakura_land/regeneration_on_marker
#
# @within	switch:maps/survival/sakura_land/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_sakura_land_y switch.data

execute if score #rg_sakura_land_mod switch.data matches 0 at @s in switch:game run particle cloud 19827 ~0.5 20103 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 0 at @s run clone from minecraft:overworld 19821 ~ 19979 19833 ~ 20228 to switch:game 19821 ~0 19979 replace force

execute if score #rg_sakura_land_mod switch.data matches 1 at @s in switch:game run particle cloud 19839 ~0.5 20103 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 1 at @s run clone from minecraft:overworld 19833 ~ 19979 19845 ~ 20228 to switch:game 19833 ~0 19979 replace force

execute if score #rg_sakura_land_mod switch.data matches 2 at @s in switch:game run particle cloud 19850 ~0.5 20103 5 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 2 at @s run clone from minecraft:overworld 19845 ~ 19979 19856 ~ 20228 to switch:game 19845 ~0 19979 replace force

execute if score #rg_sakura_land_mod switch.data matches 3 at @s in switch:game run particle cloud 19862 ~0.5 20103 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 3 at @s run clone from minecraft:overworld 19856 ~ 19979 19868 ~ 20228 to switch:game 19856 ~0 19979 replace force

execute if score #rg_sakura_land_mod switch.data matches 4 at @s in switch:game run particle cloud 19874 ~0.5 20103 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 4 at @s run clone from minecraft:overworld 19868 ~ 19979 19880 ~ 20228 to switch:game 19868 ~0 19979 replace force

execute if score #rg_sakura_land_mod switch.data matches 5 at @s in switch:game run particle cloud 19886 ~0.5 20103 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 5 at @s run clone from minecraft:overworld 19880 ~ 19979 19892 ~ 20228 to switch:game 19880 ~0 19979 replace force

execute if score #rg_sakura_land_mod switch.data matches 6 at @s in switch:game run particle cloud 19897 ~0.5 20103 5 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 6 at @s run clone from minecraft:overworld 19892 ~ 19979 19903 ~ 20228 to switch:game 19892 ~0 19979 replace force

execute if score #rg_sakura_land_mod switch.data matches 7 at @s in switch:game run particle cloud 19909 ~0.5 20103 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 7 at @s run clone from minecraft:overworld 19903 ~ 19979 19915 ~ 20228 to switch:game 19903 ~0 19979 replace force

execute if score #rg_sakura_land_mod switch.data matches 8 at @s in switch:game run particle cloud 19921 ~0.5 20103 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 8 at @s run clone from minecraft:overworld 19915 ~ 19979 19927 ~ 20228 to switch:game 19915 ~0 19979 replace force

execute if score #rg_sakura_land_mod switch.data matches 9 at @s in switch:game run particle cloud 19933 ~0.5 20103 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 9 at @s run clone from minecraft:overworld 19927 ~ 19979 19939 ~ 20228 to switch:game 19927 ~0 19979 replace force

execute if score #rg_sakura_land_mod switch.data matches 10 at @s in switch:game run particle cloud 19944 ~0.5 20103 5 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 10 at @s run clone from minecraft:overworld 19939 ~ 19979 19950 ~ 20228 to switch:game 19939 ~0 19979 replace force

execute if score #rg_sakura_land_mod switch.data matches 11 at @s in switch:game run particle cloud 19956 ~0.5 20103 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 11 at @s run clone from minecraft:overworld 19950 ~ 19979 19962 ~ 20228 to switch:game 19950 ~0 19979 replace force

execute if score #rg_sakura_land_mod switch.data matches 12 at @s in switch:game run particle cloud 19968 ~0.5 20103 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 12 at @s run clone from minecraft:overworld 19962 ~ 19979 19974 ~ 20228 to switch:game 19962 ~0 19979 replace force

execute if score #rg_sakura_land_mod switch.data matches 13 at @s in switch:game run particle cloud 19980 ~0.5 20103 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 13 at @s run clone from minecraft:overworld 19974 ~ 19979 19986 ~ 20228 to switch:game 19974 ~0 19979 replace force

execute if score #rg_sakura_land_mod switch.data matches 14 at @s in switch:game run particle cloud 19991 ~0.5 20103 5 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 14 at @s run clone from minecraft:overworld 19986 ~ 19979 19997 ~ 20228 to switch:game 19986 ~0 19979 replace force

execute if score #rg_sakura_land_mod switch.data matches 15 at @s in switch:game run particle cloud 20003 ~0.5 20103 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 15 at @s run clone from minecraft:overworld 19997 ~ 19979 20009 ~ 20228 to switch:game 19997 ~0 19979 replace force

execute if score #rg_sakura_land_mod switch.data matches 16 at @s in switch:game run particle cloud 20015 ~0.5 20103 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 16 at @s run clone from minecraft:overworld 20009 ~ 19979 20021 ~ 20228 to switch:game 20009 ~0 19979 replace force

execute if score #rg_sakura_land_mod switch.data matches 17 at @s in switch:game run particle cloud 20027 ~0.5 20103 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 17 at @s run clone from minecraft:overworld 20021 ~ 19979 20033 ~ 20228 to switch:game 20021 ~0 19979 replace force

execute if score #rg_sakura_land_mod switch.data matches 18 at @s in switch:game run particle cloud 20038 ~0.5 20103 5 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 18 at @s run clone from minecraft:overworld 20033 ~ 19979 20044 ~ 20228 to switch:game 20033 ~0 19979 replace force

execute if score #rg_sakura_land_mod switch.data matches 19 at @s in switch:game run particle cloud 20050 ~0.5 20103 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 19 at @s run clone from minecraft:overworld 20044 ~ 19979 20056 ~ 20228 to switch:game 20044 ~0 19979 replace force

execute if score #rg_sakura_land_mod switch.data matches 20 at @s in switch:game run particle cloud 20062 ~0.5 20103 6 0 62 0 250 force
execute if score #rg_sakura_land_mod switch.data matches 20 at @s run clone from minecraft:overworld 20056 ~ 19979 20068 ~ 20228 to switch:game 20056 ~0 19979 replace force

scoreboard players add #rg_sakura_land_mod switch.data 1
execute if score #rg_sakura_land_mod switch.data matches 21 in switch:game run kill @e[type=item,x=19944,y=85,z=20103,distance=..1000]
execute if score #rg_sakura_land_mod switch.data matches 21 run scoreboard players add #rg_sakura_land_y switch.data 1
execute if score #rg_sakura_land_mod switch.data matches 21 run scoreboard players set #rg_sakura_land_mod switch.data 0

kill @s

