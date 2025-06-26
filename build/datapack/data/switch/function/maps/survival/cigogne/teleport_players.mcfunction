
#> switch:maps/survival/cigogne/teleport_players
#
# @within	switch:maps/survival/cigogne/main
#

data modify entity @s Pos set value [126027.31.5d, 112.17.5d, 126071.37.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/cigogne/spread_players
scoreboard players reset #do_spreadplayers switch.data

