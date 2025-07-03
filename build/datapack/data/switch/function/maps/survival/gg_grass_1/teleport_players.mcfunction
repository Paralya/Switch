
#> switch:maps/survival/gg_grass_1/teleport_players
#
# @within	switch:maps/survival/gg_grass_1/main
#

data modify entity @s Pos set value [124012.5d, 118.5d, 124050.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/gg_grass_1/spread_players
scoreboard players reset #do_spreadplayers switch.data

