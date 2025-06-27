
#> switch:maps/survival/jn_countries_castle/teleport_players
#
# @within	switch:maps/survival/jn_countries_castle/main
#

data modify entity @s Pos set value [132033.9.5d, 123.77.5d, 132105.73.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/jn_countries_castle/spread_players
scoreboard players reset #do_spreadplayers switch.data

