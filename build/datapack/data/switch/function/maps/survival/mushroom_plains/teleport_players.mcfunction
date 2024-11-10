
#> switch:maps/survival/mushroom_plains/teleport_players
#
# @within	switch:maps/survival/mushroom_plains/main
#

data modify entity @s Pos set value [3992.5d, 126.5d, 4000.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/mushroom_plains/spread_players
scoreboard players reset #do_spreadplayers switch.data

