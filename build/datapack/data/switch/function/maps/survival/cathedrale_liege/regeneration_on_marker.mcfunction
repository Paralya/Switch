
#> switch:maps/survival/cathedrale_liege/regeneration_on_marker
#
# @within	switch:maps/survival/cathedrale_liege/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_cathedrale_liege_y switch.data

execute if score #rg_cathedrale_liege_mod switch.data matches 0 at @s in switch:game run particle cloud 25975 ~164.5 25986 14 0 21 0 250 force
execute if score #rg_cathedrale_liege_mod switch.data matches 0 at @s run clone from minecraft:overworld 25961 ~ 25944 25989 ~ 26028 to switch:game 25961 ~164 25944 replace force

execute if score #rg_cathedrale_liege_mod switch.data matches 1 at @s in switch:game run particle cloud 26002 ~164.5 25986 13 0 21 0 250 force
execute if score #rg_cathedrale_liege_mod switch.data matches 1 at @s run clone from minecraft:overworld 25989 ~ 25944 26016 ~ 26028 to switch:game 25989 ~164 25944 replace force

execute if score #rg_cathedrale_liege_mod switch.data matches 2 at @s in switch:game run particle cloud 26030 ~164.5 25986 14 0 21 0 250 force
execute if score #rg_cathedrale_liege_mod switch.data matches 2 at @s run clone from minecraft:overworld 26016 ~ 25944 26044 ~ 26028 to switch:game 26016 ~164 25944 replace force

execute if score #rg_cathedrale_liege_mod switch.data matches 3 at @s in switch:game run particle cloud 26057 ~164.5 25986 13 0 21 0 250 force
execute if score #rg_cathedrale_liege_mod switch.data matches 3 at @s run clone from minecraft:overworld 26044 ~ 25944 26071 ~ 26028 to switch:game 26044 ~164 25944 replace force

execute if score #rg_cathedrale_liege_mod switch.data matches 4 at @s in switch:game run particle cloud 26085 ~164.5 25986 14 0 21 0 250 force
execute if score #rg_cathedrale_liege_mod switch.data matches 4 at @s run clone from minecraft:overworld 26071 ~ 25944 26099 ~ 26028 to switch:game 26071 ~164 25944 replace force

scoreboard players add #rg_cathedrale_liege_mod switch.data 1
execute if score #rg_cathedrale_liege_mod switch.data matches 5 in switch:game run kill @e[type=item,x=26030,y=-64,z=25986,distance=..1000]
execute if score #rg_cathedrale_liege_mod switch.data matches 5 run scoreboard players add #rg_cathedrale_liege_y switch.data 1
execute if score #rg_cathedrale_liege_mod switch.data matches 5 run scoreboard players set #rg_cathedrale_liege_mod switch.data 0

kill @s

