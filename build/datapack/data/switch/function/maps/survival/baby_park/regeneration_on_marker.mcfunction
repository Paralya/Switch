
#> switch:maps/survival/baby_park/regeneration_on_marker
#
# @within	switch:maps/survival/baby_park/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_baby_park_y switch.data

execute if score #rg_baby_park_mod switch.data matches 0 at @s in switch:game run particle cloud 21007 ~0.5 21095 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 0 at @s run clone from minecraft:overworld 21000 ~ 21000 21015 ~ 21191 to switch:game 21000 ~0 21000 replace force

execute if score #rg_baby_park_mod switch.data matches 1 at @s in switch:game run particle cloud 21022 ~0.5 21095 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 1 at @s run clone from minecraft:overworld 21015 ~ 21000 21030 ~ 21191 to switch:game 21015 ~0 21000 replace force

execute if score #rg_baby_park_mod switch.data matches 2 at @s in switch:game run particle cloud 21037 ~0.5 21095 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 2 at @s run clone from minecraft:overworld 21030 ~ 21000 21045 ~ 21191 to switch:game 21030 ~0 21000 replace force

execute if score #rg_baby_park_mod switch.data matches 3 at @s in switch:game run particle cloud 21052 ~0.5 21095 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 3 at @s run clone from minecraft:overworld 21045 ~ 21000 21060 ~ 21191 to switch:game 21045 ~0 21000 replace force

execute if score #rg_baby_park_mod switch.data matches 4 at @s in switch:game run particle cloud 21067 ~0.5 21095 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 4 at @s run clone from minecraft:overworld 21060 ~ 21000 21075 ~ 21191 to switch:game 21060 ~0 21000 replace force

execute if score #rg_baby_park_mod switch.data matches 5 at @s in switch:game run particle cloud 21082 ~0.5 21095 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 5 at @s run clone from minecraft:overworld 21075 ~ 21000 21090 ~ 21191 to switch:game 21075 ~0 21000 replace force

execute if score #rg_baby_park_mod switch.data matches 6 at @s in switch:game run particle cloud 21097 ~0.5 21095 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 6 at @s run clone from minecraft:overworld 21090 ~ 21000 21105 ~ 21191 to switch:game 21090 ~0 21000 replace force

execute if score #rg_baby_park_mod switch.data matches 7 at @s in switch:game run particle cloud 21112 ~0.5 21095 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 7 at @s run clone from minecraft:overworld 21105 ~ 21000 21120 ~ 21191 to switch:game 21105 ~0 21000 replace force

execute if score #rg_baby_park_mod switch.data matches 8 at @s in switch:game run particle cloud 21127 ~0.5 21095 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 8 at @s run clone from minecraft:overworld 21120 ~ 21000 21135 ~ 21191 to switch:game 21120 ~0 21000 replace force

execute if score #rg_baby_park_mod switch.data matches 9 at @s in switch:game run particle cloud 21142 ~0.5 21095 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 9 at @s run clone from minecraft:overworld 21135 ~ 21000 21150 ~ 21191 to switch:game 21135 ~0 21000 replace force

execute if score #rg_baby_park_mod switch.data matches 10 at @s in switch:game run particle cloud 21157 ~0.5 21095 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 10 at @s run clone from minecraft:overworld 21150 ~ 21000 21165 ~ 21191 to switch:game 21150 ~0 21000 replace force

execute if score #rg_baby_park_mod switch.data matches 11 at @s in switch:game run particle cloud 21172 ~0.5 21095 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 11 at @s run clone from minecraft:overworld 21165 ~ 21000 21180 ~ 21191 to switch:game 21165 ~0 21000 replace force

execute if score #rg_baby_park_mod switch.data matches 12 at @s in switch:game run particle cloud 21187 ~0.5 21095 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 12 at @s run clone from minecraft:overworld 21180 ~ 21000 21195 ~ 21191 to switch:game 21180 ~0 21000 replace force

execute if score #rg_baby_park_mod switch.data matches 13 at @s in switch:game run particle cloud 21202 ~0.5 21095 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 13 at @s run clone from minecraft:overworld 21195 ~ 21000 21210 ~ 21191 to switch:game 21195 ~0 21000 replace force

execute if score #rg_baby_park_mod switch.data matches 14 at @s in switch:game run particle cloud 21217 ~0.5 21095 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 14 at @s run clone from minecraft:overworld 21210 ~ 21000 21225 ~ 21191 to switch:game 21210 ~0 21000 replace force

execute if score #rg_baby_park_mod switch.data matches 15 at @s in switch:game run particle cloud 21232 ~0.5 21095 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 15 at @s run clone from minecraft:overworld 21225 ~ 21000 21240 ~ 21191 to switch:game 21225 ~0 21000 replace force

execute if score #rg_baby_park_mod switch.data matches 16 at @s in switch:game run particle cloud 21247 ~0.5 21095 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 16 at @s run clone from minecraft:overworld 21240 ~ 21000 21255 ~ 21191 to switch:game 21240 ~0 21000 replace force

execute if score #rg_baby_park_mod switch.data matches 17 at @s in switch:game run particle cloud 21262 ~0.5 21095 7 0 47 0 250 force
execute if score #rg_baby_park_mod switch.data matches 17 at @s run clone from minecraft:overworld 21255 ~ 21000 21270 ~ 21191 to switch:game 21255 ~0 21000 replace force

scoreboard players add #rg_baby_park_mod switch.data 1
execute if score #rg_baby_park_mod switch.data matches 18 in switch:game run kill @e[type=item,x=21135,y=100,z=21095,distance=..1000]
execute if score #rg_baby_park_mod switch.data matches 18 run scoreboard players add #rg_baby_park_y switch.data 1
execute if score #rg_baby_park_mod switch.data matches 18 run scoreboard players set #rg_baby_park_mod switch.data 0

kill @s

