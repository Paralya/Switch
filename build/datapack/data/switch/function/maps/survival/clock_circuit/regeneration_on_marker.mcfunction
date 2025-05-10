
#> switch:maps/survival/clock_circuit/regeneration_on_marker
#
# @within	switch:maps/survival/clock_circuit/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_clock_circuit_y switch.data

execute if score #rg_clock_circuit_mod switch.data matches 0 at @s in switch:game run particle cloud 19478 ~0.5 20367 9 0 39 0 250 force
execute if score #rg_clock_circuit_mod switch.data matches 0 at @s run clone from minecraft:overworld 19469 ~ 20289 19487 ~ 20445 to switch:game 19469 ~0 20289 replace force

execute if score #rg_clock_circuit_mod switch.data matches 1 at @s in switch:game run particle cloud 19496 ~0.5 20367 9 0 39 0 250 force
execute if score #rg_clock_circuit_mod switch.data matches 1 at @s run clone from minecraft:overworld 19487 ~ 20289 19505 ~ 20445 to switch:game 19487 ~0 20289 replace force

execute if score #rg_clock_circuit_mod switch.data matches 2 at @s in switch:game run particle cloud 19513 ~0.5 20367 8 0 39 0 250 force
execute if score #rg_clock_circuit_mod switch.data matches 2 at @s run clone from minecraft:overworld 19505 ~ 20289 19522 ~ 20445 to switch:game 19505 ~0 20289 replace force

execute if score #rg_clock_circuit_mod switch.data matches 3 at @s in switch:game run particle cloud 19531 ~0.5 20367 9 0 39 0 250 force
execute if score #rg_clock_circuit_mod switch.data matches 3 at @s run clone from minecraft:overworld 19522 ~ 20289 19540 ~ 20445 to switch:game 19522 ~0 20289 replace force

execute if score #rg_clock_circuit_mod switch.data matches 4 at @s in switch:game run particle cloud 19549 ~0.5 20367 9 0 39 0 250 force
execute if score #rg_clock_circuit_mod switch.data matches 4 at @s run clone from minecraft:overworld 19540 ~ 20289 19558 ~ 20445 to switch:game 19540 ~0 20289 replace force

execute if score #rg_clock_circuit_mod switch.data matches 5 at @s in switch:game run particle cloud 19567 ~0.5 20367 9 0 39 0 250 force
execute if score #rg_clock_circuit_mod switch.data matches 5 at @s run clone from minecraft:overworld 19558 ~ 20289 19576 ~ 20445 to switch:game 19558 ~0 20289 replace force

execute if score #rg_clock_circuit_mod switch.data matches 6 at @s in switch:game run particle cloud 19584 ~0.5 20367 8 0 39 0 250 force
execute if score #rg_clock_circuit_mod switch.data matches 6 at @s run clone from minecraft:overworld 19576 ~ 20289 19593 ~ 20445 to switch:game 19576 ~0 20289 replace force

execute if score #rg_clock_circuit_mod switch.data matches 7 at @s in switch:game run particle cloud 19602 ~0.5 20367 9 0 39 0 250 force
execute if score #rg_clock_circuit_mod switch.data matches 7 at @s run clone from minecraft:overworld 19593 ~ 20289 19611 ~ 20445 to switch:game 19593 ~0 20289 replace force

execute if score #rg_clock_circuit_mod switch.data matches 8 at @s in switch:game run particle cloud 19620 ~0.5 20367 9 0 39 0 250 force
execute if score #rg_clock_circuit_mod switch.data matches 8 at @s run clone from minecraft:overworld 19611 ~ 20289 19629 ~ 20445 to switch:game 19611 ~0 20289 replace force

scoreboard players add #rg_clock_circuit_mod switch.data 1
execute if score #rg_clock_circuit_mod switch.data matches 9 in switch:game run kill @e[type=item,x=19549,y=70,z=20367,distance=..1000]
execute if score #rg_clock_circuit_mod switch.data matches 9 run scoreboard players add #rg_clock_circuit_y switch.data 1
execute if score #rg_clock_circuit_mod switch.data matches 9 run scoreboard players set #rg_clock_circuit_mod switch.data 0

kill @s

