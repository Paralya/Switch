
#> switch:maps/survival/cookie_wars/regeneration_on_marker
#
# @within	switch:maps/survival/cookie_wars/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_cookie_wars_y switch.data

execute if score #rg_cookie_wars_mod switch.data matches 0 at @s in switch:game run particle cloud 48907 ~100.5 49000 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 0 at @s run clone from minecraft:overworld 48900 ~ 48900 48914 ~ 49100 to switch:game 48900 ~100 48900 replace force

execute if score #rg_cookie_wars_mod switch.data matches 1 at @s in switch:game run particle cloud 48921 ~100.5 49000 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 1 at @s run clone from minecraft:overworld 48914 ~ 48900 48929 ~ 49100 to switch:game 48914 ~100 48900 replace force

execute if score #rg_cookie_wars_mod switch.data matches 2 at @s in switch:game run particle cloud 48936 ~100.5 49000 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 2 at @s run clone from minecraft:overworld 48929 ~ 48900 48943 ~ 49100 to switch:game 48929 ~100 48900 replace force

execute if score #rg_cookie_wars_mod switch.data matches 3 at @s in switch:game run particle cloud 48950 ~100.5 49000 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 3 at @s run clone from minecraft:overworld 48943 ~ 48900 48957 ~ 49100 to switch:game 48943 ~100 48900 replace force

execute if score #rg_cookie_wars_mod switch.data matches 4 at @s in switch:game run particle cloud 48964 ~100.5 49000 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 4 at @s run clone from minecraft:overworld 48957 ~ 48900 48971 ~ 49100 to switch:game 48957 ~100 48900 replace force

execute if score #rg_cookie_wars_mod switch.data matches 5 at @s in switch:game run particle cloud 48978 ~100.5 49000 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 5 at @s run clone from minecraft:overworld 48971 ~ 48900 48986 ~ 49100 to switch:game 48971 ~100 48900 replace force

execute if score #rg_cookie_wars_mod switch.data matches 6 at @s in switch:game run particle cloud 48993 ~100.5 49000 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 6 at @s run clone from minecraft:overworld 48986 ~ 48900 49000 ~ 49100 to switch:game 48986 ~100 48900 replace force

execute if score #rg_cookie_wars_mod switch.data matches 7 at @s in switch:game run particle cloud 49007 ~100.5 49000 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 7 at @s run clone from minecraft:overworld 49000 ~ 48900 49014 ~ 49100 to switch:game 49000 ~100 48900 replace force

execute if score #rg_cookie_wars_mod switch.data matches 8 at @s in switch:game run particle cloud 49021 ~100.5 49000 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 8 at @s run clone from minecraft:overworld 49014 ~ 48900 49029 ~ 49100 to switch:game 49014 ~100 48900 replace force

execute if score #rg_cookie_wars_mod switch.data matches 9 at @s in switch:game run particle cloud 49036 ~100.5 49000 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 9 at @s run clone from minecraft:overworld 49029 ~ 48900 49043 ~ 49100 to switch:game 49029 ~100 48900 replace force

execute if score #rg_cookie_wars_mod switch.data matches 10 at @s in switch:game run particle cloud 49050 ~100.5 49000 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 10 at @s run clone from minecraft:overworld 49043 ~ 48900 49057 ~ 49100 to switch:game 49043 ~100 48900 replace force

execute if score #rg_cookie_wars_mod switch.data matches 11 at @s in switch:game run particle cloud 49064 ~100.5 49000 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 11 at @s run clone from minecraft:overworld 49057 ~ 48900 49071 ~ 49100 to switch:game 49057 ~100 48900 replace force

execute if score #rg_cookie_wars_mod switch.data matches 12 at @s in switch:game run particle cloud 49078 ~100.5 49000 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 12 at @s run clone from minecraft:overworld 49071 ~ 48900 49086 ~ 49100 to switch:game 49071 ~100 48900 replace force

execute if score #rg_cookie_wars_mod switch.data matches 13 at @s in switch:game run particle cloud 49093 ~100.5 49000 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 13 at @s run clone from minecraft:overworld 49086 ~ 48900 49100 ~ 49100 to switch:game 49086 ~100 48900 replace force

scoreboard players add #rg_cookie_wars_mod switch.data 1
execute if score #rg_cookie_wars_mod switch.data matches 14 in switch:game run kill @e[type=item,x=49000,y=0,z=49000,distance=..1000]
execute if score #rg_cookie_wars_mod switch.data matches 14 run scoreboard players add #rg_cookie_wars_y switch.data 1
execute if score #rg_cookie_wars_mod switch.data matches 14 run scoreboard players set #rg_cookie_wars_mod switch.data 0

kill @s

