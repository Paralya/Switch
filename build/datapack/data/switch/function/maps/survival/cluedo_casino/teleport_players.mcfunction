
#> switch:maps/survival/cluedo_casino/teleport_players
#
# @within	switch:maps/survival/cluedo_casino/main
#

data modify entity @s Pos set value [159056.5d, 117.5d, 159047.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/cluedo_casino/spread_players
scoreboard players reset #do_spreadplayers switch.data
