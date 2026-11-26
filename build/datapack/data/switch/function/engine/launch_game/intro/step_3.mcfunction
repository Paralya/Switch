
#> switch:engine/launch_game/intro/step_3
#
# @within	switch:engine/launch_game/intro/tick
#

execute if score #intro_rules switch.data matches 2.. as @a[tag=!detached] at @s run playsound minecraft:ui.button.click ambient @s ~ ~ ~ 0.5 1.4
scoreboard players add #intro_step switch.data 1

