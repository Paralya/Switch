
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_cookie_wars_y switch.data

execute if score #rg_cookie_wars_mod switch.data matches 0 at @s run particle cloud 48907 ~100.5 49000 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 0 at @s run clone 48900 ~ 48900 48914 ~ 49100 48900 ~100 48900 replace force
execute if score #rg_cookie_wars_mod switch.data matches 1 at @s run particle cloud 48921 ~100.5 49000 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 1 at @s run clone 48914 ~ 48900 48929 ~ 49100 48914 ~100 48900 replace force
execute if score #rg_cookie_wars_mod switch.data matches 2 at @s run particle cloud 48936 ~100.5 49000 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 2 at @s run clone 48929 ~ 48900 48943 ~ 49100 48929 ~100 48900 replace force
execute if score #rg_cookie_wars_mod switch.data matches 3 at @s run particle cloud 48950 ~100.5 49000 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 3 at @s run clone 48943 ~ 48900 48957 ~ 49100 48943 ~100 48900 replace force
execute if score #rg_cookie_wars_mod switch.data matches 4 at @s run particle cloud 48964 ~100.5 49000 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 4 at @s run clone 48957 ~ 48900 48971 ~ 49100 48957 ~100 48900 replace force
execute if score #rg_cookie_wars_mod switch.data matches 5 at @s run particle cloud 48978 ~100.5 49000 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 5 at @s run clone 48971 ~ 48900 48986 ~ 49100 48971 ~100 48900 replace force
execute if score #rg_cookie_wars_mod switch.data matches 6 at @s run particle cloud 48993 ~100.5 49000 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 6 at @s run clone 48986 ~ 48900 49000 ~ 49100 48986 ~100 48900 replace force
execute if score #rg_cookie_wars_mod switch.data matches 7 at @s run particle cloud 49007 ~100.5 49000 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 7 at @s run clone 49000 ~ 48900 49014 ~ 49100 49000 ~100 48900 replace force
execute if score #rg_cookie_wars_mod switch.data matches 8 at @s run particle cloud 49021 ~100.5 49000 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 8 at @s run clone 49014 ~ 48900 49029 ~ 49100 49014 ~100 48900 replace force
execute if score #rg_cookie_wars_mod switch.data matches 9 at @s run particle cloud 49036 ~100.5 49000 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 9 at @s run clone 49029 ~ 48900 49043 ~ 49100 49029 ~100 48900 replace force
execute if score #rg_cookie_wars_mod switch.data matches 10 at @s run particle cloud 49050 ~100.5 49000 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 10 at @s run clone 49043 ~ 48900 49057 ~ 49100 49043 ~100 48900 replace force
execute if score #rg_cookie_wars_mod switch.data matches 11 at @s run particle cloud 49064 ~100.5 49000 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 11 at @s run clone 49057 ~ 48900 49071 ~ 49100 49057 ~100 48900 replace force
execute if score #rg_cookie_wars_mod switch.data matches 12 at @s run particle cloud 49078 ~100.5 49000 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 12 at @s run clone 49071 ~ 48900 49086 ~ 49100 49071 ~100 48900 replace force
execute if score #rg_cookie_wars_mod switch.data matches 13 at @s run particle cloud 49093 ~100.5 49000 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 13 at @s run clone 49086 ~ 48900 49100 ~ 49100 49086 ~100 48900 replace force

execute if score #rg_cookie_wars_mod switch.data matches 14 run kill @e[type=item,x=49000,y=0,z=49000,distance=..1000]
scoreboard players add #rg_cookie_wars_mod switch.data 1
execute if score #rg_cookie_wars_mod switch.data matches 14 run scoreboard players add #rg_cookie_wars_y switch.data 1
execute if score #rg_cookie_wars_mod switch.data matches 14 run scoreboard players set #rg_cookie_wars_mod switch.data 0

kill @s

