
#> switch:maps/survival/gg_volcano/teleport_players
#
# @within	switch:maps/survival/gg_volcano/main
#

data modify entity @s Pos set value [124126.5d, 122.5d, 124041.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/gg_volcano/spread_players
scoreboard players reset #do_spreadplayers switch.data

