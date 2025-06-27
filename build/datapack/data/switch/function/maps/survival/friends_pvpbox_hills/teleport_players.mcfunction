
#> switch:maps/survival/friends_pvpbox_hills/teleport_players
#
# @within	switch:maps/survival/friends_pvpbox_hills/main
#

data modify entity @s Pos set value [12059.5d, 122.5d, 12010.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/friends_pvpbox_hills/spread_players
scoreboard players reset #do_spreadplayers switch.data

