
#> switch:maps/survival/jn_murder_mystery/teleport_players
#
# @within	switch:maps/survival/jn_murder_mystery/main
#

data modify entity @s Pos set value [134095.5d, 119.5d, 134080.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/jn_murder_mystery/spread_players
scoreboard players reset #do_spreadplayers switch.data

