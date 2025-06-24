
#> switch:maps/survival/ghost_town/teleport_players
#
# @within	switch:maps/survival/ghost_town/main
#

data modify entity @s Pos set value [42012.45.5d, 112.27.5d, 42034.3.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/ghost_town/spread_players
scoreboard players reset #do_spreadplayers switch.data

