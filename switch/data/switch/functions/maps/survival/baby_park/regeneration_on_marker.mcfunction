
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_baby_park_y switch.data

execute if score #rg_baby_park_mod switch.data matches 0 at @s run particle cloud 20869 ~100.5 21003 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 0 at @s run clone 20862 ~ 20908 20877 ~ 21099 20862 ~100 20908 replace force
execute if score #rg_baby_park_mod switch.data matches 1 at @s run particle cloud 20884 ~100.5 21003 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 1 at @s run clone 20877 ~ 20908 20892 ~ 21099 20877 ~100 20908 replace force
execute if score #rg_baby_park_mod switch.data matches 2 at @s run particle cloud 20899 ~100.5 21003 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 2 at @s run clone 20892 ~ 20908 20907 ~ 21099 20892 ~100 20908 replace force
execute if score #rg_baby_park_mod switch.data matches 3 at @s run particle cloud 20914 ~100.5 21003 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 3 at @s run clone 20907 ~ 20908 20922 ~ 21099 20907 ~100 20908 replace force
execute if score #rg_baby_park_mod switch.data matches 4 at @s run particle cloud 20929 ~100.5 21003 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 4 at @s run clone 20922 ~ 20908 20937 ~ 21099 20922 ~100 20908 replace force
execute if score #rg_baby_park_mod switch.data matches 5 at @s run particle cloud 20944 ~100.5 21003 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 5 at @s run clone 20937 ~ 20908 20952 ~ 21099 20937 ~100 20908 replace force
execute if score #rg_baby_park_mod switch.data matches 6 at @s run particle cloud 20959 ~100.5 21003 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 6 at @s run clone 20952 ~ 20908 20967 ~ 21099 20952 ~100 20908 replace force
execute if score #rg_baby_park_mod switch.data matches 7 at @s run particle cloud 20974 ~100.5 21003 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 7 at @s run clone 20967 ~ 20908 20982 ~ 21099 20967 ~100 20908 replace force
execute if score #rg_baby_park_mod switch.data matches 8 at @s run particle cloud 20989 ~100.5 21003 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 8 at @s run clone 20982 ~ 20908 20997 ~ 21099 20982 ~100 20908 replace force
execute if score #rg_baby_park_mod switch.data matches 9 at @s run particle cloud 21004 ~100.5 21003 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 9 at @s run clone 20997 ~ 20908 21012 ~ 21099 20997 ~100 20908 replace force
execute if score #rg_baby_park_mod switch.data matches 10 at @s run particle cloud 21019 ~100.5 21003 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 10 at @s run clone 21012 ~ 20908 21027 ~ 21099 21012 ~100 20908 replace force
execute if score #rg_baby_park_mod switch.data matches 11 at @s run particle cloud 21034 ~100.5 21003 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 11 at @s run clone 21027 ~ 20908 21042 ~ 21099 21027 ~100 20908 replace force
execute if score #rg_baby_park_mod switch.data matches 12 at @s run particle cloud 21049 ~100.5 21003 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 12 at @s run clone 21042 ~ 20908 21057 ~ 21099 21042 ~100 20908 replace force
execute if score #rg_baby_park_mod switch.data matches 13 at @s run particle cloud 21064 ~100.5 21003 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 13 at @s run clone 21057 ~ 20908 21072 ~ 21099 21057 ~100 20908 replace force
execute if score #rg_baby_park_mod switch.data matches 14 at @s run particle cloud 21079 ~100.5 21003 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 14 at @s run clone 21072 ~ 20908 21087 ~ 21099 21072 ~100 20908 replace force
execute if score #rg_baby_park_mod switch.data matches 15 at @s run particle cloud 21094 ~100.5 21003 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 15 at @s run clone 21087 ~ 20908 21102 ~ 21099 21087 ~100 20908 replace force
execute if score #rg_baby_park_mod switch.data matches 16 at @s run particle cloud 21109 ~100.5 21003 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 16 at @s run clone 21102 ~ 20908 21117 ~ 21099 21102 ~100 20908 replace force
execute if score #rg_baby_park_mod switch.data matches 17 at @s run particle cloud 21124 ~100.5 21003 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 17 at @s run clone 21117 ~ 20908 21132 ~ 21099 21117 ~100 20908 replace force
execute if score #rg_baby_park_mod switch.data matches 18 run kill @e[type=item,x=20997,y=0,z=21003,distance=..1000]

scoreboard players add #rg_baby_park_mod switch.data 1
execute if score #rg_baby_park_mod switch.data matches 18 run scoreboard players add #rg_baby_park_y switch.data 1
execute if score #rg_baby_park_mod switch.data matches 18 run scoreboard players set #rg_baby_park_mod switch.data 0

kill @s
