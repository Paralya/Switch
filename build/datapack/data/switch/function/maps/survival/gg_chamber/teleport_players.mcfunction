
#> switch:maps/survival/gg_chamber/teleport_players
#
# @within	switch:maps/survival/gg_chamber/main
#

data modify entity @s Pos set value [124078.5d, 139.5d, 124100.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/gg_chamber/spread_players
scoreboard players reset #do_spreadplayers switch.data

