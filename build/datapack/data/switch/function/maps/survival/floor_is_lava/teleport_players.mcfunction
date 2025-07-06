
#> switch:maps/survival/floor_is_lava/teleport_players
#
# @within	switch:maps/survival/floor_is_lava/main
#

data modify entity @s Pos set value [62070.5d, 138.5d, 62006.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/floor_is_lava/spread_players
scoreboard players reset #do_spreadplayers switch.data

