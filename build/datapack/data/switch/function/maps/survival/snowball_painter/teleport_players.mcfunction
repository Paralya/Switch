
#> switch:maps/survival/snowball_painter/teleport_players
#
# @within	switch:maps/survival/snowball_painter/main
#

data modify entity @s Pos set value [112036.42.5d, 110.64.5d, 112002.87.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/snowball_painter/spread_players
scoreboard players reset #do_spreadplayers switch.data

