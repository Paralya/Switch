
#> switch:maps/survival/sheepwars_dirigeables/teleport_players
#
# @within	switch:maps/survival/sheepwars_dirigeables/main
#

data modify entity @s Pos set value [100089.5d, 160.5d, 100057.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/sheepwars_dirigeables/spread_players
scoreboard players reset #do_spreadplayers switch.data

