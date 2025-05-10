
#> switch:maps/survival/mario_circuit/regeneration_on_marker
#
# @within	switch:maps/survival/mario_circuit/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_mario_circuit_y switch.data

execute if score #rg_mario_circuit_mod switch.data matches 0 at @s in switch:game run particle cloud 20387 ~0.5 19587 9 0 35 0 250 force
execute if score #rg_mario_circuit_mod switch.data matches 0 at @s run clone from minecraft:overworld 20378 ~ 19516 20396 ~ 19658 to switch:game 20378 ~0 19516 replace force

execute if score #rg_mario_circuit_mod switch.data matches 1 at @s in switch:game run particle cloud 20405 ~0.5 19587 9 0 35 0 250 force
execute if score #rg_mario_circuit_mod switch.data matches 1 at @s run clone from minecraft:overworld 20396 ~ 19516 20415 ~ 19658 to switch:game 20396 ~0 19516 replace force

execute if score #rg_mario_circuit_mod switch.data matches 2 at @s in switch:game run particle cloud 20424 ~0.5 19587 9 0 35 0 250 force
execute if score #rg_mario_circuit_mod switch.data matches 2 at @s run clone from minecraft:overworld 20415 ~ 19516 20433 ~ 19658 to switch:game 20415 ~0 19516 replace force

execute if score #rg_mario_circuit_mod switch.data matches 3 at @s in switch:game run particle cloud 20442 ~0.5 19587 9 0 35 0 250 force
execute if score #rg_mario_circuit_mod switch.data matches 3 at @s run clone from minecraft:overworld 20433 ~ 19516 20452 ~ 19658 to switch:game 20433 ~0 19516 replace force

execute if score #rg_mario_circuit_mod switch.data matches 4 at @s in switch:game run particle cloud 20461 ~0.5 19587 9 0 35 0 250 force
execute if score #rg_mario_circuit_mod switch.data matches 4 at @s run clone from minecraft:overworld 20452 ~ 19516 20470 ~ 19658 to switch:game 20452 ~0 19516 replace force

execute if score #rg_mario_circuit_mod switch.data matches 5 at @s in switch:game run particle cloud 20479 ~0.5 19587 9 0 35 0 250 force
execute if score #rg_mario_circuit_mod switch.data matches 5 at @s run clone from minecraft:overworld 20470 ~ 19516 20488 ~ 19658 to switch:game 20470 ~0 19516 replace force

execute if score #rg_mario_circuit_mod switch.data matches 6 at @s in switch:game run particle cloud 20497 ~0.5 19587 9 0 35 0 250 force
execute if score #rg_mario_circuit_mod switch.data matches 6 at @s run clone from minecraft:overworld 20488 ~ 19516 20507 ~ 19658 to switch:game 20488 ~0 19516 replace force

execute if score #rg_mario_circuit_mod switch.data matches 7 at @s in switch:game run particle cloud 20516 ~0.5 19587 9 0 35 0 250 force
execute if score #rg_mario_circuit_mod switch.data matches 7 at @s run clone from minecraft:overworld 20507 ~ 19516 20525 ~ 19658 to switch:game 20507 ~0 19516 replace force

scoreboard players add #rg_mario_circuit_mod switch.data 1
execute if score #rg_mario_circuit_mod switch.data matches 8 in switch:game run kill @e[type=item,x=20451,y=85,z=19587,distance=..1000]
execute if score #rg_mario_circuit_mod switch.data matches 8 run scoreboard players add #rg_mario_circuit_y switch.data 1
execute if score #rg_mario_circuit_mod switch.data matches 8 run scoreboard players set #rg_mario_circuit_mod switch.data 0

kill @s

