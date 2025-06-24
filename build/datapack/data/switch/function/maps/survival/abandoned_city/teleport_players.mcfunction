
#> switch:maps/survival/abandoned_city/teleport_players
#
# @within	switch:maps/survival/abandoned_city/main
#

data modify entity @s Pos set value [44634.21.5d, 97.01.5d, 44772.98.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/abandoned_city/spread_players
scoreboard players reset #do_spreadplayers switch.data

