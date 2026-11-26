
#> switch:engine/launch_game/intro/step_6
#
# @within	switch:engine/launch_game/intro/tick
#

execute as @a run function switch:engine/launch_game/intro/remove
scoreboard players set #intro_active switch.data 0
scoreboard players add #intro_step switch.data 1

