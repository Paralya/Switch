
#> switch:maps/survival/cookie_wars/regeneration_on_marker
#
# @within	switch:maps/survival/cookie_wars/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_cookie_wars_y switch.data

execute if score #rg_cookie_wars_mod switch.data matches 0 at @s in switch:game run particle cloud 49007 ~0.5 49100 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 0 at @s run clone from minecraft:overworld 49000 ~ 49000 49014 ~ 49200 to switch:game 49000 ~0 49000 strict replace force

execute if score #rg_cookie_wars_mod switch.data matches 1 at @s in switch:game run particle cloud 49021 ~0.5 49100 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 1 at @s run clone from minecraft:overworld 49014 ~ 49000 49029 ~ 49200 to switch:game 49014 ~0 49000 strict replace force

execute if score #rg_cookie_wars_mod switch.data matches 2 at @s in switch:game run particle cloud 49036 ~0.5 49100 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 2 at @s run clone from minecraft:overworld 49029 ~ 49000 49043 ~ 49200 to switch:game 49029 ~0 49000 strict replace force

execute if score #rg_cookie_wars_mod switch.data matches 3 at @s in switch:game run particle cloud 49050 ~0.5 49100 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 3 at @s run clone from minecraft:overworld 49043 ~ 49000 49057 ~ 49200 to switch:game 49043 ~0 49000 strict replace force

execute if score #rg_cookie_wars_mod switch.data matches 4 at @s in switch:game run particle cloud 49064 ~0.5 49100 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 4 at @s run clone from minecraft:overworld 49057 ~ 49000 49071 ~ 49200 to switch:game 49057 ~0 49000 strict replace force

execute if score #rg_cookie_wars_mod switch.data matches 5 at @s in switch:game run particle cloud 49078 ~0.5 49100 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 5 at @s run clone from minecraft:overworld 49071 ~ 49000 49086 ~ 49200 to switch:game 49071 ~0 49000 strict replace force

execute if score #rg_cookie_wars_mod switch.data matches 6 at @s in switch:game run particle cloud 49093 ~0.5 49100 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 6 at @s run clone from minecraft:overworld 49086 ~ 49000 49100 ~ 49200 to switch:game 49086 ~0 49000 strict replace force

execute if score #rg_cookie_wars_mod switch.data matches 7 at @s in switch:game run particle cloud 49107 ~0.5 49100 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 7 at @s run clone from minecraft:overworld 49100 ~ 49000 49114 ~ 49200 to switch:game 49100 ~0 49000 strict replace force

execute if score #rg_cookie_wars_mod switch.data matches 8 at @s in switch:game run particle cloud 49121 ~0.5 49100 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 8 at @s run clone from minecraft:overworld 49114 ~ 49000 49129 ~ 49200 to switch:game 49114 ~0 49000 strict replace force

execute if score #rg_cookie_wars_mod switch.data matches 9 at @s in switch:game run particle cloud 49136 ~0.5 49100 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 9 at @s run clone from minecraft:overworld 49129 ~ 49000 49143 ~ 49200 to switch:game 49129 ~0 49000 strict replace force

execute if score #rg_cookie_wars_mod switch.data matches 10 at @s in switch:game run particle cloud 49150 ~0.5 49100 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 10 at @s run clone from minecraft:overworld 49143 ~ 49000 49157 ~ 49200 to switch:game 49143 ~0 49000 strict replace force

execute if score #rg_cookie_wars_mod switch.data matches 11 at @s in switch:game run particle cloud 49164 ~0.5 49100 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 11 at @s run clone from minecraft:overworld 49157 ~ 49000 49171 ~ 49200 to switch:game 49157 ~0 49000 strict replace force

execute if score #rg_cookie_wars_mod switch.data matches 12 at @s in switch:game run particle cloud 49178 ~0.5 49100 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 12 at @s run clone from minecraft:overworld 49171 ~ 49000 49186 ~ 49200 to switch:game 49171 ~0 49000 strict replace force

execute if score #rg_cookie_wars_mod switch.data matches 13 at @s in switch:game run particle cloud 49193 ~0.5 49100 7 0 50 0 250 force
execute if score #rg_cookie_wars_mod switch.data matches 13 at @s run clone from minecraft:overworld 49186 ~ 49000 49200 ~ 49200 to switch:game 49186 ~0 49000 strict replace force

scoreboard players add #rg_cookie_wars_mod switch.data 1
execute if score #rg_cookie_wars_mod switch.data matches 14 in switch:game run kill @e[type=item,x=49100,y=100,z=49100,distance=..1000]
execute if score #rg_cookie_wars_mod switch.data matches 14 run scoreboard players add #rg_cookie_wars_y switch.data 1
execute if score #rg_cookie_wars_mod switch.data matches 14 run scoreboard players set #rg_cookie_wars_mod switch.data 0

kill @s

