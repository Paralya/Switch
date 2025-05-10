
#> switch:maps/survival/friends_cube_lobby/teleport_players
#
# @within	switch:maps/survival/friends_cube_lobby/main
#

data modify entity @s Pos set value [17032.36.5d, 117.35.5d, 17065.43.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/friends_cube_lobby/spread_players
scoreboard players reset #do_spreadplayers switch.data

