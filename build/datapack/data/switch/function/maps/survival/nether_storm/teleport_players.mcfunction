
#> switch:maps/survival/nether_storm/teleport_players
#
# @within	switch:maps/survival/nether_storm/main
#

data modify entity @s Pos set value [122034.5d, 119.5d, 122037.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/nether_storm/spread_players
scoreboard players reset #do_spreadplayers switch.data
