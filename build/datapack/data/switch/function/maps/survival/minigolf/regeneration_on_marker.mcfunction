
#> switch:maps/survival/minigolf/regeneration_on_marker
#
# @within	switch:maps/survival/minigolf/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_minigolf_y switch.data

execute if score #rg_minigolf_mod switch.data matches 0 at @s in switch:game run particle cloud 10009 ~16.5 8070 9 0 35 0 250 force
execute if score #rg_minigolf_mod switch.data matches 0 at @s run clone from minecraft:overworld 10000 ~ 8000 10018 ~ 8140 to switch:game 10000 ~16 8000 strict replace force

execute if score #rg_minigolf_mod switch.data matches 1 at @s in switch:game run particle cloud 10027 ~16.5 8070 9 0 35 0 250 force
execute if score #rg_minigolf_mod switch.data matches 1 at @s run clone from minecraft:overworld 10018 ~ 8000 10037 ~ 8140 to switch:game 10018 ~16 8000 strict replace force

execute if score #rg_minigolf_mod switch.data matches 2 at @s in switch:game run particle cloud 10046 ~16.5 8070 9 0 35 0 250 force
execute if score #rg_minigolf_mod switch.data matches 2 at @s run clone from minecraft:overworld 10037 ~ 8000 10055 ~ 8140 to switch:game 10037 ~16 8000 strict replace force

execute if score #rg_minigolf_mod switch.data matches 3 at @s in switch:game run particle cloud 10064 ~16.5 8070 9 0 35 0 250 force
execute if score #rg_minigolf_mod switch.data matches 3 at @s run clone from minecraft:overworld 10055 ~ 8000 10074 ~ 8140 to switch:game 10055 ~16 8000 strict replace force

execute if score #rg_minigolf_mod switch.data matches 4 at @s in switch:game run particle cloud 10083 ~16.5 8070 9 0 35 0 250 force
execute if score #rg_minigolf_mod switch.data matches 4 at @s run clone from minecraft:overworld 10074 ~ 8000 10092 ~ 8140 to switch:game 10074 ~16 8000 strict replace force

execute if score #rg_minigolf_mod switch.data matches 5 at @s in switch:game run particle cloud 10101 ~16.5 8070 9 0 35 0 250 force
execute if score #rg_minigolf_mod switch.data matches 5 at @s run clone from minecraft:overworld 10092 ~ 8000 10111 ~ 8140 to switch:game 10092 ~16 8000 strict replace force

execute if score #rg_minigolf_mod switch.data matches 6 at @s in switch:game run particle cloud 10120 ~16.5 8070 9 0 35 0 250 force
execute if score #rg_minigolf_mod switch.data matches 6 at @s run clone from minecraft:overworld 10111 ~ 8000 10129 ~ 8140 to switch:game 10111 ~16 8000 strict replace force

execute if score #rg_minigolf_mod switch.data matches 7 at @s in switch:game run particle cloud 10138 ~16.5 8070 9 0 35 0 250 force
execute if score #rg_minigolf_mod switch.data matches 7 at @s run clone from minecraft:overworld 10129 ~ 8000 10148 ~ 8140 to switch:game 10129 ~16 8000 strict replace force

execute if score #rg_minigolf_mod switch.data matches 8 at @s in switch:game run particle cloud 10157 ~16.5 8070 9 0 35 0 250 force
execute if score #rg_minigolf_mod switch.data matches 8 at @s run clone from minecraft:overworld 10148 ~ 8000 10166 ~ 8140 to switch:game 10148 ~16 8000 strict replace force

scoreboard players add #rg_minigolf_mod switch.data 1
execute if score #rg_minigolf_mod switch.data matches 9 in switch:game run kill @e[type=item,x=10083,y=84,z=8070,distance=..1000]
execute if score #rg_minigolf_mod switch.data matches 9 run scoreboard players add #rg_minigolf_y switch.data 1
execute if score #rg_minigolf_mod switch.data matches 9 run scoreboard players set #rg_minigolf_mod switch.data 0

kill @s

