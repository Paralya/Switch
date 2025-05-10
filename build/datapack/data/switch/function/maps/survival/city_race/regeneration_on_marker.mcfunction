
#> switch:maps/survival/city_race/regeneration_on_marker
#
# @within	switch:maps/survival/city_race/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_city_race_y switch.data

execute if score #rg_city_race_mod switch.data matches 0 at @s in switch:game run particle cloud 19823 ~0.5 19600 6 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 0 at @s run clone from minecraft:overworld 19817 ~ 19470 19829 ~ 19731 to switch:game 19817 ~0 19470 replace force

execute if score #rg_city_race_mod switch.data matches 1 at @s in switch:game run particle cloud 19834 ~0.5 19600 5 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 1 at @s run clone from minecraft:overworld 19829 ~ 19470 19840 ~ 19731 to switch:game 19829 ~0 19470 replace force

execute if score #rg_city_race_mod switch.data matches 2 at @s in switch:game run particle cloud 19846 ~0.5 19600 6 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 2 at @s run clone from minecraft:overworld 19840 ~ 19470 19852 ~ 19731 to switch:game 19840 ~0 19470 replace force

execute if score #rg_city_race_mod switch.data matches 3 at @s in switch:game run particle cloud 19858 ~0.5 19600 6 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 3 at @s run clone from minecraft:overworld 19852 ~ 19470 19864 ~ 19731 to switch:game 19852 ~0 19470 replace force

execute if score #rg_city_race_mod switch.data matches 4 at @s in switch:game run particle cloud 19869 ~0.5 19600 5 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 4 at @s run clone from minecraft:overworld 19864 ~ 19470 19875 ~ 19731 to switch:game 19864 ~0 19470 replace force

execute if score #rg_city_race_mod switch.data matches 5 at @s in switch:game run particle cloud 19881 ~0.5 19600 6 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 5 at @s run clone from minecraft:overworld 19875 ~ 19470 19887 ~ 19731 to switch:game 19875 ~0 19470 replace force

execute if score #rg_city_race_mod switch.data matches 6 at @s in switch:game run particle cloud 19893 ~0.5 19600 6 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 6 at @s run clone from minecraft:overworld 19887 ~ 19470 19899 ~ 19731 to switch:game 19887 ~0 19470 replace force

execute if score #rg_city_race_mod switch.data matches 7 at @s in switch:game run particle cloud 19904 ~0.5 19600 5 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 7 at @s run clone from minecraft:overworld 19899 ~ 19470 19910 ~ 19731 to switch:game 19899 ~0 19470 replace force

execute if score #rg_city_race_mod switch.data matches 8 at @s in switch:game run particle cloud 19916 ~0.5 19600 6 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 8 at @s run clone from minecraft:overworld 19910 ~ 19470 19922 ~ 19731 to switch:game 19910 ~0 19470 replace force

execute if score #rg_city_race_mod switch.data matches 9 at @s in switch:game run particle cloud 19928 ~0.5 19600 6 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 9 at @s run clone from minecraft:overworld 19922 ~ 19470 19934 ~ 19731 to switch:game 19922 ~0 19470 replace force

execute if score #rg_city_race_mod switch.data matches 10 at @s in switch:game run particle cloud 19939 ~0.5 19600 5 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 10 at @s run clone from minecraft:overworld 19934 ~ 19470 19945 ~ 19731 to switch:game 19934 ~0 19470 replace force

execute if score #rg_city_race_mod switch.data matches 11 at @s in switch:game run particle cloud 19951 ~0.5 19600 6 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 11 at @s run clone from minecraft:overworld 19945 ~ 19470 19957 ~ 19731 to switch:game 19945 ~0 19470 replace force

execute if score #rg_city_race_mod switch.data matches 12 at @s in switch:game run particle cloud 19963 ~0.5 19600 6 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 12 at @s run clone from minecraft:overworld 19957 ~ 19470 19969 ~ 19731 to switch:game 19957 ~0 19470 replace force

execute if score #rg_city_race_mod switch.data matches 13 at @s in switch:game run particle cloud 19974 ~0.5 19600 5 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 13 at @s run clone from minecraft:overworld 19969 ~ 19470 19980 ~ 19731 to switch:game 19969 ~0 19470 replace force

execute if score #rg_city_race_mod switch.data matches 14 at @s in switch:game run particle cloud 19986 ~0.5 19600 6 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 14 at @s run clone from minecraft:overworld 19980 ~ 19470 19992 ~ 19731 to switch:game 19980 ~0 19470 replace force

execute if score #rg_city_race_mod switch.data matches 15 at @s in switch:game run particle cloud 19998 ~0.5 19600 6 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 15 at @s run clone from minecraft:overworld 19992 ~ 19470 20004 ~ 19731 to switch:game 19992 ~0 19470 replace force

execute if score #rg_city_race_mod switch.data matches 16 at @s in switch:game run particle cloud 20009 ~0.5 19600 5 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 16 at @s run clone from minecraft:overworld 20004 ~ 19470 20015 ~ 19731 to switch:game 20004 ~0 19470 replace force

execute if score #rg_city_race_mod switch.data matches 17 at @s in switch:game run particle cloud 20021 ~0.5 19600 6 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 17 at @s run clone from minecraft:overworld 20015 ~ 19470 20027 ~ 19731 to switch:game 20015 ~0 19470 replace force

execute if score #rg_city_race_mod switch.data matches 18 at @s in switch:game run particle cloud 20033 ~0.5 19600 6 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 18 at @s run clone from minecraft:overworld 20027 ~ 19470 20039 ~ 19731 to switch:game 20027 ~0 19470 replace force

execute if score #rg_city_race_mod switch.data matches 19 at @s in switch:game run particle cloud 20044 ~0.5 19600 5 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 19 at @s run clone from minecraft:overworld 20039 ~ 19470 20050 ~ 19731 to switch:game 20039 ~0 19470 replace force

execute if score #rg_city_race_mod switch.data matches 20 at @s in switch:game run particle cloud 20056 ~0.5 19600 6 0 65 0 250 force
execute if score #rg_city_race_mod switch.data matches 20 at @s run clone from minecraft:overworld 20050 ~ 19470 20062 ~ 19731 to switch:game 20050 ~0 19470 replace force

scoreboard players add #rg_city_race_mod switch.data 1
execute if score #rg_city_race_mod switch.data matches 21 in switch:game run kill @e[type=item,x=19939,y=85,z=19600,distance=..1000]
execute if score #rg_city_race_mod switch.data matches 21 run scoreboard players add #rg_city_race_y switch.data 1
execute if score #rg_city_race_mod switch.data matches 21 run scoreboard players set #rg_city_race_mod switch.data 0

kill @s

