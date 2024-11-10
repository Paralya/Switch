
#> switch:maps/survival/cigogne/teleport_players
#
# @within	switch:maps/survival/cigogne/main
#

data modify entity @s Pos set value [126059.5d, 108.5d, 126061.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/cigogne/spread_players
scoreboard players reset #do_spreadplayers switch.data

