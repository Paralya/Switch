
#> switch:maps/survival/minigolf/regeneration_on_marker
#
# @within	switch:maps/survival/minigolf/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_minigolf_y switch.data

execute if score #rg_minigolf_mod switch.data matches 0 at @s in switch:game run particle cloud 124009 ~16.5 124070 9 0 35 0 250 force
execute if score #rg_minigolf_mod switch.data matches 0 at @s run clone from minecraft:overworld 124000 ~ 124000 124018 ~ 124140 to switch:game 124000 ~16 124000 strict replace force

execute if score #rg_minigolf_mod switch.data matches 1 at @s in switch:game run particle cloud 124027 ~16.5 124070 9 0 35 0 250 force
execute if score #rg_minigolf_mod switch.data matches 1 at @s run clone from minecraft:overworld 124018 ~ 124000 124037 ~ 124140 to switch:game 124018 ~16 124000 strict replace force

execute if score #rg_minigolf_mod switch.data matches 2 at @s in switch:game run particle cloud 124046 ~16.5 124070 9 0 35 0 250 force
execute if score #rg_minigolf_mod switch.data matches 2 at @s run clone from minecraft:overworld 124037 ~ 124000 124055 ~ 124140 to switch:game 124037 ~16 124000 strict replace force

execute if score #rg_minigolf_mod switch.data matches 3 at @s in switch:game run particle cloud 124064 ~16.5 124070 9 0 35 0 250 force
execute if score #rg_minigolf_mod switch.data matches 3 at @s run clone from minecraft:overworld 124055 ~ 124000 124074 ~ 124140 to switch:game 124055 ~16 124000 strict replace force

execute if score #rg_minigolf_mod switch.data matches 4 at @s in switch:game run particle cloud 124083 ~16.5 124070 9 0 35 0 250 force
execute if score #rg_minigolf_mod switch.data matches 4 at @s run clone from minecraft:overworld 124074 ~ 124000 124092 ~ 124140 to switch:game 124074 ~16 124000 strict replace force

execute if score #rg_minigolf_mod switch.data matches 5 at @s in switch:game run particle cloud 124101 ~16.5 124070 9 0 35 0 250 force
execute if score #rg_minigolf_mod switch.data matches 5 at @s run clone from minecraft:overworld 124092 ~ 124000 124111 ~ 124140 to switch:game 124092 ~16 124000 strict replace force

execute if score #rg_minigolf_mod switch.data matches 6 at @s in switch:game run particle cloud 124120 ~16.5 124070 9 0 35 0 250 force
execute if score #rg_minigolf_mod switch.data matches 6 at @s run clone from minecraft:overworld 124111 ~ 124000 124129 ~ 124140 to switch:game 124111 ~16 124000 strict replace force

execute if score #rg_minigolf_mod switch.data matches 7 at @s in switch:game run particle cloud 124138 ~16.5 124070 9 0 35 0 250 force
execute if score #rg_minigolf_mod switch.data matches 7 at @s run clone from minecraft:overworld 124129 ~ 124000 124148 ~ 124140 to switch:game 124129 ~16 124000 strict replace force

execute if score #rg_minigolf_mod switch.data matches 8 at @s in switch:game run particle cloud 124157 ~16.5 124070 9 0 35 0 250 force
execute if score #rg_minigolf_mod switch.data matches 8 at @s run clone from minecraft:overworld 124148 ~ 124000 124166 ~ 124140 to switch:game 124148 ~16 124000 strict replace force

scoreboard players add #rg_minigolf_mod switch.data 1
execute if score #rg_minigolf_mod switch.data matches 9 in switch:game run kill @e[type=item,x=124083,y=84,z=124070,distance=..1000]
execute if score #rg_minigolf_mod switch.data matches 9 run scoreboard players add #rg_minigolf_y switch.data 1
execute if score #rg_minigolf_mod switch.data matches 9 run scoreboard players set #rg_minigolf_mod switch.data 0

kill @s

