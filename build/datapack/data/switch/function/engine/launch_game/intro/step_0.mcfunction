
#> switch:engine/launch_game/intro/step_0
#
# @within	switch:engine/launch_game/intro/tick
#

execute if score #intro_launch switch.data matches 1 run function switch:engine/launch_game/launch
scoreboard players add #intro_step switch.data 1

