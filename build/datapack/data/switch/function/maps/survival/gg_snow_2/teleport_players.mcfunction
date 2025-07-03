
#> switch:maps/survival/gg_snow_2/teleport_players
#
# @within	switch:maps/survival/gg_snow_2/main
#

data modify entity @s Pos set value [124054.5d, 123.5d, 124053.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/gg_snow_2/spread_players
scoreboard players reset #do_spreadplayers switch.data

