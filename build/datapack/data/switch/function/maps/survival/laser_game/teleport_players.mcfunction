
#> switch:maps/survival/laser_game/teleport_players
#
# @within	switch:maps/survival/laser_game/main
#

data modify entity @s Pos set value [524.5d, 102.5d, 523.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/laser_game/spread_players
scoreboard players reset #do_spreadplayers switch.data

