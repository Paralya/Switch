
#> switch:engine/launch_game/intro/step_5
#
# @within	switch:engine/launch_game/intro/tick
#

execute as @a[tag=!detached] at @s run playsound minecraft:item.trident.riptide_1 ambient @s ~ ~ ~ 0.5 1.4
scoreboard players add #intro_step switch.data 1

