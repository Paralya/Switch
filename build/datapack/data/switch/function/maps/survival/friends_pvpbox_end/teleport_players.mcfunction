
#> switch:maps/survival/friends_pvpbox_end/teleport_players
#
# @within	switch:maps/survival/friends_pvpbox_end/main
#

data modify entity @s Pos set value [13000.5d, 117.5d, 13000.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/friends_pvpbox_end/spread_players
scoreboard players reset #do_spreadplayers switch.data

