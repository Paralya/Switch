
#> switch:maps/survival/rush_the_point_1/teleport_players
#
# @within	switch:maps/survival/rush_the_point_1/main
#

data modify entity @s Pos set value [14039.5d, 141.5d, 13963.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/rush_the_point_1/spread_players
scoreboard players reset #do_spreadplayers switch.data

