
#> switch:maps/survival/sheepwars_dirigeables/teleport_players
#
# @within	switch:maps/survival/sheepwars_dirigeables/main
#

data modify entity @s Pos set value [100089.36.5d, 159.74.5d, 100056.56.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/sheepwars_dirigeables/spread_players
scoreboard players reset #do_spreadplayers switch.data

