
#> switch:maps/survival/friends_cube_lobby/teleport_players
#
# @within	switch:maps/survival/friends_cube_lobby/main
#

data modify entity @s Pos set value [17000.5d, 119.5d, 17024.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/friends_cube_lobby/spread_players
scoreboard players reset #do_spreadplayers switch.data
