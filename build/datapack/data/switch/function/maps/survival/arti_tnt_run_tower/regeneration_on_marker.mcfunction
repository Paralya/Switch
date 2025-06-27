
#> switch:maps/survival/arti_tnt_run_tower/regeneration_on_marker
#
# @within	switch:maps/survival/arti_tnt_run_tower/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_arti_tnt_run_tower_y switch.data

execute if score #rg_arti_tnt_run_tower_mod switch.data matches 0 at @s in switch:game run particle cloud 152005 ~0.5 152010 5 0 5 0 250 force
execute if score #rg_arti_tnt_run_tower_mod switch.data matches 0 at @s run clone from minecraft:overworld 152000 ~ 152000 152010 ~ 152020 to switch:game 152000 ~0 152000 replace force

execute if score #rg_arti_tnt_run_tower_mod switch.data matches 1 at @s in switch:game run particle cloud 152015 ~0.5 152010 5 0 5 0 250 force
execute if score #rg_arti_tnt_run_tower_mod switch.data matches 1 at @s run clone from minecraft:overworld 152010 ~ 152000 152020 ~ 152020 to switch:game 152010 ~0 152000 replace force

scoreboard players add #rg_arti_tnt_run_tower_mod switch.data 1
execute if score #rg_arti_tnt_run_tower_mod switch.data matches 2 in switch:game run kill @e[type=item,x=152010,y=100,z=152010,distance=..1000]
execute if score #rg_arti_tnt_run_tower_mod switch.data matches 2 run scoreboard players add #rg_arti_tnt_run_tower_y switch.data 1
execute if score #rg_arti_tnt_run_tower_mod switch.data matches 2 run scoreboard players set #rg_arti_tnt_run_tower_mod switch.data 0

kill @s

