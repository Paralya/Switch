
#> switch:maps/survival/laser_game/teleport_players
#
# @within	switch:maps/survival/laser_game/main
#

data modify entity @s Pos set value [517.62.5d, 111.36.5d, 518.34.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/laser_game/spread_players
scoreboard players reset #do_spreadplayers switch.data

