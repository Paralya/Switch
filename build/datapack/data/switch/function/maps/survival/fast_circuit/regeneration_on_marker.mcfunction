
#> switch:maps/survival/fast_circuit/regeneration_on_marker
#
# @within	switch:maps/survival/fast_circuit/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_fast_circuit_y switch.data

execute if score #rg_fast_circuit_mod switch.data matches 0 at @s in switch:game run particle cloud 20160 ~0.5 19586 7 0 32 0 250 force
execute if score #rg_fast_circuit_mod switch.data matches 0 at @s run clone from minecraft:overworld 20153 ~ 19522 20168 ~ 19650 to switch:game 20153 ~0 19522 replace force

execute if score #rg_fast_circuit_mod switch.data matches 1 at @s in switch:game run particle cloud 20176 ~0.5 19586 8 0 32 0 250 force
execute if score #rg_fast_circuit_mod switch.data matches 1 at @s run clone from minecraft:overworld 20168 ~ 19522 20184 ~ 19650 to switch:game 20168 ~0 19522 replace force

execute if score #rg_fast_circuit_mod switch.data matches 2 at @s in switch:game run particle cloud 20191 ~0.5 19586 7 0 32 0 250 force
execute if score #rg_fast_circuit_mod switch.data matches 2 at @s run clone from minecraft:overworld 20184 ~ 19522 20199 ~ 19650 to switch:game 20184 ~0 19522 replace force

execute if score #rg_fast_circuit_mod switch.data matches 3 at @s in switch:game run particle cloud 20207 ~0.5 19586 8 0 32 0 250 force
execute if score #rg_fast_circuit_mod switch.data matches 3 at @s run clone from minecraft:overworld 20199 ~ 19522 20215 ~ 19650 to switch:game 20199 ~0 19522 replace force

execute if score #rg_fast_circuit_mod switch.data matches 4 at @s in switch:game run particle cloud 20222 ~0.5 19586 7 0 32 0 250 force
execute if score #rg_fast_circuit_mod switch.data matches 4 at @s run clone from minecraft:overworld 20215 ~ 19522 20230 ~ 19650 to switch:game 20215 ~0 19522 replace force

scoreboard players add #rg_fast_circuit_mod switch.data 1
execute if score #rg_fast_circuit_mod switch.data matches 5 in switch:game run kill @e[type=item,x=20191,y=85,z=19586,distance=..1000]
execute if score #rg_fast_circuit_mod switch.data matches 5 run scoreboard players add #rg_fast_circuit_y switch.data 1
execute if score #rg_fast_circuit_mod switch.data matches 5 run scoreboard players set #rg_fast_circuit_mod switch.data 0

kill @s

