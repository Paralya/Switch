
#> switch:maps/survival/friends_cube_jump/teleport_players
#
# @within	switch:maps/survival/friends_cube_jump/main
#

data modify entity @s Pos set value [9024.5d, 101.5d, 9005.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/friends_cube_jump/spread_players
scoreboard players reset #do_spreadplayers switch.data

