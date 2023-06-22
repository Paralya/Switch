
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_snow_travel_y switch.data

execute if score #rg_snow_travel_mod switch.data matches 0 at @s run particle cloud 22903 ~100.5 23006 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 0 at @s run clone 22896 ~ 22904 22910 ~ 23109 22896 ~100 22904 replace force
execute if score #rg_snow_travel_mod switch.data matches 1 at @s run particle cloud 22917 ~100.5 23006 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 1 at @s run clone 22910 ~ 22904 22924 ~ 23109 22910 ~100 22904 replace force
execute if score #rg_snow_travel_mod switch.data matches 2 at @s run particle cloud 22930 ~100.5 23006 6 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 2 at @s run clone 22924 ~ 22904 22937 ~ 23109 22924 ~100 22904 replace force
execute if score #rg_snow_travel_mod switch.data matches 3 at @s run particle cloud 22944 ~100.5 23006 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 3 at @s run clone 22937 ~ 22904 22951 ~ 23109 22937 ~100 22904 replace force
execute if score #rg_snow_travel_mod switch.data matches 4 at @s run particle cloud 22958 ~100.5 23006 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 4 at @s run clone 22951 ~ 22904 22965 ~ 23109 22951 ~100 22904 replace force
execute if score #rg_snow_travel_mod switch.data matches 5 at @s run particle cloud 22972 ~100.5 23006 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 5 at @s run clone 22965 ~ 22904 22979 ~ 23109 22965 ~100 22904 replace force
execute if score #rg_snow_travel_mod switch.data matches 6 at @s run particle cloud 22986 ~100.5 23006 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 6 at @s run clone 22979 ~ 22904 22993 ~ 23109 22979 ~100 22904 replace force
execute if score #rg_snow_travel_mod switch.data matches 7 at @s run particle cloud 22999 ~100.5 23006 6 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 7 at @s run clone 22993 ~ 22904 23006 ~ 23109 22993 ~100 22904 replace force
execute if score #rg_snow_travel_mod switch.data matches 8 at @s run particle cloud 23013 ~100.5 23006 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 8 at @s run clone 23006 ~ 22904 23020 ~ 23109 23006 ~100 22904 replace force
execute if score #rg_snow_travel_mod switch.data matches 9 at @s run particle cloud 23027 ~100.5 23006 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 9 at @s run clone 23020 ~ 22904 23034 ~ 23109 23020 ~100 22904 replace force
execute if score #rg_snow_travel_mod switch.data matches 10 at @s run particle cloud 23041 ~100.5 23006 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 10 at @s run clone 23034 ~ 22904 23048 ~ 23109 23034 ~100 22904 replace force
execute if score #rg_snow_travel_mod switch.data matches 11 at @s run particle cloud 23055 ~100.5 23006 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 11 at @s run clone 23048 ~ 22904 23062 ~ 23109 23048 ~100 22904 replace force
execute if score #rg_snow_travel_mod switch.data matches 12 at @s run particle cloud 23068 ~100.5 23006 6 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 12 at @s run clone 23062 ~ 22904 23075 ~ 23109 23062 ~100 22904 replace force
execute if score #rg_snow_travel_mod switch.data matches 13 at @s run particle cloud 23082 ~100.5 23006 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 13 at @s run clone 23075 ~ 22904 23089 ~ 23109 23075 ~100 22904 replace force
execute if score #rg_snow_travel_mod switch.data matches 14 at @s run particle cloud 23096 ~100.5 23006 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 14 at @s run clone 23089 ~ 22904 23103 ~ 23109 23089 ~100 22904 replace force
execute if score #rg_snow_travel_mod switch.data matches 15 run kill @e[type=item,x=22999,y=0,z=23006,distance=..1000]

scoreboard players add #rg_snow_travel_mod switch.data 1
execute if score #rg_snow_travel_mod switch.data matches 15 run scoreboard players add #rg_snow_travel_y switch.data 1
execute if score #rg_snow_travel_mod switch.data matches 15 run scoreboard players set #rg_snow_travel_mod switch.data 0

kill @s

