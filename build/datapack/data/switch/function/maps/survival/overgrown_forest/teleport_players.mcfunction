
#> switch:maps/survival/overgrown_forest/teleport_players
#
# @within	switch:maps/survival/overgrown_forest/main
#

data modify entity @s Pos set value [139056.5d, 113.5d, 139037.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/overgrown_forest/spread_players
scoreboard players reset #do_spreadplayers switch.data

