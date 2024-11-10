
#> switch:maps/survival/spruce_dojo/teleport_players
#
# @within	switch:maps/survival/spruce_dojo/main
#

data modify entity @s Pos set value [84041.5d, 109.5d, 84035.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/spruce_dojo/spread_players
scoreboard players reset #do_spreadplayers switch.data

