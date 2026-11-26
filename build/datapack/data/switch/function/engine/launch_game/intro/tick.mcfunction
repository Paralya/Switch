
#> switch:engine/launch_game/intro/tick
#
# @within	switch:tick
#

scoreboard players add #intro_ticks switch.data 1
scoreboard players operation #intro_cs switch.data = #intro_ticks switch.data
scoreboard players operation #intro_cs switch.data *= #5 switch.data
execute store result score #intro_sw switch.data run stopwatch query switch:intro 100
scoreboard players operation #intro_cs switch.data > #intro_sw switch.data
execute if score #intro_step switch.data matches 0 if score #intro_cs switch.data matches 60.. run function switch:engine/launch_game/intro/step_0
execute if score #intro_step switch.data matches 1 if score #intro_cs switch.data matches 80.. run function switch:engine/launch_game/intro/step_1
execute if score #intro_step switch.data matches 2 if score #intro_cs switch.data matches 150.. run function switch:engine/launch_game/intro/step_2
execute if score #intro_step switch.data matches 3 if score #intro_cs switch.data matches 210.. run function switch:engine/launch_game/intro/step_3
execute if score #intro_step switch.data matches 4 if score #intro_cs switch.data matches 270.. run function switch:engine/launch_game/intro/step_4
execute if score #intro_step switch.data matches 5 if score #intro_cs switch.data matches 625.. run function switch:engine/launch_game/intro/step_5
execute if score #intro_step switch.data matches 6 if score #intro_cs switch.data matches 825.. run function switch:engine/launch_game/intro/step_6

