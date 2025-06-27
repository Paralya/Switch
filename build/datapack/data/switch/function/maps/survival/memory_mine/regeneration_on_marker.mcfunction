
#> switch:maps/survival/memory_mine/regeneration_on_marker
#
# @within	switch:maps/survival/memory_mine/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_memory_mine_y switch.data

execute if score #rg_memory_mine_mod switch.data matches 0 at @s in switch:game run particle cloud 153007 ~0.5 153018 7 0 9 0 250 force
execute if score #rg_memory_mine_mod switch.data matches 0 at @s run clone from minecraft:overworld 153000 ~ 153000 153014 ~ 153036 to switch:game 153000 ~0 153000 replace force

execute if score #rg_memory_mine_mod switch.data matches 1 at @s in switch:game run particle cloud 153021 ~0.5 153018 7 0 9 0 250 force
execute if score #rg_memory_mine_mod switch.data matches 1 at @s run clone from minecraft:overworld 153014 ~ 153000 153029 ~ 153036 to switch:game 153014 ~0 153000 replace force

scoreboard players add #rg_memory_mine_mod switch.data 1
execute if score #rg_memory_mine_mod switch.data matches 2 in switch:game run kill @e[type=item,x=153014,y=100,z=153018,distance=..1000]
execute if score #rg_memory_mine_mod switch.data matches 2 run scoreboard players add #rg_memory_mine_y switch.data 1
execute if score #rg_memory_mine_mod switch.data matches 2 run scoreboard players set #rg_memory_mine_mod switch.data 0

kill @s

