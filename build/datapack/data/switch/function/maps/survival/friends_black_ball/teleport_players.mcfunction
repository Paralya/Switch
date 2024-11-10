
#> switch:maps/survival/friends_black_ball/teleport_players
#
# @within	switch:maps/survival/friends_black_ball/main
#

data modify entity @s Pos set value [6000.5d, 105.5d, 6000.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/friends_black_ball/spread_players
scoreboard players reset #do_spreadplayers switch.data

