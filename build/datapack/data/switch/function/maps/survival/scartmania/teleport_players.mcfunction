
#> switch:maps/survival/scartmania/teleport_players
#
# @within	switch:maps/survival/scartmania/main
#

data modify entity @s Pos set value [58104.5d, 245.5d, 58044.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/scartmania/spread_players
scoreboard players reset #do_spreadplayers switch.data

