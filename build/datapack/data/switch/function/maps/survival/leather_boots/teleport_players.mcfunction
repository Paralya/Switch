
#> switch:maps/survival/leather_boots/teleport_players
#
# @within	switch:maps/survival/leather_boots/main
#

data modify entity @s Pos set value [63070.5d, 138.5d, 63006.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/leather_boots/spread_players
scoreboard players reset #do_spreadplayers switch.data

