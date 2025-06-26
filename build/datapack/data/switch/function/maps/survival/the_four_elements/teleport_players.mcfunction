
#> switch:maps/survival/the_four_elements/teleport_players
#
# @within	switch:maps/survival/the_four_elements/main
#

data modify entity @s Pos set value [115089.76.5d, 125.47.5d, 115008.43.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/the_four_elements/spread_players
scoreboard players reset #do_spreadplayers switch.data

