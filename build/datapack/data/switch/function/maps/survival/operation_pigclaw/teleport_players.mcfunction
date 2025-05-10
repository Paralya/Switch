
#> switch:maps/survival/operation_pigclaw/teleport_players
#
# @within	switch:maps/survival/operation_pigclaw/main
#

data modify entity @s Pos set value [36068.47.5d, -143.77.5d, 36081.37.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/operation_pigclaw/spread_players
scoreboard players reset #do_spreadplayers switch.data

