
#> switch:maps/survival/friends_oneforall/teleport_players
#
# @within	switch:maps/survival/friends_oneforall/main
#

data modify entity @s Pos set value [8000.5d, 111.5d, 7998.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/friends_oneforall/spread_players
scoreboard players reset #do_spreadplayers switch.data

