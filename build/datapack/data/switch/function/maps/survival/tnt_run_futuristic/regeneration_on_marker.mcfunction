
#> switch:maps/survival/tnt_run_futuristic/regeneration_on_marker
#
# @within	switch:maps/survival/tnt_run_futuristic/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_tnt_run_futuristic_y switch.data

execute if score #rg_tnt_run_futuristic_mod switch.data matches 0 at @s in switch:game run particle cloud 109015 ~0.5 109023 15 0 11 0 250 force
execute if score #rg_tnt_run_futuristic_mod switch.data matches 0 at @s run clone from minecraft:overworld 109000 ~ 109000 109030 ~ 109046 to switch:game 109000 ~0 109000 replace force

execute if score #rg_tnt_run_futuristic_mod switch.data matches 1 at @s in switch:game run particle cloud 109044 ~0.5 109023 14 0 11 0 250 force
execute if score #rg_tnt_run_futuristic_mod switch.data matches 1 at @s run clone from minecraft:overworld 109030 ~ 109000 109059 ~ 109046 to switch:game 109030 ~0 109000 replace force

scoreboard players add #rg_tnt_run_futuristic_mod switch.data 1
execute if score #rg_tnt_run_futuristic_mod switch.data matches 2 in switch:game run kill @e[type=item,x=109029,y=100,z=109023,distance=..1000]
execute if score #rg_tnt_run_futuristic_mod switch.data matches 2 run scoreboard players add #rg_tnt_run_futuristic_y switch.data 1
execute if score #rg_tnt_run_futuristic_mod switch.data matches 2 run scoreboard players set #rg_tnt_run_futuristic_mod switch.data 0

kill @s

