
#> switch:maps/survival/friends_pvpbox_ice/teleport_players
#
# @within	switch:maps/survival/friends_pvpbox_ice/main
#

data modify entity @s Pos set value [11012.5d, 123.5d, 11044.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/friends_pvpbox_ice/spread_players
scoreboard players reset #do_spreadplayers switch.data

