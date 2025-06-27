
#> switch:maps/survival/flamingosaurus_mariokart/teleport_players
#
# @within	switch:maps/survival/flamingosaurus_mariokart/main
#

data modify entity @s Pos set value [19992.5d, 195.5d, 19797.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/flamingosaurus_mariokart/spread_players
scoreboard players reset #do_spreadplayers switch.data

