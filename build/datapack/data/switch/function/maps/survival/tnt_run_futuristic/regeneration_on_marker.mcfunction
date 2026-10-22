
#> switch:maps/survival/tnt_run_futuristic/regeneration_on_marker
#
# @within	switch:maps/survival/tnt_run_futuristic/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_tnt_run_futuristic_y switch.data

execute if score #rg_tnt_run_futuristic_mod switch.data matches 0 at @s in switch:game run particle cloud 2015 ~0.5 -9977 15 0 11 0 250 force
execute if score #rg_tnt_run_futuristic_mod switch.data matches 0 at @s run clone from minecraft:overworld 2000 ~ -10000 2030 ~ -9954 to switch:game 2000 ~0 -10000 strict replace force

execute if score #rg_tnt_run_futuristic_mod switch.data matches 1 at @s in switch:game run particle cloud 2044 ~0.5 -9977 14 0 11 0 250 force
execute if score #rg_tnt_run_futuristic_mod switch.data matches 1 at @s run clone from minecraft:overworld 2030 ~ -10000 2059 ~ -9954 to switch:game 2030 ~0 -10000 strict replace force

scoreboard players add #rg_tnt_run_futuristic_mod switch.data 1
execute if score #rg_tnt_run_futuristic_mod switch.data matches 2 in switch:game run kill @e[type=item,x=2029,y=100,z=-9977,distance=..1000]
execute if score #rg_tnt_run_futuristic_mod switch.data matches 2 run scoreboard players add #rg_tnt_run_futuristic_y switch.data 1
execute if score #rg_tnt_run_futuristic_mod switch.data matches 2 run scoreboard players set #rg_tnt_run_futuristic_mod switch.data 0

kill @s

