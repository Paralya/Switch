
#> switch:maps/survival/sheepwars_ilots/teleport_players
#
# @within	switch:maps/survival/sheepwars_ilots/main
#

data modify entity @s Pos set value [145046.5d, 156.5d, 145059.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/sheepwars_ilots/spread_players
scoreboard players reset #do_spreadplayers switch.data

