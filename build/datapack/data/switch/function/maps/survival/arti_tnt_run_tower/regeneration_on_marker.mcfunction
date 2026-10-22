
#> switch:maps/survival/arti_tnt_run_tower/regeneration_on_marker
#
# @within	switch:maps/survival/arti_tnt_run_tower/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_arti_tnt_run_tower_y switch.data

execute if score #rg_arti_tnt_run_tower_mod switch.data matches 0 at @s in switch:game run particle cloud -7995 ~0.5 -11990 5 0 5 0 250 force
execute if score #rg_arti_tnt_run_tower_mod switch.data matches 0 at @s run clone from minecraft:overworld -8000 ~ -12000 -7990 ~ -11980 to switch:game -8000 ~0 -12000 strict replace force

execute if score #rg_arti_tnt_run_tower_mod switch.data matches 1 at @s in switch:game run particle cloud -7985 ~0.5 -11990 5 0 5 0 250 force
execute if score #rg_arti_tnt_run_tower_mod switch.data matches 1 at @s run clone from minecraft:overworld -7990 ~ -12000 -7980 ~ -11980 to switch:game -7990 ~0 -12000 strict replace force

scoreboard players add #rg_arti_tnt_run_tower_mod switch.data 1
execute if score #rg_arti_tnt_run_tower_mod switch.data matches 2 in switch:game run kill @e[type=item,x=-7990,y=100,z=-11990,distance=..1000]
execute if score #rg_arti_tnt_run_tower_mod switch.data matches 2 run scoreboard players add #rg_arti_tnt_run_tower_y switch.data 1
execute if score #rg_arti_tnt_run_tower_mod switch.data matches 2 run scoreboard players set #rg_arti_tnt_run_tower_mod switch.data 0

kill @s

