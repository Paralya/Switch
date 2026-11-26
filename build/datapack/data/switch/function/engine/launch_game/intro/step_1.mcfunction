
#> switch:engine/launch_game/intro/step_1
#
# @within	switch:engine/launch_game/intro/tick
#

execute as @a[tag=!detached] at @s run playsound minecraft:item.mace.smash_ground_heavy ambient @s ~ ~ ~ 0.8 1
scoreboard players add #intro_step switch.data 1

