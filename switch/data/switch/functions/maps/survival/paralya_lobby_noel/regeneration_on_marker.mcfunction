
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_paralya_lobby_noel_y switch.data

execute if score #rg_paralya_lobby_noel_mod switch.data matches 0 at @s run particle cloud 39907 ~164.5 40000 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 0 at @s run clone 39900 ~ 39900 39914 ~ 40100 39900 ~164 39900 replace force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 1 at @s run particle cloud 39921 ~164.5 40000 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 1 at @s run clone 39914 ~ 39900 39929 ~ 40100 39914 ~164 39900 replace force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 2 at @s run particle cloud 39936 ~164.5 40000 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 2 at @s run clone 39929 ~ 39900 39943 ~ 40100 39929 ~164 39900 replace force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 3 at @s run particle cloud 39950 ~164.5 40000 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 3 at @s run clone 39943 ~ 39900 39957 ~ 40100 39943 ~164 39900 replace force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 4 at @s run particle cloud 39964 ~164.5 40000 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 4 at @s run clone 39957 ~ 39900 39971 ~ 40100 39957 ~164 39900 replace force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 5 at @s run particle cloud 39978 ~164.5 40000 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 5 at @s run clone 39971 ~ 39900 39986 ~ 40100 39971 ~164 39900 replace force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 6 at @s run particle cloud 39993 ~164.5 40000 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 6 at @s run clone 39986 ~ 39900 40000 ~ 40100 39986 ~164 39900 replace force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 7 at @s run particle cloud 40007 ~164.5 40000 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 7 at @s run clone 40000 ~ 39900 40014 ~ 40100 40000 ~164 39900 replace force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 8 at @s run particle cloud 40021 ~164.5 40000 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 8 at @s run clone 40014 ~ 39900 40029 ~ 40100 40014 ~164 39900 replace force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 9 at @s run particle cloud 40036 ~164.5 40000 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 9 at @s run clone 40029 ~ 39900 40043 ~ 40100 40029 ~164 39900 replace force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 10 at @s run particle cloud 40050 ~164.5 40000 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 10 at @s run clone 40043 ~ 39900 40057 ~ 40100 40043 ~164 39900 replace force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 11 at @s run particle cloud 40064 ~164.5 40000 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 11 at @s run clone 40057 ~ 39900 40071 ~ 40100 40057 ~164 39900 replace force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 12 at @s run particle cloud 40078 ~164.5 40000 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 12 at @s run clone 40071 ~ 39900 40086 ~ 40100 40071 ~164 39900 replace force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 13 at @s run particle cloud 40093 ~164.5 40000 7 0 50 0 250 force
execute if score #rg_paralya_lobby_noel_mod switch.data matches 13 at @s run clone 40086 ~ 39900 40100 ~ 40100 40086 ~164 39900 replace force

execute if score #rg_paralya_lobby_noel_mod switch.data matches 14 run kill @e[type=item,x=40000,y=-64,z=40000,distance=..1000]
scoreboard players add #rg_paralya_lobby_noel_mod switch.data 1
execute if score #rg_paralya_lobby_noel_mod switch.data matches 14 run scoreboard players add #rg_paralya_lobby_noel_y switch.data 1
execute if score #rg_paralya_lobby_noel_mod switch.data matches 14 run scoreboard players set #rg_paralya_lobby_noel_mod switch.data 0

kill @s

