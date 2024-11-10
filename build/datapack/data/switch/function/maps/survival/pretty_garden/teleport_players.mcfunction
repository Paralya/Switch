
#> switch:maps/survival/pretty_garden/teleport_players
#
# @within	switch:maps/survival/pretty_garden/main
#

data modify entity @s Pos set value [140034.5d, 112.5d, 140035.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/pretty_garden/spread_players
scoreboard players reset #do_spreadplayers switch.data

