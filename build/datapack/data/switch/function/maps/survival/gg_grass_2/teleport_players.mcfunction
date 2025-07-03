
#> switch:maps/survival/gg_grass_2/teleport_players
#
# @within	switch:maps/survival/gg_grass_2/main
#

data modify entity @s Pos set value [124030.5d, 121.5d, 124004.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/gg_grass_2/spread_players
scoreboard players reset #do_spreadplayers switch.data

